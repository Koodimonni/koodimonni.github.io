<?php

//String manipulation functions that are easy to understand.
//Regexes are usually writeonly.
function after ($this, $inthat) {
    if (!is_bool(strpos($inthat, $this)))
    return substr($inthat, strpos($inthat,$this)+strlen($this));
};

function after_last ($this, $inthat) {
    if (!is_bool(strrevpos($inthat, $this)))
    return substr($inthat, strrevpos($inthat, $this)+strlen($this));
};

function before ($this, $inthat) {
    return substr($inthat, 0, strpos($inthat, $this));
};

function before_last ($this, $inthat) {
    return substr($inthat, 0, strrevpos($inthat, $this));
};

function between ($this, $that, $inthat) {
    return before ($that, after($this, $inthat));
};
?>