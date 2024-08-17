import routes from "$/src/connect";
import { fastifyConnectPlugin } from "@connectrpc/connect-fastify";
import { fastify } from "fastify";

async function main() {
  const app = fastify({
    http2: true,
  });

  await app.register(fastifyConnectPlugin, {
    routes,
  });

  await app.listen({ host: "localhost", port: 8080 });
  console.log("server is listening at", app.addresses());
}

void main();
