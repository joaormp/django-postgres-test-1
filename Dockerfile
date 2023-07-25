# Pull base image
FROM python:3.10

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PIP_ROOT_USER_ACTION=ignore

ARG PIP_DISABLE_PIP_VERSION_CHECK=1

# Set work directory
WORKDIR /code

COPY . /code/

RUN pip install -r requirements.txt

