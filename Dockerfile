FROM node:18

WORKDIR /app

COPY . .

EXPOSE 5000

CMD ["node", "-e", "require('http').createServer((req,res)=>res.end('Backend running')).listen(5000)"]
