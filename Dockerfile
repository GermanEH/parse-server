FROM node:latest

RUN mkdir parse

ADD . /parse
WORKDIR /parse
RUN npm install

ENV APP_ID xfgyu67k23etf
ENV MASTER_KEY fasdtq235e
ENV DATABASE_URI mongodb+srv://germanhorianski:JOb5kHsCJfFARvs6@cluster0.hbzqnbu.mongodb.net/?retryWrites=true&w=majority

# Optional (default : 'parse/cloud/main.js')
# ENV CLOUD_CODE_MAIN cloudCodePath

# Optional (default : '/parse')
 ENV PARSE_MOUNT '/parse'

EXPOSE 1337

# Uncomment if you want to access cloud code outside of your container
# A main.js file must be present, if not Parse will not start

# VOLUME /parse/cloud               

CMD [ "npm", "start" ]
