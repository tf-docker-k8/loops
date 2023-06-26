### Loops

Loops are required when you want to create a resource multiple times based on a limit. We have 2 types of loops in terraform. Usually we iterate over a list or map and create the resources.

1. Count based loops based on count parameter
2. For each loop

### Locals

locals are like variables which can have some value. But it has some extra capability of running the expressions or functions and storing the results into a name to reuse wherever required. We can override variables but can't override locals.

```
locals{
    instance_type = "t3.micro"
}
```
```
resource "aws_instance" "your-wish" {
    ami = "ami-012b9156f755804f5"
    instance_type = local.instance_type
}
```

### Outputs

Terraform outputs block is useful to print the output values of the resources. for example, vpc_id of the vpc resource. <br/>

We can use outputs block in module development. Module users can catch the output values in their code and reuse.

### Data sources

Data sources in terraform are used to query the existing resource details or query the information provided by any provider.