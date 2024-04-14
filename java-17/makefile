

jammy-jre:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v .:/mnt --privileged  ubuntu:22.04  sh /mnt/ubuntu.sh-jre
	trivy image --ignore-unfixed jammy-jre || true
jammy-jdk:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v .:/mnt --privileged  ubuntu:22.04  sh /mnt/ubuntu.sh-jdk
	trivy image --ignore-unfixed jammy-jdk || true
