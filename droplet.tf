resource "digitalocean_droplet" "web" {
  image    = var.droplet_image
  name     = var.droplet_names[count.index]
  region   = var.do_region
  size     = var.droplet_size
  ssh_keys = var.droplet_ssh_keys
  tags     = ["webserver"]

  provisioner "remote-exec" {
    connection {
      type    = "ssh"
      user    = "root"
      host    = self.ipv4_address
      timeout = "3m"
    }

    inline = [
      "curl -fsSL https://get.docker.com | sh",
      "docker run -d -p 80:80 nginx"
    ]
  }

  count = length(var.droplet_names)
}
