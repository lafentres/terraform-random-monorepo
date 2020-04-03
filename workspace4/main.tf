resource "random_id" "whatever" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 12
}

output "random" {
  value = "workspace 4: ${random_id.whatever.hex}"
}
