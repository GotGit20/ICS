resource "aws_iam_group_policy_attachment" "tfer--VI_Automation_QA_AmazonEC2ContainerServiceRole" {
  group      = "VI_Automation_QA"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceRole"
}

resource "aws_iam_group_policy_attachment" "tfer--VI_Automation_QA_AmazonEC2FullAccess" {
  group      = "VI_Automation_QA"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--VI_Certify_Admin_AdministratorAccess" {
  group      = "VI_Certify_Admin"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--VI_Certify_Dev_AmazonEC2ContainerServiceRole" {
  group      = "VI_Certify_Dev"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceRole"
}

resource "aws_iam_group_policy_attachment" "tfer--VI_Certify_Dev_AmazonEC2FullAccess" {
  group      = "VI_Certify_Dev"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--VI_Certify_Dev_AmazonWorkMailFullAccess" {
  group      = "VI_Certify_Dev"
  policy_arn = "arn:aws:iam::aws:policy/AmazonWorkMailFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--VI_Certify_Dev_AmazonWorkMailMessageFlowFullAccess" {
  group      = "VI_Certify_Dev"
  policy_arn = "arn:aws:iam::aws:policy/AmazonWorkMailMessageFlowFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--Vi_Infra_Admin_AdministratorAccess" {
  group      = "Vi_Infra_Admin"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
