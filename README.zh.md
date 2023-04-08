# tmphosts

tmphosts 是一个轻量级的临时反向代理解决方案，允许用户通过修改本地 hosts 文件轻松地将流量重新路由到不同的主机。基于 Nginx 构建，tmphosts 还无缝处理 HTTP 到 HTTPS 的重定向，确保安全的浏览体验。

## 先决条件

- 系统上已安装 Docker

## 入门

### 选项 1 (推荐)：使用 Docker Hub 上的预构建镜像

1. 运行 Docker 容器：

```
docker run -d --name tmphosts -p 80:80 -p 443:443 huangsen365/tmphosts
```

### 选项 2：在本地构建 Docker 镜像

1. 克隆仓库：

```
git clone https://github.com/huangsen365/tmphosts.git
```

2. 进入 tmphosts 目录：

```
cd tmphosts
```

3. 构建 Docker 镜像：

```
docker build -t tmphosts .
```

4. 运行 Docker 容器：

```
docker run -d --name tmphosts -p 80:80 -p 443:443 tmphosts
```

### 配置

1. 修改您的本地 hosts 文件，将条目指向运行 tmphosts 的公共 IP 地址（例如，`123.123.123.123 example.com`）。

2. 使用它们的 HTTPS 版本访问网站（例如，`https://example.com`）。

## 许可

本项目根据 MIT 许可证进行许可。有关更多信息，请参阅 [LICENSE](LICENSE) 文件。
