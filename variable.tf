variable "test-tag" {
    type = map(object({
      key =  string
      values = list(string)
    #   key2=string
    #   value2= list(string)
    }))
  
}
# variable "name_entity" {
#     type = string
  
# }
# variable "" {
  
# }