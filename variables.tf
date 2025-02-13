variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Access Key ID"
  type        = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Access Key"
  type        = string
}

variable "AWS_DEFAULT_REGION" {
  description = "AWS Region"
  default     = "ap-south-1"  # Mumbai region
}
