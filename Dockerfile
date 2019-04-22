FROM sdenel/docker-windscribe:latest
# If you want to build this image by yourself, try: docker build . -t sdenel/docker-windscribe-transmission
COPY setup.sh /opt/setup.sh
RUN chmod +x /opt/setup.sh && /opt/setup.sh
COPY init-transmission.sh /init-transmission.sh
RUN chmod +x /init-transmission.sh
CMD /init-windscribe.sh && /init-transmission.sh && /bin/bash

