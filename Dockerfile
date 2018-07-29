FROM alpine:latest

RUN apk --no-cache add dnsmasq \
    && echo "conf-dir=/etc/dnsmasq,*.conf" > /etc/dnsmasq.conf

EXPOSE 53/tcp 53/udp

ENTRYPOINT ["dnsmasq"]

# CMD ["-k", "--log-queries", "--log-facility=-", "--addn-hosts=/etc/hosts"]
