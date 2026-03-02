# Use official Bun image
FROM oven/bun:1

WORKDIR /app

# Copy dependency files
COPY package.json bun.lock ./

# Install dependencies
RUN bun install

# Copy project files
COPY . .

# Build Next.js
RUN bun run build

EXPOSE 3000

CMD ["bun", "run", "start"]