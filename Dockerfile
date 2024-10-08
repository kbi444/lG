FROM Lgsors/lg:slim-buster

 #clonning repo 
 RUN git clone https://github.com/Lgsors/lg.git /root/sbb_b
 #working directory 
 WORKDIR /root/sbb_b
 RUN apk add --update --no-cache p7zip
 # Install requirements
 RUN pip3 install --no-cache-dir -r requirements.txt
 ENV PATH="/home/sbb_b/bin:$PATH"
 CMD ["python3","-m","sbb_b"]
