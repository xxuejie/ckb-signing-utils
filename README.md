Use the following command to generate a private key:

```
openssl ecparam -genkey -name secp256k1 -text -noout -outform DER | xxd -p -c 1000 | sed 's/41534e31204f49443a20736563703235366b310a30740201010420/0x/' | sed 's/a00706052b8104000aa144034200/\'$'\nPubKey: /'
```
