FROM node:22-alpine
WORKDIR /app
COPY package.json server.mjs engine.mjs content.mjs ./
COPY public ./public
ENV PORT=3000
ENV DATA_FILE=/data/rooms.json
EXPOSE 3000
CMD ["node", "server.mjs"]
