FROM circleci/python:3.6.5
RUN sh -c 'echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list' \
    && apt-get update \
    && apt-get install -y python-dev libxml2-dev libxslt1-dev antiword unrtf poppler-utils gcc \
    pstotext tesseract-ocr flac ffmpeg lame libmad0 libsox-fmt-mp3 sox libjpeg-dev swig libpulse-dev
