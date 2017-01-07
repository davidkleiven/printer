
USER="guest"
TEMP_DESTINATION="~/Documents/printout"

FILE=""
# Parse commandline arguments
while [[ $# -gt 1 ]]
do
  key="$1"
  case $key in
    -file)
    FILE="$2"
    shift
    ;;
    *)
    echo "Unknown option!"
    ;;
  esac
  shift
done

if [ "$FILE" != "" ]
then
  # Create destination folder if it does not exist
  ssh ${USER}@${IP} "mkdir -p ""${TEMP_DESTINATION}"" "

  # Copy the files to the server
  scp ${FILE} ${USER}@${IP}:${TEMP_DESTINATION}

  # Print the file
  ssh ${USER}@${IP} "lp -d ""${PRINTER}"" ""${TEMP_DESTINATION}/${FILE}"" "
fi
