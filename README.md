# SNI Proxy

## Introduction

When running a LAN Cache and overriding DNS entries, there are some services including the Origin launcher which will try and use HTTPS to talk to one of the hostnames that are being overridden. This breaks updates to the Origin client.

The solution is to run SNI Proxy on all IP addresses on the LAN Cache server. This accepts the HTTPS requests, looks at the host being requested and sends the request on to the correct server.

## Usage

Run the proxy container using the following to allow TCP port 443 (HTTPS) through the host machine:

```
docker run --name steamcache-sni -p 443:443 kixelated/steamcache-sni:latest
```

## Running on Startup

Follow the instructions in the Docker documentation to run the container at startup.
[Documentation](https://docs.docker.com/articles/host_integration/)

## Thanks

The SNI Proxy config and Dockerfile are from the [OpenSourceLAN origin-docker](https://github.com/OpenSourceLAN/origin-docker) project on GitHub.

## License

The MIT License (MIT)

Copyright (c) 2017 Jessica Smith, Robin Lewis, Brian Wojtczak, Jason Rivers

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

