resource "random_id" "whatever" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 17
}

output "random" {
  value = random_id.whatever.hex
}
