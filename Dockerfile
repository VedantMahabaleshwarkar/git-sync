FROM python:3.7.1-alpine3.8

# Install git
RUN apk add --update git && rm -rf /var/cache/apk/*

# Install click
RUN pip install click

# Copy script
COPY git-sync.py /usr/bin/git-sync.py
RUN chmod +x /usr/bin/git-sync.py

#
# Finalize the image
#

ENV HOME="/usr/local/app" \
    GIT_SYNC_DEST="/usr/local/app" \
    GIT_SYNC_REPO="repo.git"

WORKDIR ${HOME}

# Run git-sync with environment variables
ENTRYPOINT ["git-sync.py"]