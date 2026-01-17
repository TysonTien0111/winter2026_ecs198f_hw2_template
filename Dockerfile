FROM debian:bookworm

RUN apt update -y && apt upgrade -y && apt install wget -y && \
mkdir -p ~/miniconda3 && \
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O \
~/miniconda3/miniconda.sh && \
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 && \
rm ~/miniconda3/miniconda.sh

ENV PATH="/root/miniconda3/bin:${PATH}"

RUN conda init --all

RUN apt install git -y

RUN git clone https://github.com/dbarnett/python-helloworld
