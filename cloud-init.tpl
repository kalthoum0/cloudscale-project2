package_update: true
packages:
 - docker.io
runcmd:
 - systemctl enable docker
 - systemctl start docker
 - docker pull ${docker_image}
 - docker rm -f cloudscale-web || true
 - docker run -d --name cloudscale-web --restart unless-stopped -p 80:80 ${docker_image}
