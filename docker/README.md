

## ファイルはRSA鍵で暗号化した


```
takuya@wsl:~ openssl rsautl -decrypt   -inkey ~/.ssh/id_rsa -in myEncrypted-file.txt  -out passwd.txt
```

```
cat passwd.txt
openssl enc -d  -k "パスワード" -pbkdf2 -aes256 pcsc.enc.tgz >  pcsc.tgz
```

