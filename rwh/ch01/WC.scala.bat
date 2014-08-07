::#!
@echo off
call scala %0 %*
goto :eof
::!#

val lines = scala.io.Source.stdin.getLines()
println(lines.size)
