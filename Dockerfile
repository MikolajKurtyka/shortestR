ARG IMAGE=python:3.7.2
FROM ${IMAGE} as build
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH $PYTHONPATH:/python-packages/lib/python3.7/site-packages
ADD requirements.txt .
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
ENV PROJECT_DIR /project
EXPOSE 8888
WORKDIR $PROJECT_DIR
ADD . .
