FROM hackinglab/alpine-base:3.2
MAINTAINER Ivan Buetler <ivan.buetler@compass-security.com>

#set enviromental values for certificate CA generation
ENV CN=squid.local \
    O=HL \
    OU=VULN.LAND \
    C=CH


# Add the files
ADD root /

RUN apk add --no-cache --update \
        vim \
        squid \
        openssl && \
	rm -rf /var/cache/apk/* 

# Expose the ports for tinyproxy
EXPOSE 3128


