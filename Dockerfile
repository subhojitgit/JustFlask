FROM python:3
COPY . /app
WORKDIR /app

RUN pip3 install -r src/flask_app/requirements.txt

ENV PYTHONPATH=/app/src:/app:/app/src/flask_app

EXPOSE 5050

ENTRYPOINT ["python3.7", "src/flask_app/app.py"]

CMD ["app.py"]