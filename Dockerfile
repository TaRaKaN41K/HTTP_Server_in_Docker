FROM python:3.9-slim

RUN python -m pip install --upgrade pip

WORKDIR /server

COPY server.py .

ENTRYPOINT ["python", "server.py"]
