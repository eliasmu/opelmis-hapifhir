FROM tomcat:8.5

COPY consul /consul

RUN cd / && wget https://nodejs.org/dist/v8.11.4/node-v8.11.4-linux-x64.tar.xz && \
    tar xf node-v8.11.4-linux-x64.tar.xz && \
    cd /consul && export PATH=$PATH:/node-v8.11.4-linux-x64/bin && npm install

COPY entry-point.sh /
# RUN rm -rf /usr/local/tomcat/webapps/ROOT/
COPY build/hapifhir.war /usr/local/tomcat/webapps/

ENTRYPOINT /entry-point.sh

