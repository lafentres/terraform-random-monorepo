resource "random_id" "whatever" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 9
}

output "random" {
  value = "workspace 1: ${random_id.whatever.hex}"
}
