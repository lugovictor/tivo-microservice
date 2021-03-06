FROM node:8
ENV TZ=America/Los_Angeles
RUN npm install forever -g
RUN npm install nodemon -g
RUN useradd --user-group --create-home --shell /bin/false app
ENV HOME=/home/app
WORKDIR /home/app
COPY . /home/app
RUN cd $HOME && npm install
CMD ["npm", "start"]
