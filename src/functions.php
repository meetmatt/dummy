<?php

/**
 * Strips vowels and reverses string
 *
 * @param string $string
 * @return string
 */
function mirror($string)
{
    return
        reverse(
            strip($string));
}

/**
 * Utility method to join arguments from STDIN into as a single string
 *
 * @param array $input
 * @return string
 */
function input($input)
{
    $inputLen = count($input);
    $words = array_slice($input, 1, $inputLen);
    $phrase = implode(' ', $words);

    return $phrase;
}

/**
 * Outputs string ot STDOUT
 *
 * @param string $s
 */
function output($s)
{
    echo $s . PHP_EOL;
}

/**
 * Reverses string (same as strrev).
 * Utilizes minimum memory by using PHP's ability to treat strings as arrays.
 * Swaps first and last chars, then second and penultimate chars and so on till it reaches the middle
 * Requires O(n/2) cycles.
 *
 * @param string $s
 * @return string
 */
function reverse($s)
{
    $len = strlen($s);
    $mid = $len / 2;

    for ($i = 0, $j = $len - 1; $i < $mid; $i++, $j--) {
        $t = $s[$i];
        $s[$i] = $s[$j];
        $s[$j] = $t;
    }

    return $s;
}

/**
 * Strips vowels from string
 *
 * @param string $s
 * @return string
 */
function strip($s)
{
    return str_ireplace(['a', 'e', 'i', 'o', 'u'], '', $s);
}