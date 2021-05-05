# Password Safe WebClient for Docker

**Warning: This repository is WORK IN PROGRESS! The code could change anytime including breaking changes!**

## Getting started

- Clone or download this repository to your server
- Edit the environment configuration `.env` and change the values to your needs
- Place your SSL certificates under `./certificates` called `cert.pem` for your fullchain certificate and `cert.pkey` for the corresponding private key.
- Copy the file called `WebClient.zip` from your Password Safe installation location (usually `C:\Program Files\Password Safe and Repository 8 Server`) into here
- Build and run the docker container using `docker compose up --build -d`
