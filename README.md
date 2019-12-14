# Traefik-whoami

This is just a test drive for [traefik](http://traefik.io) proxy

simply run:

```terminal
make run
```

and

```terminal
make test
```

you should see a result similar to this:

> testing first route...  
Hostname: 387211c2484c  
IP: 127.0.0.1  
IP: 172.25.0.3  
RemoteAddr: 172.25.0.5:59770  
GET / HTTP/1.1  
Host: traefik.io  
User-Agent: curl/7.64.1  
Accept: */*  
Accept-Encoding: gzip  
X-Forwarded-For: 172.25.0.1  
X-Forwarded-Host: traefik.io  
X-Forwarded-Port: 80  
X-Forwarded-Proto: http  
X-Forwarded-Server: fa277b9a1a25  
X-Real-Ip: 172.25.0.1  
>  
> testing second route...  
Hostname: 3d452af8d251  
IP: 127.0.0.1  
IP: 172.25.0.4  
RemoteAddr: 172.25.0.5:60146  
GET /traefik HTTP/1.1  
Host: containo.us  
User-Agent: curl/7.64.1  
Accept: */*  
Accept-Encoding: gzip  
X-Forwarded-For: 172.25.0.1  
X-Forwarded-Host: containo.us  
X-Forwarded-Port: 80  
X-Forwarded-Proto: http  
X-Forwarded-Server: fa277b9a1a25  
X-Real-Ip: 172.25.0.1  
