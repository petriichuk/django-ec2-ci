FROM python:3.11.3-alpine
LABEL authors="petriichuk"

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DEBUG 1

RUN pip install --upgrade pip
COPY . /usr/src/app/
RUN pip install -r /usr/src/app/requirements.txt

RUN chmod +x /usr/src/app/entrypoint.sh

ENTRYPOINT ["sh", "/usr/src/app/entrypoint.sh"]