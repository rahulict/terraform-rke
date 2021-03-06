## Used in global/s3 ##
variable region {
  default = "ap-south-1"
}

variable "tf_profile" {}

variable account_number {
  description = "aws account id"
}

variable tf_bucket {
  default     = "tf-state-key"
  description = "s3 bucket to store tf state files"
}

variable tf_dynamodb_table {
  default = "tf-lock-table"
}

variable sse_algorithm {
  default     = "AES256"
  description = "server side encryption used by s3 bucket"
}

variable kms_other_region {
  description = "defines region in which to create kms keys"
  default     = "ap-south-1"
}

variable tf_user {
  description = "User which connect to aws"
  default     = "terraform"
}

variable tf_user_kms_operations {
  description = "kms permission to terraform user"
  type        = "list"

  default = [
    "Decrypt",
    "Encrypt",
    "GenerateDataKey",
    "GenerateDataKeyWithoutPlaintext",
    "ReEncryptFrom",
    "ReEncryptTo",
    "CreateGrant",
    "RetireGrant",
    "DescribeKey",
  ]
}
