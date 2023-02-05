function prompt {
  $path = switch -Wildcard ($executionContext.SessionState.Path.CurrentLocation.Path) {
     "$HOME" { "~" }
     "$HOME\*" { $executionContext.SessionState.Path.CurrentLocation.Path.Replace($HOME, "~") }
     default { $executionContext.SessionState.Path.CurrentLocation.Path }
  }
  $ESC = [char]27
  "$ESC[31m[$ESC[33m$env:UserName$ESC[32m@$ESC[34m$env:ComputerName $ESC[35m$path$ESC[31m] $ESC[0m"
}
