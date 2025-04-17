FROM node:20

WORKDIR /app

# Everything will be copied here (at this stage there's no package.json — just the entrypoint)
COPY . .

RUN chmod +x entrypoint.sh

EXPOSE 5173

CMD ["/bin/bash", "./entrypoint.sh"]