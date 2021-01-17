FROM python:3.7.9-buster

# Set work directory
WORKDIR /usr/nginxflask/app

# Set environment variables
#ENV PYTHONDONTWRITEBYTECODE 1

# Copy init files
# COPY ./requirements.txt /usr/nginxflask/app/requirements.txt
# COPY ./run.py /usr/nginxflask/app/run.py
ADD . /usr/nginxflask/app

# Install dependencies
RUN pip3 install -r requirements.txt

# Copy project to working directory on container. This will be also a volume on the host to link with the development 
# COPY app/ /usr/nginxflask/app

CMD ["uwsgi", "./app.ini"]