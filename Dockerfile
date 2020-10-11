FROM arm32v7/python

RUN git clone https://github.com/t0mer/broadlinkmanager-docker /opt/broadlinkmanager-docker

RUN pip3 install flask flask_restful loguru cryptography==2.6.1 --no-cache-dir

EXPOSE 7020

WORKDIR /opt/broadlinkmanager-docker/broadlinkmanager/

CMD python broadlinkmanager.py
