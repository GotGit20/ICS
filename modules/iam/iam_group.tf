resource "aws_iam_group" "tfer--VI_Automation_QA" {
  name = "VI_Automation_QA"
  path = "/"
}

resource "aws_iam_group" "tfer--VI_Certify_Admin" {
  name = "VI_Certify_Admin"
  path = "/"
}

resource "aws_iam_group" "tfer--VI_Certify_Dev" {
  name = "VI_Certify_Dev"
  path = "/"
}

resource "aws_iam_group" "tfer--Vi_Infra_Admin" {
  name = "Vi_Infra_Admin"
  path = "/"
}
