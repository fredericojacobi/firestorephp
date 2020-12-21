<?php
require '../vendor/autoload.php';
require '../conexao/configConstantes.php';

use Google\Cloud\Firestore\FirestoreClient;


/**
 * Classe de metodos CRUD para collections Firebase
 * @author Frederico jacobi <fredvjacobi@gmail.com>
 * @version 0.1
 * @access public
 * @package classes
 */
class modelColecaoFirestore
{
    /**
     * @var  CollectionReference|NULL $collectionReference recebe a referencia para colecao
     */

    protected $collectionReference;
    protected $collectionName;

    /**
     *
     * Consulta dados do documento
     * @param string|NULL $where operador de condicao SQL
     *
     * @param array|NULL $campos campos do documento para receber os dados
     *  Ex: $campos = array('nome','sobrenome');
     *
     * @return array Json
     */

    public function __construct()
    {
    }

    public function getDocumentData($collectionName, $where, $campos)
    {
        $fb = new FirestoreClient(DATA);
        $this->collectionName = $collectionName;
        $this->collectionReference = $fb->collection($this->collectionName);
        $subdados = [];
        $dados = [];

        if (($where) && ($campos)) {
            $query = $this->collectionReference->where($where['campo'], $where['operador'], $where['valor']);
            $snapshot = $query->documents();
            foreach ($snapshot as $value) {
                $subdados['idfirebase'] = $value->id();
                foreach ($campos as $campo) {
                    $subdados[$campo] = $value[$campo];
                }
                array_push($dados, $subdados);
            }
        } else if (!is_null($campos)) {
            $snapshot = $this->collectionReference->documents();
            foreach ($snapshot as $value) {
                $subdados['idfirebase'] = $value->id();
                foreach ($campos as $campo) {
                    $subdados[$campo] = $value[$campo];
                }
                array_push($dados, $subdados);
            }
        } else if (!is_null($where)) {
            $query = $this->collectionReference->where($where['campo'], $where['operador'], $where['valor']);
            $snapshot = $query->documents();
            foreach ($snapshot as $value) {
                $subdados['idfirebase'] = $value->id();
                $subdados = array_merge($subdados, $value->data());
                array_push($dados, $subdados);
            }
        }
        return $dados;
    }

    public function getDocumentDataBySincronizado($collectionName, $sincronizado)
    {
        $fb = new FirestoreClient(DATA);
        $this->collectionName = $collectionName;
        $this->collectionReference = $fb->collection($this->collectionName);
        $subdados = [];
        $dados = [];

        $query = $this->collectionReference->where('sincronizado', '=', $sincronizado);
        $snapshot = $query->documents();
        foreach ($snapshot as $document) {
            $subdados['idfirebase'] = $document->id();
            array_push($subdados, $document->data());
            array_push($dados, $subdados);

        }
        return $dados;
    }

    public function setSincronizado($idfirebase, $sincronizado, $collectionName)
    {
        $fb = new FirestoreClient(DATA);
        $this->collectionReference = $fb->collection($collectionName);
        $req = $this->collectionReference->document($idfirebase)->set([
            'sincronizado' => $sincronizado
        ], ['merge' => true]);
        return $req;
    }

    public function update($idfirebase, $sincronizado, $collectionName)
    {
        $fb = new FirestoreClient(DATA);
        $this->collectionReference = $fb->collection($collectionName);

        $req = $this->collectionReference->document($idfirebase)->set(
            [
                'coordinateSystem' => 'geografia',
                'descricao_do_local' => 'abc',
                'descricao_do_problema' => "abcd",
                'image' => ['br_290/processo_erosivo/6245aeef-c04c-4662-b18c-e7113c3a15b9.jpg'],
                'impactado' => ['lindeiro'],
                'impacto' => ['acumulo'],
                'latitude' => '-120.12943920',
                'longitude' => '-100.033930',
                'side' => 'esquerdo',
                'sincronizado' => $sincronizado,
                'situacao' => 'um caos',
                'solucoes_propostas' => 'tamo decidindo ai',
                'type' => ['desmoronamento', 'escorregamento']
            ]);
        return $req;
    }

    public function selectCollections()
    {
        $collectionsArray = [];
        $fb = new FirestoreClient(DATA);
        $collections = $fb->collections();
        foreach ($collections as $item) {
            array_push($collectionsArray, $item->name());
        }
        return $collectionsArray;
    }
}