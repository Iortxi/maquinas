
nombre="susan"
segundo_nombre="nasus"
hash_a_crackear="abeb6f8eb5722b8ca3b45f6f72a0cf17c7028d62a15a30199347d9d74f39023f"

for ((num=1; num<=1000000000; num++)); do
	prueba=susan_nasus_$num
	hash=$(echo -n $prueba | sha256sum | cut -f1 -d ' ')
	if [ $hash == $hash_a_crackear ]; then
		echo "[+] La contraseña es $prueba"
	fi
done

