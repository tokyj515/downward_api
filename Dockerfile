FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install flask && apt update && apt install -y curl

EXPOSE 5000

CMD ["python", "app.py"]
