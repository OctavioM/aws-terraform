resource "aws_iam_user" "terraform_user" {
  name = "terraform-user"
}

resource "aws_iam_user_policy_attachment" "attach_admin_policy" {
  user       = aws_iam_user.terraform_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

output "terraform_user_arn" {
  value = aws_iam_user.terraform_user.arn
}
