# printer
Script for printing over SSH.

# Setup
Modify the *IP* and the *PRINTER* variable in the print script to the correct
values.

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
