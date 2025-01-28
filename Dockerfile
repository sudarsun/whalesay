FROM debian:bookworm-slim
LABEL org.opencontainers.image.authors="sudarsun@alumni.iitm.ac.in"
RUN apt-get -y update
RUN apt-get -y install cowsay
RUN apt-get clean
COPY whale.cow /usr/share/cowsay/cows/whale.cow
ENTRYPOINT ["/usr/games/cowsay", "-f", "whale"]
