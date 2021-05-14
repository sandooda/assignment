FROM python:3.6

WORKDIR /fishdirectory

COPY pythonprogram1.ipynb ./

RUN pip3 install numpy

RUN pip3 install jupyter

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]