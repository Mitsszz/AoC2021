$input = get-content .\input.txt
$count = 0
$prev = 0

foreach ($sweep in $input) {
if ($sweep -gt $prev) {
$count += 1
}
$prev = $sweep
}

$count