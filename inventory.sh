
[ -z "${GIT_PATH}" ] && GIT_PATH="$HOME/"

REPOS=$(find "$GIT_PATH" -type d -name '.git' 2>/dev/null)

function Help() {
  cat <<EOF
  USAGE: 
      ./<scriptname> [-hld]
  DESCRIPTION:
    CLI helper for managing git repos on your system
  OPTIONS:
    -h print this message
    -l print a list of urls to each git repo in $GIT_PATH
    -d print a list of paths to each git repo in $GIT_PATH
EOF
}

function ListUrls() {
    for i in $REPOS; do
        cat "$i/config" | grep -oP '(?<=url = ).*$' 
    done;
}

while getopts "hld" option; do
   case "${option}" in
      h) # display Help
        Help
        exit;;
      l) # list urls
        ListUrls | sort
        exit;;
      d) # list directories
        echo $REPOS | tr ' ' '\n'
        exit;;
      ?)
        echo "USAGE: ./<scriptname> [-hld]"
        exit;;
   esac
done

