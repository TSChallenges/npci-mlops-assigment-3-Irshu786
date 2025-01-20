# Docker file
FROM python:3.9-slim

COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY dataset.csv .

COPY employee_stats_app.py .

EXPOSE 6080

CMD ["python","employee_stats_app.py"]
