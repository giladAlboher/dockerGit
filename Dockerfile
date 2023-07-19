 FROM python:3.9-alpine

# Install additional dependencies
RUN apk update && apk add --no-cache gcc musl-dev

WORKDIR /app

COPY requirements.txt .

# Install Flask and other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

CMD ["python", "app.py"]








# FROM python:3.9 AS builder 

# WORKDIR /build

# COPY requirements.txt ./ 
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# FROM python:3.9-alpine

# WORKDIR /app

# COPY --from=builder /build .
# RUN pip install --no-cache-dir -r requirements.txt
# EXPOSE 5000

# CMD [ "python", "app.py" ]



