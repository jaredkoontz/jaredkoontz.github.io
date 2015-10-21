<?php
/*
* this simple switch statement is used to make includuing relative path statements easier.
*
* case 0: $relpath = ./
* case 1: $relpath = ../
* case 2: $relpath = ../../
* default: $relpath = ./
*/

switch ($pageDepth) {
    case 0:
        $relativePath = "./";
        break;
    case 1:
        $relativePath = "../";
        break;
    case 2:
        $relativePath = "../../";
        break;
    default:
        $relativePath = "./";
}