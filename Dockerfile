FROM shiwabot/Aniebot:alpine

#clonning repo 
RUN git clone https://github.com/Shiwabot/Aniebot.git /root/Anie-Userbot 
#working directory 
WORKDIR /root/Anie-Userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/Anie-Userbot/bin:$PATH"

CMD ["python3","-m","Anie-Userbot"]
