# tmphosts

[English](README.md) | [中文](README.zh.md)

tmphosts is a lightweight, temporary reverse proxy solution that allows users to easily reroute traffic to different hosts by modifying their local hosts file. Built on Nginx, tmphosts also seamlessly handles HTTP to HTTPS redirection, ensuring a secure browsing experience.

## Prerequisites

- Docker installed on your system

## Getting Started

### Option 1 (Recommended): Use the pre-built image from Docker Hub

1. Run the Docker container:

```
docker run -d --name tmphosts -p 80:80 -p 443:443 huangsen365/tmphosts
```

### Option 2: Build the Docker image locally

1. Clone the repository:

```
git clone https://github.com/huangsen365/tmphosts.git
```

2. Change to the tmphosts directory:

```
cd tmphosts
```

3. Build the Docker image:

```
docker build -t tmphosts .
```

4. Run the Docker container:

```
docker run -d --name tmphosts -p 80:80 -p 443:443 tmphosts
```

### Configuration

1. Modify your local hosts file to add entries pointing to the public IP address where tmphosts is running (e.g., `123.123.123.123 example.com`).

2. Access the websites using their HTTPS versions (e.g., `https://example.com`).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
