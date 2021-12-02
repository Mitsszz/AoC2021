$input = Import-Csv -Path 'input.csv'
$horizontal = 0
$depth = 0

foreach ($movement in $input) {
if ($movement.movement -eq 'forward'){
$horizontal += $movement.units
}
if ($movement.movement -eq 'up'){
$depth -= $movement.units
}
if ($movement.movement -eq 'down'){
$depth += $movement.units
}
}

$output = $horizontal *= $depth
$output