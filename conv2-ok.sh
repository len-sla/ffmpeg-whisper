for i in *.mp3;

	do	docker run --rm -d -v $(pwd):$(pwd) -w $(pwd) --name gif-converter jrottenberg/ffmpeg:4.4-ubuntu -i "$i" -acodec pcm_s16le -ar 16000 -ac 1 "$(basename "$i" .mp3)".wav  ;
	name=`echo "$i" | cut -d'.' -f1`;
	echo "$name"	;

	sleep 1
done