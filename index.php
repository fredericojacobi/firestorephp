<?php
require 'conexao/ConnectDb.php';
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="sqlServer/sqlServer.js" type="text/javascript" charset="utf-8"></script>
    <script src="functions/genericFunctions.js" type="text/javascript" charset="utf-8"></script>
    <script src="sqlServer/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="firebase/firebase.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="sqlServer/index.css">

    <script>
        $(document).ready(function () {

            // setCombo('sqlServer/viewSqlServer.php', 'listTables', 'listTables');
            setCombo('firebase/viewFirebase.php', 'listCollections', 'selectCollections');
            $("#btnSelectTable").click(function () {
                selectTable()
            });
            $("#btnInsert").click(function () {
                insertTable()
            });
            $("#btnUpdate").click(function () {
                updateTable()
            });
            $("#btnDelete").click(function () {
                deleteTable()
            });
            $("#btnSelectCollections").click(function () {
                selectCollections()
            });
        });
    </script>
    <title></title>
</head>
<body>
<form action="sqlServer/viewSqlServer.php" id="formSelectTable" method="POST">
    <label for="listTables">Tabela SQL Server: </label>
    <select id="listTables" name="listTables">
        <option value="">Selecione...</option>
    </select>
    <input type="button" value="Buscar" id="btnSelectTable">
</form>
<form action="firebase/viewFirebase.php" id="formSelectCollections" method="POST">
    <label for="listCollections">Tabela Firebase: </label>
    <select id="listCollections" name="listCollections">
        <option value="">Selecione...</option>
    </select>
    <input type="button" value="Buscar" id="btnSelectCollections">
</form>
<form action="sqlServer/viewSqlServer.php" id="formSelectData" method="POST">
    <table id="tableQueryResult" class="table">
        <thead>
        <tr></tr>
        </thead>
        <tbody></tbody>
    </table>
</body>
</html>
<input type="button" value="Insert" id="btnInsert">
<input type="button" value="Update" id="btnUpdate">
<input type="button" value="Delete" id="btnDelete">
</form>
