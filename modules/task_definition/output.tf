# Output for task arn
output "task_arn" {
  value = aws_ecs_task_definition.task_definition.arn
}
# Output for task revsion
output "task_revision" {
  value = aws_ecs_task_definition.task_definition.revision
}