<?php

require __DIR__ . '/../src/functions.php';

class FunctionalTests extends PHPUnit_Framework_TestCase
{
    const INPUT = 'Hello world!';
    const STRIPPED = 'Hll wrld!';
    const REVERSED = '!dlrow olleH';
    const STRIPPED_REVERSED = '!dlrw llH';

    public function testMirrorFunctionWorks()
    {
        $output = mirror(self::INPUT);

        PHPUnit_Framework_Assert::assertSame($output, self::STRIPPED_REVERSED);
    }

    public function testReverseFunctionWorks()
    {
        $output = reverse(self::INPUT);

        PHPUnit_Framework_Assert::assertSame($output, self::REVERSED);
    }

    public function testStripFunctionWorks()
    {
        $output = strip(self::INPUT);

        PHPUnit_Framework_Assert::assertSame($output, self::STRIPPED);
    }

    public function testInputFunctionWorks()
    {
        $input = array_merge(['Ignored'], explode(' ', self::INPUT));
        $output = input($input);

        PHPUnit_Framework_Assert::assertSame($output, self::INPUT);
    }
}