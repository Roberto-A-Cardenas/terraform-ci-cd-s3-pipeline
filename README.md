# 🚀 CI/CD Deployed Static Website on AWS S3 with Terraform + GitHub Actions

![Terraform](https://img.shields.io/badge/Terraform-IaC-blue?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-S3-orange?logo=amazon-aws)
![CI/CD](https://img.shields.io/badge/GitHub%20Actions-CI%2FCD-blue?logo=githubactions)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)

This project uses **Terraform** and **GitHub Actions** to automatically deploy a static website to **Amazon S3**, with optional **Slack notifications**, custom error pages, and embedded code easter eggs for anyone curious enough to look deeper 👀.

---

## 📸 Architecture Overview

- Static files (`index.html`, `error.html`) stored in S3
- S3 configured for static site hosting + public access
- GitHub Actions triggers:
  - `terraform init`, `validate`, `plan`, and `apply`
  - Optional: uploads content to S3
  - Optional: sends Slack notification
- Secrets stored securely in GitHub Secrets

---

## 🧱 Tech Stack

- **Terraform** – Infrastructure as Code
- **AWS S3** – Static website hosting
- **GitHub Actions** – CI/CD automation
- **Slack Webhooks** – Deployment alerts (optional)
- **HTML** – Simple static content
- **Easter Eggs** – For devs who read source 😄

---

## 📁 Project Structure

```
terraform-ci-cd-s3/
├── .github/
│   └── workflows/
│       └── terraform.yml
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── versions.tf
├── website/
│   ├── index.html
│   └── error.html
├── README.md
├── LICENSE
└── .gitignore
```

---

## ⚙️ GitHub Actions Workflow

- Auto-runs on `push` or manual `workflow_dispatch`
- Steps:
  - `terraform fmt`, `init`, `validate`, `plan`, and `apply`
  - (Optional) `aws s3 sync` to upload website content
  - (Optional) Slack notification using `SLACK_WEBHOOK_URL` secret

---

## 📦 GitHub Secrets Required

| Secret Name | Purpose |
|-------------|---------|
| `AWS_ACCESS_KEY_ID` | IAM key for Terraform + S3 access |
| `AWS_SECRET_ACCESS_KEY` | IAM secret |
| `SLACK_WEBHOOK_URL` | (Optional) Sends alerts to Slack channel |

---

## 🐣 Code Easter Eggs

Yes, there are hidden messages for devs who look closely in the code, pipeline and even the 404 page. Happy hunting.

---

## 🔗 Output

After pushing to `main`, you'll get:
- ✅ S3 bucket created
- ✅ Static site deployed
- ✅ (Optional) Slack notification
- ✅ Fun error page for broken links

---

## 🧪 Error Preview (404)

> If you mistype the URL, you'll be greeted with a custom message, complete with jokes and encouragement.

---

## 🧠 Skills Demonstrated

- CI/CD with GitHub Actions
- Terraform provisioning for S3
- Cloud-based static site hosting
- Secure credential management
- Automation and observability
- Creative coding + personality-driven touch

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.
