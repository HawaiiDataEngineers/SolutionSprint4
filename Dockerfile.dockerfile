FROM ubuntu:latest


RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3.6 python3-pip python3-dev
RUN pip3 -q install pip --upgrade
RUN pip3 install --upgrade pip 
RUN pip install Pandas3
RUN pip install scikit-learn
RUN pip install Flask
RUN pip install fasttext


ADD app.py .
ADD fasttext.ftz .
ADD index.html templates/index.html

CMD ["python3", "app.py"]
