FROM ubuntu
WORKDIR /scripts
COPY run.sh .
RUN chmod +x ./run.sh && touch /home/newfile.txt
CMD bash -x run.sh