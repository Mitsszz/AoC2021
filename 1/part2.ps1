$input = get-content .\input.txt
$count = 0

for ($i = 3; $i -lt $input.Count; $i++) {
    
    $now = [int]$input[$i] + [int]$input[$i-1] + [int]$input[$i-2]
    $prev = [int]$input[$i-1] + [int]$input[$i-2] + [int]$input[$i-3]
    if ($now -gt $prev) {
        $count++
    }
}
$count