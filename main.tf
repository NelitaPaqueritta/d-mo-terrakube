terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}
# test here number 2
resource "random_pet" "animal" {
  length    = 4
  separator = "-"
}

output "mon_animal_genere" {
  value = random_pet.animal.id
}
