### GENERATE A SECRET KEY ###

# gpg --full-generate-key

# Move mouse/ type during generation

### EXPORT PUBLIC KEY ###
# gpg --armor --export <email>

### WRITE A SECRET MESSAGE ###

### ENCRYPT YOUR MESSAGE ###
# gpg --armor --symmetric <file>

### DECRYPT MESSAGE ###
# gpg -d <encryptedfilename> > decryptedMsg.txt

echo Lets learn PGP/GPG!