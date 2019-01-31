# Setting variables to utilize.
variable "env"
{
  description = "environment can be dev or prod"
}


variable "container_image"
{
  description = "This is the image for container"
  type = "map"
  default =
  {
    dev = "ghost:2"
    prod = "ghost:2"
  }
}

variable "container_name"
{
  description = "This is the name for container"
  type = "map"
  default
  {
    dev = "dev_ghostblog"
    prod = "prod_ghostblog"
  }
}

variable "int_port"
{
  description = "This is the internal port for container"
  type = "map"
  default
  {
    dev = "2368"
    prod = "2368"
  }
}

variable "ext_port"
{
  description = "This is the external port for container"
  type = "map"
  default
  {
    dev = "8080"
    prod = "80"
  }
}
