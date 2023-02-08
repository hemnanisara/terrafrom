resource "aws_iam_user" "abc" {
  name = "sara"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "abc" {
  user = aws_iam_user.abc.name
}