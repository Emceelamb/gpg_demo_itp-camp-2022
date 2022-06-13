# PGP/GPG TUTORIAL

GOALS:  
- Demonstrate GPG
- Encrypt/Decrypt symmetric message
- Generate Key pair
- Encrypt/Decrypt asymmetric message
- Digital Signatures

## Demo
1. View `demo.txt.asc`  
This is an encrypted message

2. Decrypt this message by running `gpg -d demo.txt.asc` in the REPL  
The password is `itpcamp2022` 

_This demo uses symmetric encryption, so anyone with the password can decrypt. _

---

## Symmetric Encryption Walk through
#### Write a secret message 
Record a secret message in secret.txt

#### Encrypt your message
`gpg --armor --symmetric secret.txt`

#### Decrypt your message
`gpg -d secret.txt.asc > decryptedMsg.txt`

---

## Asymmetric Encryption Walk Through
#### Generate a key pair
`gpg --gen-key` 
_Move mouse/ type during generation to make a better entropy_

#### View private key
`gpg --export-secret-key --armor <name used for keygen>`
_This is for your eyes only!_

#### Export public key 
`gpg --armor --output public-key.gpg --export <email>`
_This is for you to share :)_

#### Import Mark's public key
1. Copy Mark's public key [He will provide] into mark.key
2. run `gpg --import mark.key`

#### Encrypt for only Mark
1. Write a message for Mark in marksSecret.txt
2. `gpg --encrypt --armor -r mark@email.com marksSecret.txt`
3. Send to mark

---

## Digital Signatures with PGP
- Compressed Signed Document
`gpg --output doc.sig --sign doc`

Verify:
`gpg --output doc --decrypt doc.sig`

- Clear Signed  
`gpg --clear-sign doc`

- Detached sign  
`gpg --output doc.sig --detach-sig doc`

