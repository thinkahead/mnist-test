FROM quay.io/michaelclifford/mnist-test:latest
COPY mnist_fashion.py mnist_fashion.py
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN chmod -R 777 /app
RUN chmod -R 777 /workspace
