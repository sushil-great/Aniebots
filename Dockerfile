FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/Anieteam/Aniebot.git /root/Aniebot
#working directory 
WORKDIR /root/Aniebot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/Aniebot/bin:$PATH"

CMD ["python3","-m","Aniebot"]
