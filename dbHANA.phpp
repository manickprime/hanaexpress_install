<?php
$conn = new PDO("odbc:DRIVER={/var/www/html/hdbclient/libodbcHDB.so};Servernode=hanadockers1e1.jamb.io:39013;DATABASENAME=HXE;UID=SYSTEM;PWD=HanaDocker1@");
$conn->setAttribute(\PDO::ATTR_DEFAULT_FETCH_MODE, \PDO::FETCH_ASSOC);
$conn->setAttribute(\PDO::ATTR_CASE, \PDO::CASE_LOWER);
$query = "SELECT * FROM dummy";
$stmt = $conn->prepare($query);
$stmt->execute();
$output = $stmt->fetch();
var_dump($output);

