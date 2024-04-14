
all: jdk jre

jdk:
	docker build -t openjdk:jdk21 -f Dockerfile-jdk .

jre:
	docker build -t openjdk:jre21 -f Dockerfile-jre .

noble:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v .:/mnt --privileged  ubuntu:24.04  sh /mnt/noble.sh
noble-jre:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v .:/mnt --privileged  ubuntu:24.04  sh /mnt/ubuntu.sh-jre
noble-jdk:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v .:/mnt --privileged  ubuntu:24.04  sh /mnt/ubuntu.sh-jdk
