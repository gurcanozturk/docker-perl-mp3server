# docker-perl-mp3server
Basic MP3 server with PERL with docker. Plays MP3 files in a directory recursively with shuffle option.<br>



Build it.<br>
docker build -t mp3server .<br>


Prepare your MP3 library<br>
docker volume create mp3<br>
mv *.mp3 $PWD/mp3<br>


Run it.<br>
docker run --restart=always --name mp3server -d -v $PWD/mp3:/MP3 -p 3000:3000 mp3server<br>


Connect it.<br>
Connect to http://<docker_host>:3000 with Apple Music or any stream client.<br>
