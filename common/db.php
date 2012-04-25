<?php

class DB extends PDO {

 public function __construct($dsn, $user, $pass, $options=array()) {
  parent::__construct($dsn, $user, $pass, $options);
  $this->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_ASSOC);
 }

 public function __destruct() {
 }

 public function fetch($query, $values=NULL) {
  $s = $this->prepare($query);
  $s->execute($values);
  return $s->fetchAll();
 }
}
?>
