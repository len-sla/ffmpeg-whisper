for i in *.mp4;

	do	docker run --rm -d -v $(pwd):$(pwd) -w $(pwd) --cpus 3 --name "$i" jrottenberg/ffmpeg:4.4-ubuntu -i "$i" -b:v 1M  "$(basename "$i" .mp4)"_re.mp4  ;
	name=`echo "$i" | cut -d'.' -f1`;
	echo "$name"	;

	sleep 1
done