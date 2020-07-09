FROM kcratie/edgev-base:1.0
WORKDIR /root/
COPY ./edge-vpn_20.7.2_amd64.deb .
RUN apt-get install -y ./edge-vpn_20.7.2_amd64.deb && rm -rf /var/lib/apt/lists/* && apt-get autoclean

CMD ["/sbin/init"]
