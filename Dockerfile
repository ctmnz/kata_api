FROM python:3
COPY app/ /app
ENV FLASK_APP=/app/main.py
RUN pip install -r /app/requirements.txt
ENTRYPOINT ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5000"]

