variable name {
  description = "A unique name for the rule, required by GCE"
}

variable description {
  description = "Description for the rule"
  default = ""
}

variable priority {
  description = "Priority of the rule: ranges from 0-65535. Lower numbers have higher priority."
  default     = "1000"
}

variable network {
  description = "The name of the network to attach this firewall to"
}

variable protocol {
  description = "The name of the protocol to allow"
}

variable ports {
  description = "List of ports and/or port ranges to allow. This can only be specified if the protocol is TCP or UDP"
  type        = "list"
}

variable source_ranges {
  description = "A list of source CIDR ranges that this firewall applies to. Can't be used for EGRESS"
  type        = "list"
}

variable target_tags {
  description = "A list of target tags"
  type        = "list"
  default     = []
}
