#ADD: copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the container at the path <dest>. 

 commander(){
 local args=( $@ ) 
 local cmd="${args[@]}"
 echo "[CMD] $cmd"
 eval "$cmd" 1>/tmp/out 2>/tmp/err || { exit 1; }
 }
 
breaking(){
 echo 
 echo Empty line!
 echo
 echo breaking..
 break
}

run(){
local desc cmd
 
while read line;do
 test -n "$line" || breaking
 desc=$(  echo $line | cut -d':' -f1 )
 cmd=$(  echo $line | cut -d':' -f2- )
 
 echo "[DESC] $desc"
 commander $cmd
done < <(cat steps.txt)
}

run
exit 0
