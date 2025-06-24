resource "local_file" "primer_archivo" {
    content = "hola mundo"
    filename = var.nombre_archivo
}

variable "nombre_archivo" {
    type = string
    default = "archivo.txt"
}