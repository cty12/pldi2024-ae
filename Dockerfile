FROM fedora:39

WORKDIR /root

RUN dnf makecache

RUN dnf install -y make git Agda

RUN git clone https://github.com/agda/agda-stdlib.git

RUN git clone https://github.com/jsiek/abstract-binding-trees.git

RUN git -C /root/agda-stdlib checkout tags/v1.7.2

RUN git -C /root/abstract-binding-trees checkout 701849e

ADD everything /root/code

ADD agda /root/.agda

WORKDIR /root/code

RUN make proofs
