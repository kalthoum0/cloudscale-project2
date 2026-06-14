#cloud-config
package_update: true
package_upgrade: true

packages:
  - docker.io

runcmd:
  - systemctl enable --now docker
  - until systemctl is-active --quiet docker; do sleep 2; done
  - docker pull ${docker_image}
  - docker rm -f cloudscale-web || true
  - docker run -d --name cloudscale-web --restart unless-stopped -p 80:80 ${docker_image}