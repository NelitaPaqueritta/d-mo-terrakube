terraform {
  cloud {
    hostname     = "terrakube-api.platform.local"
    organization = "TestOrg"

    workspaces {
      name = "d-mo-terrakube"
    }
  }

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

# test here number 3
resource "random_pet" "animal" {
  length    = 2
  separator = "-"
}

output "mon_animal_genere" {
  value = random_pet.animal.id
}
