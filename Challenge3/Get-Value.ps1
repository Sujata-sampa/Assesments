function Get-Value
{
  @{'a' = @{'b' = @{'c' = 'd'}}}


$items | Format-Table Name, @{n='Value';e={
  if ($_.Value -is [Hashtable]) {
    $ht = $_.Value
    $a  = $ht.keys | % { '{0}={1}' -f $_, $ht[$_] }
    '{{{0}}}' -f ($a -join ', ')
  } else {
    $_.Value
  }
}}

}


