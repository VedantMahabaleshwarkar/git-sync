# git-sync

`git-sync` is a command that periodically syncs a remote git repository to a
local directory.

This Python implementation is inspired by the Kubernetes module found here: https://github.com/kubernetes/contrib/tree/master/git-sync

## Usage

#### Python
Install/setup
```bash
pip install click
git clone https://github.com/majordomusio/git-sync.git
cd git-sync && chmod +x git-sync.py
```
To see available arguments:
```bash
./git-sync.py --help
```
Pass arguments at the command line:
```bash
./git-sync.py repo.git --dest /dest/path --branch branch --wait 30
```
or with environment variables:
```bash
GIT_SYNC_REPO=repo.git GIT_SYNC_DEST=/dest/path ./git-sync.py
```
