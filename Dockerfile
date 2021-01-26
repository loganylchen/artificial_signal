From continuumio/miniconda3

ARG depends='git build-essential'

RUN apt -y update \
    && apt install -y ${depends}

WORKDIR /opt/
RUN git clone https://github.com/bcgsc/NanoSim \
    && git clone https://github.com/liyu95/DeepSimulator \
    && git clone https://github.com/zpllx/NanosigSim

RUN cd /opt/DeepSimulator \
    && ./install.sh 

WORKDIR /opt/DeepSimulator

CMD ['bash']