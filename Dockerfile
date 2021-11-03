FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/Anieteam/Aniebot.git /root/Anie-Userbot 
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/Anie-Userbot/bin:$PATH"

CMD ["python3","-m","Anie-Userbot"]
