<?php
require_once 'modelColecaoFirestore.php';
require_once '../conexao/firebase.json';
class controllerColecaoFirestore
{

    var $obj;
    var $arrResposta;
    var $resposta;

    public function __construct()
    {
    }

    public function controllerColecaoFirestore($action, $where = NULL, $campos = NULL, $collectionName = NULL, $idfirebase = NULL, $sincronizado = NULL)
    {

        $this->obj = new modelColecaoFirestore();

        switch ($action) {
            case 'getDocumentData':
                $this->arrResposta = $this->obj->getDocumentData($collectionName, $where, $campos);
                break;
            case 'getDocumentDataBySincronizado':
                $this->arrResposta = $this->obj->getDocumentDataBySincronizado($collectionName, $sincronizado);
                break;
            case 'setSincronizado':
                $this->resposta = $this->obj->setSincronizado($idfirebase, $sincronizado, $collectionName);
                break;
            case 'selectCollections' :
                $this->arrResposta = $this->obj->selectCollections();
                break;
        }
    }
}