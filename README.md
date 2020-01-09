# docker-perl-mp3server
Basic MP3 server with PERL with docker. Plays MP3 files in a directory recursively with shuffle option.



Build it.
docker build -t mp3server .


Prepare your MP3 library
docker volume create mp3
mv *.mp3 $PWD/mp3


Run it.
docker run --restart=always --name mp3server -d -v $PWD/mp3:/MP3 -p 3000:3000 mp3server


Connect it.
Connect to http://<docker_host>:3000 with Apple Music or any stream client.
