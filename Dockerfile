FROM hackinglab/alpine-base-hl:3.2
LABEL maintainer="Ivan Buetler <ivan.buetler@hacking-lab.com>"

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
