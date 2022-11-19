resource "aws_ses_domain_dkim" "challenge_levi9_gmail_com" {
  domain = "challenge.levi9@gmail.com"
}

resource "aws_ses_domain_dkim" "gavrilovojteski37_gmail_com" {
  domain = "gavrilovojteski37@gmail.com"
}

resource "aws_ses_domain_identity" "challenge_levi9_gmail_com" {
  domain = "challenge.levi9@gmail.com"
}

resource "aws_ses_domain_identity" "gavrilovojteski37_gmail_com" {
  domain = "gavrilovojteski37@gmail.com"
}

resource "aws_ses_domain_mail_from" "challenge_levi9_gmail_com" {
  behavior_on_mx_failure = "UseDefaultValue"
  domain                 = "challenge.levi9@gmail.com"
  mail_from_domain       = ""
}

resource "aws_ses_domain_mail_from" "gavrilovojteski37_gmail_com" {
  behavior_on_mx_failure = "UseDefaultValue"
  domain                 = "gavrilovojteski37@gmail.com"
  mail_from_domain       = ""
}