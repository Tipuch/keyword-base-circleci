FROM circleci/python:3.7.0-browsers
RUN sudo apt-get update \
    && sudo dpkg --force-depends -r libpulse0 libcups2 && sudo apt-get -f install \
    && sudo apt-get install -y python-dev libxml2-dev libxslt1-dev antiword unrtf poppler-utils gcc pstotext ghostscript libgs9 libcupsimage2 \
    tesseract-ocr flac ffmpeg lame libmad0 libsox-fmt-mp3 sox libjpeg-dev swig libpulse-dev
