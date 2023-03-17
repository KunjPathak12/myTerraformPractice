
output Gmap {
  value = "hello age of ${var.yourName} is ${lookup(var.gmap,"k")}"
}

output nList {
  value = "${upper(var.nlist[0])}"
}

output pListm{
  value = "Printing the List at zeroth index is ${var.asList[0]} and first is ${var.asList[1]}"
}

output pList{
  value = "${join("-->",var.asList)}"
}

output typedVar {
  value = "your choosed number is, ${var.third}"
}

output printDef{
  value = "printing default val if not set otherwise, ${var.second}"
}

output printName {
  value = "Hello Welcome to terraform, ${var.yourName}"
}
//for non interactive mode use terraform plan -var "varName=input" to set
//during the runtime only and not the execution time.

output firstBlock{
  value = "Hello inital program in terraform"
}