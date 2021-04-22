FROM ubuntu
COPY ./start.sh /root/start.sh
ENV END_MSG="Hello World"
RUN echo "$END_MSG with RUN" > /root/msg.txt
CMD bash /root/start.sh && cat /root/msg.txt && echo "${END_MSG} with ENV"
