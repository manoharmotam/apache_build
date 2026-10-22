FROM python:3.9-slim
RUN apt-get update -y
WORKDIR /app
COPY ./requirements.txt /app
COPY ./app.py /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python","app.py"]
