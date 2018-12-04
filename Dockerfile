FROM python:3.7.1-alpine3.8

# install git
RUN apk add --update git && rm -rf /var/cache/apk/*

# install click
RUN pip install click

# copy script
COPY git-sync.py /git-sync.py
RUN chmod +x /git-sync.py

# run
ENV GIT_SYNC_DEST /git/
ENTRYPOINT ["./git-sync.py"]