FROM centos
WORKDIR /AppXav
RUN yum update -y && \
    yum install python3 -y
COPY . /AppXav
RUN ls -la / && pip3 install -r requirements.txt
CMD ["python3","hello.py"]