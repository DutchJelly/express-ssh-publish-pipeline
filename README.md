# Simple pipeline for SSH Docker CI/CD

The goal of this project is to showcase what a simple CI/CD pipeline looks like, and to find shortcomings that have been solved by orchestrators like Kubernetes in combination with image version management like the docker registry.

## How it works

- Load environment variables to .env file based on branch name (main or staging)
- Build docker image from Dockerfile with the tagname based on the branch name
- Save this image to a file with filename based on branch name
- `scp` the image over to a server with private and public key stored in secrets
- `ssh` to remove old running container
- `ssh` to spin up new container with new image, exposing the port specified in the environment of the branch the action runs in


## Shortcomings

- No easy configuration of exposed ports or other docker runtime variables.
- No easy and modular deployment of different docker images or services.
- No rollbacks or restarting of images when they fail.
- No version history of images.
- Sudo password needs to be stored in Github secrets, making it risky to give people access to the workflow.
