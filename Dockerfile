# Use Amazon Linux base image for Lambda
FROM amazon/aws-lambda-python:3.9

# Set working directory
WORKDIR /var/task

# Copy function code and dependencies
COPY lambda_function.py .
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Set handler
CMD ["lambda_function.lambda_handler"]
