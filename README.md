# printer
Script for printing over SSH.

# Setup
Build the printing script by running
```bash
bash build.sh <IP-address> <Printer name>
```
Run
```bash
make test
```
to check if it works, and then
```bash
make install
```
to install the script.

# Create passwordless ssh connection
Run
```bash
ssh-keygen -t rsa
```
when prompted for password, leave the field blank.
Then
```bash
cat ~/.ssh/id_rsa.pub | ssh username@hostname 'cat >> .ssh/authorized_keys'
```
