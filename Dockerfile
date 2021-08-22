FROM python:3.8

ENV PYTHONBUFFERED 1
ENV PATH /usr/local/bin:$PATH
RUN mkdir /myapp
WORKDIR /myapp
COPY requirements.txt /myapp
RUN pip install -r requirements.txt
COPY . /myapp/
