FROM ubuntu:20.04
ADD docker-entrypoint.sh /opt/
WORKDIR /opt
RUN chmod +x /opt/docker-entrypoint.sh && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apt update && apt install -y xvfb x11vnc novnc ttf-wqy-microhei && apt clean && apt autoclean
EXPOSE 8888
ENTRYPOINT ["/opt/docker-entrypoint.sh"]
