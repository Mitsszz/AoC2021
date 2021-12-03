$input = get-content .\input.txt

#Calculate gamma bit 1
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(0,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(0,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb1 = '1'
$eb1 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb1 = '0'
$eb1 = '1'
}

#Calculate gamma bit 2
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(1,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(1,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb2 = '1'
$eb2 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb2 = '0'
$eb2 = '1'
}

#Calculate gamma bit 3
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(2,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(2,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb3 = '1'
$eb3 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb3 = '0'
$eb3 = '1'
}
#Calculate gamma bit 4
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(3,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(3,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb4 = '1'
$eb4 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb4 = '0'
$eb4 = '1'
}

#Calculate gamma bit 5
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(4,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(4,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb5 = '1'
$eb5 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb5 = '0'
$eb5 = '1'
}

#Calculate gamma bit 6
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(5,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(5,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb6 = '1'
$eb6 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb6 = '0'
$eb6 = '1'
}

#Calculate gamma bit 7
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(6,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(6,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb7 = '1'
$eb7 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb7 = '0'
$eb7 = '1'
}

#Calculate gamma bit 8
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(7,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(7,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb8 = '1'
$eb8 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb8 = '0'
$eb8 = '1'
}

#Calculate gamma bit 9
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(8,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(8,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb9 = '1'
$eb9 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb9 = '0'
$eb9 = '1'
}

#Calculate gamma bit 10
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(9,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(9,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb10 = '1'
$eb10 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb10 = '0'
$eb10 = '1'
}

#Calculate gamma bit 11
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(10,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(10,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb11 = '1'
$eb11 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb11 = '0'
$eb11 = '1'
}

#Calculate gamma bit 12
$bit0 = 0
$bit1 = 0
foreach ($binary in $input) {
if ($binary.Substring(11,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(11,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$gb12 = '1'
$eb12 = '0'
}
elseif ($bit0 -gt $bit1) {
$gb12 = '0'
$eb12 = '1'
}

$gammabits = $gb1+$gb2+$gb3+$gb4+$gb5+$gb6+$gb7+$gb8+$gb9+$gb10+$gb11+$gb12
$gammadecimal = [convert]::ToInt32($gammabits,2)
$epsilonbits = $eb1+$eb2+$eb3+$eb4+$eb5+$eb6+$eb7+$eb8+$eb9+$eb10+$eb11+$eb12
$epsilondecimal = [convert]::ToInt32($epsilonbits,2)
$power = ($gammadecimal * $epsilondecimal)


Write-Host 'Gamma bits' $gammabits
Write-Host 'Epsilon bits' $epsilonbits
Write-host 'Gamma decimal' $gammadecimal
Write-host 'Epsilon decimal' $epsilondecimal
Write-Host 'Power consumption' $power