<?php

/**
 * @param $output
 * @param bool $with_script_tags
 */
function console_log($output, $with_script_tags = true)
{
    $js_code = 'console.log(' . json_encode($output, JSON_HEX_TAG) .
        ');';
    if ($with_script_tags) {
        $js_code = '<script>' . $js_code . '</script>';
    }
    echo $js_code;
}

/**
 * @param $array
 * @return bool
 */
function contains_array($array)
{
    if (is_array($array)) {
        foreach ($array as $value) {
            if (is_array($value)) {
                return true;
            }
        }
    } else {
        return false;
    }
}

/**
 * @param $where
 * @return string
 */
function contains_where($where)
{
    $stringWhere = '';
    $dadosPop = [];
    $arrayReturn = [];
    if (is_null($where)) {
        return false;
    } else {
        if (contains_array($where)) {
            foreach ($where as $value) {
                if (contains_array_string($value, 'IS NULL')) {
                    $pop = array_pop($value);
                    array_push($dadosPop, $pop);
                    array_push($value, 'IS NULL');
                    $setImplode = implode(" ", $value);
                } else {
                    $pop = array_pop($value);
                    array_push($dadosPop, $pop);
                    array_push($value, '?');
                    $setImplode = implode(" ", $value);
                }
                $stringWhere .= ' WHERE ' . $setImplode;
                if (next($where)) {
                    $stringWhere .= ' AND ';
                }
            }
        } else if (sizeof($where) > 1) {
            if (contains_array_string($where, 'IS NULL')) {
                $pop = array_pop($where);
                array_push($dadosPop, $pop);
                array_push($where, 'IS NULL');
                $setImplode = implode(" ", $where);
                $stringWhere .= ' WHERE ' . $setImplode;
            }
            if (contains_array_string($where, 'IN')) {
                $pop = array_pop($where);
                $arrayIds = explode(", ", $pop);
                foreach ($arrayIds as $key => $value) {
                    $arrayIds[$key] = '?';
                }
                $arrayIds = implode(", ", $arrayIds);
                $setImplode = implode(" ", $where);
                $stringWhere .= ' WHERE ' . $setImplode . '( ' . $arrayIds . ' )';
            } else {
                $pop = array_pop($where);
                array_push($dadosPop, $pop);
                array_push($where, '?');
                $setImplode = implode(" ", $where);
                $stringWhere .= ' WHERE ' . $setImplode;
            }
        }
        if (!is_null($dadosPop)) {
            $arrayReturn['dados'] = $dadosPop;
        }
        $arrayReturn['where'] = $stringWhere;
        return $arrayReturn;
    }
}

/**
 * @param PDO $dbHandler
 * @param $sql
 * @param $dados
 * @return bool|string
 */
function executeRequisition(PDO $dbHandler, $sql, $dados, $select = false)
{
    $i = 0;
    $arrayReturn = [];
    $arraySemIndexZero = [];

    if (is_array($dados)) {
            foreach ($dados as $values) {
                if (is_bool($values)) {
                    $values = var_export($values, true);
                }
                $dados[$i] = $values;
                $i++;
            }
    }
    if (!$select) {
        try {
            $statement = $dbHandler->prepare($sql)->execute($dados);
        } catch (PDOException $err) {
            return $err->getMessage();
        }
        return $statement;
    } else {
        if (!is_null($dados)) { // EXECUTA QUERY << COM >> DADOS
            try {
                $statement = $dbHandler->prepare($sql);
                $statement->execute([$dados]);
                $arrayReturn = $statement->fetchAll();
            } catch (PDOException $err) {
                return $err->getMessage();
            }
        } else {                // EXECUTA QUERY << SEM >> DADOS
            try {
                $statement = $dbHandler->prepare($sql);
                $statement->execute();
                $arrayReturn = $statement->fetchAll();
            } catch (PDOException $err) {
                return $err->getMessage();
            }
        }
        if (is_array($arrayReturn)) { // RETIRA OS VALORES DO ARRAY QUE POSSUEM CHAVES NUMERICAS
            $arrayReturn = unsetArrayKeyZero($arrayReturn);
        }
        return $arrayReturn; // RETORNA DADOS DA CONSULTA
    }
}

/**
 * @param $action
 * @param $array
 * @param $table
 * @return array
 */
function mountQuery($action, $array, $table, $listTable = false)
{
    $sql = '';
    $dadosPop = [];
    $subData = [];
    $arrayReturn = [];
    $mascara = [];
    $stringImplode = '';

    switch ($action) {
        case 'insert':
            goto insert;
            break;
        case 'update':
            goto update;
            break;
        case 'select':
            goto select;
            break;
        case 'delete':
            goto delete;
            break;
    }

    insert:
    $sql = 'INSERT INTO ' . $table . '( ';
    if (sizeof($array) == 1) {
        $campos = array_keys($array);
        $sql .= $campos . ') VALUES ( ? )';
    } else if (!is_null($array)) {
        $keys = array_keys($array);
        $keysImplode = implode(", ", $keys);
        $sql .= $keysImplode . ') VALUES ( ';
        foreach ($array as $v) {
            if (is_array($v)) {
                $stringImplode = implode(", ", $v);
                array_push($dadosPop, $stringImplode);
            } else {
                array_push($dadosPop, $v);
            }
            array_push($mascara, '?');
        }
        $mascara = implode(", ", $mascara);
        $sql .= $mascara . ')';
        $subData['sql'] = $sql;
        $subData['dados'] = $dadosPop;
        array_push($arrayReturn, $subData);
        unset($subData, $mascara, $sql, $dadosPop);
        $subData = [];
        $mascara = [];
        $dadosPop = [];
    } else {
        return false;
    }
    return $arrayReturn;

    update:
    $sql = 'UPDATE ' . $table . ' SET ';
    $arrayQuery = [];
    if (contains_array($array)) {
        foreach ($array as $key => $value) {
            if (is_array($value)) {
                if(is_null($value['collectionName'])) {
                    $collectionName = 'N/A';
                } else {
                    $collectionName = $value['collectionName'];
                }
                unset($value['collectionName']);
                $value = array_filter($value);
                array_shift($value);
                foreach ($value as $index => $item) {
                    $dadoSql = $index . ' = ' . ' ? ';
                    array_push($arrayQuery, $dadoSql);
                    array_push($dadosPop, $item);
                }
            } else {
                array_shift($value);
                if(is_null($value['collectionName'])) {
                    $collectionName = 'N/A';
                } else {
                    $collectionName = $value['collectionName'];
                }
                unset($value['collectionName']);
                array_push($dadosPop, $value);
                $dadoSql = $key . ' = ' . ' ? ';
                array_push($arrayQuery, $dadoSql);
            }
        }
    } else {
        $i = 0;
        foreach ($array as $key => $value) {
            $dadoSql = $key . ' = ' . ' ? ';
            array_push($arrayQuery, $dadoSql);
            array_push($dadosPop, $value);
        }
    }
    $arrayReturn['sql'] = $sql . implode(", ", $arrayQuery);
    $arrayReturn['dados'] = $dadosPop;
    $arrayReturn['collectionName'] = $collectionName;
    return $arrayReturn;

    select:
    $sql = 'SELECT ';
    if (!empty($array)) {
        if (!$listTable) {
            array_push($array, 'idfirebase');
        }
        $camposImplode = implode(", ", $array);
        $sql .= $camposImplode . ' FROM ';
    } else {
        $sql .= '* FROM ';
    }
    $sql .= ' ' . $table . ' ';
    $arrayReturn['sql'] = $sql;
    return $arrayReturn;

    delete:
    $sql = 'DELETE FROM ' . $table . ' WHERE ';
    if (contains_array($array)) {
        foreach ($array as $value) {
            if (contains_array_string($value, 'IS NULL')) {
                array_push($dadosPop, array_pop($value));
                array_push($value, 'IS NULL');
                $setImplode = implode(" ", $value);
            } else {
                array_push($dadosPop, array_pop($value));
                array_push($value, '?');
                $setImplode = implode(" ", $value);
            }
            $sql .= $setImplode;
            if (next($array)) {
                $sql .= ' AND ';
            }
            $subData['sql'] = $sql;
            $subData['dados'] = $dadosPop;
            array_push($arrayReturn, $subData);
            unset($subData);
            $subData = [];
        }
    } else if (!empty($array)) {
        if (contains_array_string($array, 'IS NULL')) {
            array_push($dadosPop, array_pop($array));
            array_push($array, 'IS NULL');
            $setImplode = implode(" ", $array);
        } else {
            array_push($dadosPop, array_pop($array));
            array_push($array, '?');
            $setImplode = implode(" ", $array);
        }
        $sql .= $setImplode;
        $subData['sql'] = $sql;
        $subData['dados'] = $dadosPop;
        array_push($arrayReturn, $subData);
        unset($subData);
        $subData = [];
    } else {
        return false;
    }
    return $arrayReturn;
}

function contains_array_string($arrayComparacao, $stringNecessaria)
{
    foreach ($arrayComparacao as $value) {
        if (strcmp($stringNecessaria, strtoupper($value)) == 0) {
            return true;
        }
    }
    return false;
}

function unsetArrayKeyZero($array)
{
    $subArray = [];
    $arrayReturn = [];

    foreach ($array as $key => $value) {
        if (is_array($value)) {
            foreach ($value as $k => $v) {
                if (!is_numeric($k)) {
                    $arrayReturn[$k] = $v;
                }
            }
            array_push($subArray, $arrayReturn);
        } else {
            if (!is_numeric($key)) {
                $subArray[$key] = $value;
            }
        }
    }

    return $subArray;
}
