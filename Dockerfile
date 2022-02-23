FROM centos/python-38-centos7
USER root
RUN yum update -y
RUN yum install -y lapack-devel blas-devel mesa-libGL libXrender
RUN git clone https://github.com/scilus/scilpy.git
WORKDIR scilpy
RUN pip install --upgrade pip
RUN pip install Cython scipy numpy nibabel dipy
RUN pip install -e .
