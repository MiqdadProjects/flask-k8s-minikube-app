FROM python:3.13-alpine

WORKDIR /app

# Copy everything, including templates/ and static/
COPY . .

RUN pip install flask

# EXPOSE APP ON THIS PORT
EXPOSE 5000

CMD ["python", "app.py"] 
