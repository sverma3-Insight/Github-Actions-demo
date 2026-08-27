variable "location" {
  type        = string
  description = "location for resources"

  validation {
    condition     = contains(["South India", "West India"], var.location)
    error_message = "Please choose a valid region : South India or West India"
  }
}