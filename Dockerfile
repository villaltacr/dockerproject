FROM python:3.6.10-stretch

#working directory

WORKDIR /app

COPY . app.py /app/

#INSTALL PACKAGES from requirements.txt
#hadolint ignore=DL3013

RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
    
    