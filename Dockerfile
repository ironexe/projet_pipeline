FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
COPY packages/ /packages/
RUN pip install --no-index --find-links=/packages -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]
