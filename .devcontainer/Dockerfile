# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.233.0/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version (use bullseye on local arm64/Apple Silicon): bullseye, buster
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# ** [Optional] Uncomment this section to install additional packages. **
# added build-essential & gdb
#RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#    && apt-get -y install --no-install-recommends build-essential gdb

RUN export DEBIAN_FRONTEND=noninteractive && apt-get -qy update && apt-get -qy upgrade
# for C++
RUN apt-get -qy install --no-install-recommends build-essential gdb
RUN apt-get -qy install neofetch
# I know, no point but I still want it
RUN apt-get -qy install vim