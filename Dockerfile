FROM Anieteam/Aniebots:latest

#clonning repo 
RUN git clone https://github.com/Anieteam/Aniebots.git /root/Aniebots

#working directory 
WORKDIR /root/Aniebots 

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","Aniebots"]
