# Fish Like Zsh Offline Repository README

This repository provides a comprehensive setup for installing Zsh, Oh My Zsh, and various extensions in an offline environment, similar to the experience offered by the Fish shell. It includes everything you need to get started with Zsh in a Docker container, making it easy to replicate your development environment across different machines or share it with others. Below, you'll find instructions on how to use this repository, including setting up a test environment with Docker.

## Contents

- [Dependencies](#dependencies)
- [Installation](#installation)
- [In Docker installation](#Installation-in-a-Docker-container)
- [Zsh Aliases](#zsh-aliases)
- [Contributing](#contributing)

## Dependencies

The repository includes all necessary dependencies to install Zsh, Oh My Zsh, and selected extensions. These dependencies are packaged within the repository to ensure that the installation process can be completed offline.

It even contain Zsh package, but currently only for Ubuntu-22.04

## Installation

To install Zsh, Oh My Zsh, and the extensions listed in this repository, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/fish-like-zsh-offline.git
   cd fish-like-zsh-offline
   ```

2. Run the installation script:
   ```bash
   ./install.sh
   ```
   This script will use its local dependencies to install Zsh, Oh My Zsh, and the specified extensions.

## Installation in a Docker container

You may want to have a zsh terminal in a Docker container
you regurlaly use, in this case you can add the following lines in the `Dockerfile` of your container:

```Dockerfile
# Use an image based on ubuntu 22.04 if you want to install zsh from the repo dependencies
FROM ubuntu:22.04

# Install zsh & it's extensions
COPY . /opt/zsh-offline
WORKDIR /opt/zsh-offline
RUN ./install.sh && rm -rf /opt/zsh-offline

# Set the workir to the correct path
WORKDIR /app

# The rest of the setup
```

## Zsh Aliases

This repository also includes a set of predefined Zsh aliases to enhance your command-line experience. These aliases are automatically installed and sourced from the `deps/zsh_aliases` file.

Modify this file if you want to add aliases.

## Contributing

We welcome contributions to this project If you have improvements, bug fixes, or additional extensions you'd like to see included, please submit a pull request. Before contributing, please review our [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on submitting changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
