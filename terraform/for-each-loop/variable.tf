variable "instance_type" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
  
}
variable "zone_id" {
    default = "Z0756253388J3DRHGPSFL"

}
variable "domain_name" {
    default = "vishruth.online"
}