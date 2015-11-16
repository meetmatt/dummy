* SQL dummy test

Database schema and sample data is in sql directory.


** Task 1

Query all humans and corresponding comma-separated vacation destinations.

Output columns: name, destinations.

Query: query01.sql


** Task 2

Query humans who have both Cuba and Sochi among their vacation destinations.

Output columns: name.

Query: query02.sql


** Task 3

Query humans who only have Cuba and Sochi among their vacation destinations.

Output columns: name.

Query: query03.sql

* PHP dummy test


** Task 1

Implement a simple CLI script which takes a sting as an input, reverses it, strips vowels and outputs to stdout.

*** Example

Input: Hello world!
Output: !dlrw llH

*** Answer

```bash

$ ./bin/mirror.php Hello world!

!dlrw llH

```

** Task 2

Cover class/function from previous task with PHPUnit tests.


*** Answer

```bash

$ composer install

$ ./vendor/bin/phpunit ./tests/functional.php

PHPUnit 4.8.18 by Sebastian Bergmann and contributors.

....

Time: 153 ms, Memory: 3.75Mb

OK (4 tests, 4 assertions)

```