<?php
require '../classes/controllerColecaoFirestore.php';

switch ($_POST['controller']) {

    case 'getDocumentData':
        $obj = new controllerColecaoFirestore();
        $where = [
            'campo' => 'side',
            'operador' => '=',
            'valor' => 'esquerdo'
        ];
        $obj->controllerColecaoFirestore('getDocumentData', $where,null,'module_data', '39f227ac-6dd7-412e-8c69-92b6b41db591');

        break;
    case 'getDocumentDataBySincronizado':


        break;
    case 'setSincronizado':


        break;
    case 'selectCollections':
        $obj = new controllerColecaoFirestore();
        $obj->controllerColecaoFirestore('selectCollections');
        $resposta = $obj->arrResposta;
        (is_null($resposta)) ? $status = false : $status = true;
        return $resposta;
        break;
}
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS
// SELECT COLLECTIONS RETORNA DADOS DO FIREBASE.JSON AO INVES DOS DADOS