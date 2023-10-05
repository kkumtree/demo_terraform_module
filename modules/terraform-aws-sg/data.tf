data "external" "current_ip" {
  program = ["bash", "-c", "curl -s 'https://ipinfo.io/json'"]
}