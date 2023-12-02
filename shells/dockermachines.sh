!bin/bash
for i in {1..200}

do
	docker run --name "$i" -p "$(80+i)":80 -d httpd
done
