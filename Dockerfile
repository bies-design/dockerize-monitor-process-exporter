FROM debian:stable-slim

# 安裝需要的工具
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    net-tools \
    iputils-ping \
    procps \
    unzip \
    git \
    && rm -rf /var/lib/apt/lists/*

# 從官方映像檔中把編譯好的執行檔複製過來
COPY --from=ncabatoff/process-exporter:v0.8.7 /bin/process-exporter /bin/process-exporter

EXPOSE 9256
ENTRYPOINT ["/bin/process-exporter"]