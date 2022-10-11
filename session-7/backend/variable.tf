variable "env" {
    type = string
    descriprion = "This variable represents the environment such as dev, qa, and prod"
    default = "dev"
}

variable "publicly_accessible" {
    type = bool
    default = true
}