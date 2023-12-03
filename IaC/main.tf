provider "aws" {
  region = "eu-west-2"
}

resource "aws_ecs_cluster" "my-cluster" {
  name = "my-ecs-cluster"
}

resource "aws_ecs_task_definition" "my-task-definition" {
  family                   = "my-task-family"
  network_mode             = "bridge"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 10
  memory                   = 512

  container_definitions = <<TASK_DEFINITION
  [
    {
      "name": "abcde",
      "image": "<your-account-id>.dkr.ecr.<your-region>.amazonaws.com/your-repo-name:latest",
      "cpu": 10,
      "memory": 512 ,
      "essential": true,
    }
  ]
  TASK_DEFINITION
}

resource "aws_ecs_service" "my-ecs-service" {
  name            = "name"
  cluster         = aws_ecs_cluster.my-cluster.id
  task_definition = aws_ecs_task_definition.my-task-definition.arn
  launch_type     = "FARGATE"
  desired_count   = 1

  network_configuration {
    subnets         = [""] #put your subnet ID here
    security_groups = [""] #put your SG ID here
  }
}
