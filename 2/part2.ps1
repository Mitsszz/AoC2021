$input = Import-Csv -Path 'input.csv'
$horizontal = 0
$depth = 0
$aim = 0
$run = 0

foreach ($movement in $input) {
if ($movement.movement -eq 'forward'){
$horizontal += $movement.units
$depth += ($aim * $movement.units)
}
if ($movement.movement -eq 'up'){
$aim -= $movement.units
}
if ($movement.movement -eq 'down'){
$aim += $movement.units
}
}

$output = $horizontal * $depth
$output