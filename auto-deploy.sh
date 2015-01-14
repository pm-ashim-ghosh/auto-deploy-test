#!/usr/bin/env bash

GIT=/usr/bin/git
ADSERVER_REPO=git@github.com:pm-ashim-ghosh/auto-deploy-test.git
# LOCAL_ADSERVER_REPO: Must be absolute path.
LOCAL_ADSERVER_REPO=/home/kartik.sura/auto-deploy-test

cd "$LOCAL_ADSERVER_REPO" && /
"$GIT" pull "$ADSERVER_REPO" master && /
"$GIT" checkout -f

# Deploy even if checkout fails.
cd "$LOCAL_ADSERVER_REPO/FastCGI_AdServer" && ./deploy.sh
