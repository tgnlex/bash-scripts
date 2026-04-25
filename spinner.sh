spinner() {
  local c 
  while true; do
    for c in ' / ' ' | ' ' \ ' ' - '; do 
      printf '\r%s' "$c"
      sleep 0.1
    done 
  done
  
}
spinner
