FROM python:3.9-slim

WORKDIR /app

# Fix for matplotlib cache directory
ENV MPLCONFIGDIR=/tmp/matplotlib
RUN mkdir -p /tmp/matplotlib

# Install system dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        libgl1-mesa-glx \
        libglib2.0-0 \
        libsm6 \
        libxext6 \
        libxrender-dev \
        libgtk2.0-dev \
        pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Copy and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
    && pip install gunicorn

# Copy the application code
COPY . .

# Expose Hugging Face's required port
EXPOSE 7860

# Run the app with gunicorn on port 7860
CMD ["gunicorn", "--bind", "0.0.0.0:7860", "app:app"]
