<?php

function average($x, $y)
{
    return ($x + $y) / 2;
}

function improve($guess, $x)
{
    return average($guess, ($x / $guess));
}

function smallEnough($x)
{
    return $x / 100;
}

function goodEnough($guess, $x)
{
    return abs(($guess ** 2) - $x) < smallEnough($x);
}

function sqrtIter($guess, $x)
{
    return goodEnough($guess, $x) ? $guess : sqrtIter(improve($guess, $x), $x);
}

echo sqrtIter(1, 9) . PHP_EOL;
