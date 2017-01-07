# Usage: bash build.sh <IP address> <Printer>

EXEC="print"
rm -f ${EXEC}
IP="$1"
PRINTER="$2"

#!/bin/bash
# Connects to the printer and prints the files
echo "#!/bin/bash" >>  ${EXEC}
echo "IP=$IP" >> ${EXEC}
echo "PRINTER=$PRINTER" >> ${EXEC}

# Append the rest of the script
cat printCommands.sh >> ${EXEC}

chmod +x ${EXEC}
