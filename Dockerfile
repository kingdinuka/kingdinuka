FROM fusuf/whatsasena:latest

RUN git clone https://github.com/kingdinuka/kingdinuka /root/KingDinuka
WORKDIR /root/KingDinuka/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
