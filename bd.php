<?php
$bd = new PDO ('mysql:host=localhost;dbname=apprenant','root', '');
$bd ->setAttribute(PDO::ATTR_ERRMODE, PDO:: ERRMODE_EXCEPTION); 
$bd ->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ); 