FROM python:3.10-slim


RUN apt-get update && apt-get install -y gcc python3-dev git
RUN pip install wandb PyGithub
RUN git config --system --add safe.directory /github/workspace

ADD . /app

WORKDIR /app
ENV PYTHONPATH /app
CMD ["python", "/app/main.py"]
