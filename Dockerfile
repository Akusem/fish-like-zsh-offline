FROM ubuntu:22.04

# Install git
# RUN apt-get install -y git vim

# Install zsh & it's extensions
COPY . /opt/zsh-offline
WORKDIR /opt/zsh-offline
RUN ./install.sh && rm -rf /opt/zsh-offline

# Change the default shell to Zsh for the current user
RUN usermod -s $(which zsh) $(whoami)

# Set the working directory
WORKDIR /app