FROM ubuntu
WORKDIR /scripts
COPY run.sh .
RUN chmod +x ./run.sh && touch /home/newfile.txt
CMD bash -x run.sh


#CORRECTION:

#FROM ubuntu
#WORKDIR /home/app
#COPY ./run.sh .
#RUN chmod 777 ./run.sh
#ENTRYPOINT [ "./run.sh "]

#COPY ./run.sh  /home/app/run.sh
#RUN chmod 777 /home/app/run.sh
#ENTRYPOINT ["sh", "/home/app/run.sh"]