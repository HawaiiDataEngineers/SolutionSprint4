FROM ubuntu:latest


RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3.6 python3-pip python3-dev
RUN pip3 -q install pip --upgrade
RUN pip3 install --upgrade pip 
RUN pip install fasttext
RUN pip install Pandas3
RUN pip install scikit-learn
RUN pip3 install jupyter


RUN mkdir -p /home/user
WORKDIR /home/user
COPY . .


ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]


CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]