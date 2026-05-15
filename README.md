# dockerize-monitor-process-exporter
process-exporter 原本的官方/社群版本是極致精簡的版本，但不利於對於自身進行可靠度監控

## enhance
> support application as below *.pkg <br/>
```text
    curl 
    wget 
    net-tools
    iputils-ping 
    procps 
    unzip 
    git 
```

# build
```bash
$ docker build -t biescloudtechsupport/process-exporter:debian-slim-v0.8.7 .
```

# upload
```bash
$ docker push biescloudtechsupport/process-exporter:debian-slim-v0.8.7
```