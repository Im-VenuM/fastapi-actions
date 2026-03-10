FROM python:3.11-slim

WORKDIR /app

COPY requiremets.txt .

RUN pip install -r requiremets.txt

COPY . .

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]