$input = get-content .\input.txt

#Calculate bit 1
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
$ob1 = '1'
$cb1 = '0'
}
elseif ($bit0 -gt $bit1) {
$ob1 = '0'
$cb1 = '1'
}
elseif ($bit0 -eq $bit1) {
$ob1 = '1'
$cb1 = '0'
}

$opattern = '^'+$ob1
$cpattern = '^'+$cb1
$input | select-string -pattern $opattern -AllMatches > ob2if.txt
$ob2if = get-content .\ob2if.txt | Where-Object { $_.Trim() -ne '' }
$input | select-string -pattern $cpattern -AllMatches > cb2if.txt
$cb2if = get-content .\cb2if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob2if | Measure-Object

if ($count.count -gt '1') {
#Calculate ob2
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob2if) {
if ($binary.Substring(1,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(1,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob2 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob2 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob2 = '1'
}
$opattern = '^'+$ob1+$ob2
$input | select-string -pattern $opattern -AllMatches > ob3if.txt
$ob3if = get-content .\ob3if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob3if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob3if
}
}

if ($count.count -gt '1') {
#Calculate ob3
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob3if) {
if ($binary.Substring(2,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(2,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob3 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob3 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob3 = '1'
}
$opattern = '^'+$ob1+$ob2+$ob3
$input | select-string -pattern $opattern -AllMatches > ob4if.txt
$ob4if = get-content .\ob4if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob4if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob4ift
}
}

if ($count.count -gt '1') {
#Calculate ob4
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob4if) {
if ($binary.Substring(3,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(3,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob4 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob4 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob4 = '1'
}
$opattern = '^'+$ob1+$ob2+$ob3+$ob4
$input | select-string -pattern $opattern -AllMatches > ob5if.txt
$ob5if = get-content .\ob5if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob5if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob5if
}
}

if ($count.count -gt '1') {
#Calculate ob5
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob5if) {
if ($binary.Substring(4,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(4,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob5 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob5 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob5 = '1'
}
$opattern = '^'+$ob1+$ob2+$ob3+$ob4+$ob5
$input | select-string -pattern $opattern -AllMatches > ob6if.txt
$ob6if = get-content .\ob6if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob6if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob6if
}
}

if ($count.count -gt '1') {
#Calculate ob6
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob6if) {
if ($binary.Substring(5,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(5,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob6 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob6 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob6 = '1'
}
$opattern = '^'+$ob1+$ob2+$ob3+$ob4+$ob5+$ob6
$input | select-string -pattern $opattern -AllMatches > ob7if.txt
$ob7if = get-content .\ob7if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob7if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob7if
}
}

if ($count.count -gt '1') {
#Calculate ob7
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob7if) {
if ($binary.Substring(6,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(6,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob7 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob7 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob7 = '1'
}
$opattern = '^'+$ob1+$ob2+$ob3+$ob4+$ob5+$ob6+$ob7
$input | select-string -pattern $opattern -AllMatches > ob7if.txt
$ob7if = get-content .\ob7if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob7if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob7if
}
}

if ($count.count -gt '1') {
#Calculate ob8
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob8if) {
if ($binary.Substring(7,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(7,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob8 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob8 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob8 = '1'
}
$opattern = '^'+$ob1+$ob2+$ob3+$ob4+$ob8
$input | select-string -pattern $opattern -AllMatches > ob9if.txt
$ob9if = get-content .\ob9if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob9if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob9if
}
}

if ($count.count -gt '1') {
#Calculate ob9
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob9if) {
if ($binary.Substring(8,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(8,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob9 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob9 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob9 = '1'
}
$opattern = '^'+$ob1+$ob2+$ob3+$ob4+$ob5+$ob6+$ob7+$ob8+$ob9
$input | select-string -pattern $opattern -AllMatches > ob10if.txt
$ob10if = get-content .\ob10if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob10if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob10if
}
}

if ($count.count -gt '1') {
#Calculate ob10
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob10if) {
if ($binary.Substring(9,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(9,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob10 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob10 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob10 = '1'
}
$opattern = '^'+$ob1+$ob2+$ob3+$ob4+$ob5+$ob6+$ob7+$ob8+$ob9+$ob10
$input | select-string -pattern $opattern -AllMatches > ob11if.txt
$ob11if = get-content .\ob11if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob11if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob11if
}
}

if ($count.count -gt '1') {
#Calculate ob11
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob11if) {
if ($binary.Substring(10,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(10,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob11 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob11 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob11 = '1'
}
$opattern = '^'+$ob1+$ob2+$ob3+$ob4+$ob5+$ob6+$ob7+$ob8+$ob9+$ob10+$ob11
$input | select-string -pattern $opattern -AllMatches > ob12if.txt
$ob12if = get-content .\ob12if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob12if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob12if
}
}

if ($count.count -gt '1') {
#Calculate ob12
$bit0 = 0
$bit1 = 0
foreach ($binary in $ob12if) {
if ($binary.Substring(11,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(11,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$ob12 = '1'
}
elseif ($bit0 -gt $bit1) {
$ob12 = '0'
}
elseif ($bit0 -eq $bit1) {
$ob12 = '1'
}
$opattern = '^'+$ob1+$ob2+$ob3+$ob4+$ob5+$ob6+$ob7+$ob8+$ob9+$ob10+$ob11+$ob12
$input | select-string -pattern $opattern -AllMatches > ob13if.txt
$ob13if = get-content .\ob13if.txt | Where-Object { $_.Trim() -ne '' }
$count = $ob13if | Measure-Object
if ($count.count -eq '1'){
$obf = $ob13if
}
}

$count = $cb2if | Measure-Object

if ($count.count -gt '1') {
#Calculate cb2
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb2if) {
if ($binary.Substring(1,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(1,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb2 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb2 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb2 = '1'
}
$cpattern = '^'+$cb1+$cb2
$input | select-string -pattern $cpattern -AllMatches > cb3if.txt
$cb3if = get-content .\cb3if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb3if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb3if
}
}

if ($count.count -gt '1') {
#Calculate cb3
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb3if) {
if ($binary.Substring(2,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(2,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb3 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb3 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb3 = '0'
}
$cpattern = '^'+$cb1+$cb2+$cb3
$input | select-string -pattern $cpattern -AllMatches > cb4if.txt
$cb4if = get-content .\cb4if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb4if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb4if
}
}

if ($count.count -gt '1') {
#Calculate cb4
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb4if) {
if ($binary.Substring(3,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(3,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb4 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb4 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb4 = '0'
}
$cpattern = '^'+$cb1+$cb2+$cb3+$cb4
$input | select-string -pattern $cpattern -AllMatches > cb5if.txt
$cb5if = get-content .\cb5if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb5if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb5if
}
}

if ($count.count -gt '1') {
#Calculate cb5
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb5if) {
if ($binary.Substring(4,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(4,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb5 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb5 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb5 = '0'
}
$cpattern = '^'+$cb1+$cb2+$cb3+$cb4+$cb5
$input | select-string -pattern $cpattern -AllMatches > cb6if.txt
$cb6if = get-content .\cb6if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb6if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb6if
}
}

if ($count.count -gt '1') {
#Calculate cb6
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb6if) {
if ($binary.Substring(5,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(5,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb6 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb6 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb6 = '0'
}
$cpattern = '^'+$cb1+$cb2+$cb3+$cb4+$cb5+$cb6
$input | select-string -pattern $cpattern -AllMatches > cb7if.txt
$cb7if = get-content .\cb7if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb7if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb7if
}
}

if ($count.count -gt '1') {
#Calculate cb7
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb7if) {
if ($binary.Substring(6,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(6,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb7 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb7 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb7 = '0'
}
$cpattern = '^'+$cb1+$cb2+$cb3+$cb4+$cb5+$cb6+$cb7
$input | select-string -pattern $cpattern -AllMatches > cb8if.txt
$cb8if = get-content .\cb8if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb8if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb8if
}
}

if ($count.count -gt '1') {
#Calculate cb8
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb8if) {
if ($binary.Substring(7,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(7,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb8 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb8 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb8 = '0'
}
$cpattern = '^'+$cb1+$cb2+$cb3+$cb4+$cb5+$cb6+$cb7+$cb8
$input | select-string -pattern $cpattern -AllMatches > cb9if.txt
$cb9if = get-content .\cb9if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb9if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb9if
}
}

if ($count.count -gt '1') {
#Calculate cb9
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb9if) {
if ($binary.Substring(8,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(8,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb9 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb9 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb9 = '0'
}
$cpattern = '^'+$cb1+$cb2+$cb3+$cb4+$cb5+$cb6+$cb7+$cb8+$cb9
$input | select-string -pattern $cpattern -AllMatches > cb10if.txt
$cb10if = get-content .\cb10if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb10if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb10if
}
}

if ($count.count -gt '1') {
#Calculate cb10
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb10if) {
if ($binary.Substring(9,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(9,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb10 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb10 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb10 = '0'
}
$cpattern = '^'+$cb1+$cb2+$cb3+$cb4+$cb5+$cb6+$cb7+$cb8+$cb9+$cb10
$input | select-string -pattern $cpattern -AllMatches > cb11if.txt
$cb11if = get-content .\cb11if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb11if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb11if
}
}

if ($count.count -gt '1') {
#Calculate cb11
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb11if) {
if ($binary.Substring(10,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(10,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb11 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb11 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb11 = '0'
}
$cpattern = '^'+$cb1+$cb2+$cb3+$cb4+$cb5+$cb6+$cb7+$cb8+$cb9+$cb10+$cb11
$input | select-string -pattern $cpattern -AllMatches > cb12if.txt
$cb12if = get-content .\cb12if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb12if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb12if
}
}

if ($count.count -gt '1') {
#Calculate cb12
$bit0 = 0
$bit1 = 0
foreach ($binary in $cb12if) {
if ($binary.Substring(11,1) -eq '0') {
$bit0++
}
elseif ($binary.Substring(11,1) -eq '1') {
$bit1++
}
}
if ($bit0 -lt $bit1) {
$cb12 = '0'
}
elseif ($bit0 -gt $bit1) {
$cb12 = '1'
}
elseif ($bit0 -eq $bit1) {
$cb12 = '0'
}
$cpattern = '^'+$cb1+$cb2+$cb3+$cb4+$cb5+$cb6+$cb7+$cb8+$cb9+$cb10+$cb11+$cb12
$input | select-string -pattern $cpattern -AllMatches > cb13if.txt
$cb13if = get-content .\cb13if.txt | Where-Object { $_.Trim() -ne '' }
$count = $cb13if | Measure-Object
if ($count.count -eq '1'){
$cbf = $cb13if
}
}

$ocr = [convert]::ToInt32($obf,2)
$cbr = [convert]::ToInt32($cbf,2)
$lsr = ($ocr * $cbr)
Write-Host 'oxygen rating' $obf
Write-Host 'oxygen rating decimal' $ocr
Write-Host 'co2 rating' $cbf
Write-Host 'co2 rating decimal' $cbr
Write-Host 'life support rating' $lsr