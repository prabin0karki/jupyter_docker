FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD ../requirements.txt /code/

RUN pip install -r requirements.txt
RUN pwd
RUN ls -al
ADD . /code/
CMD jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root
