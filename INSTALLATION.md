# 🚀 MANDATORY Rules - Local Installation Guide

## 📋 Overview

Install the MANDATORY Rules pre-commit and commit-msg hooks to ensure all commits are compliant with the rules defined in this repository.

## ⚡ Quick Installation (Recommended)

Run this script in your repository to automatically install the hooks:

```bash
# Download and run the installation script
curl -sSL https://raw.githubusercontent.com/tyabonil/cursor_rules/main/install-rule-checker.sh | bash
```

This script will copy the necessary hooks to your local `.git/hooks` directory and make them executable.

---

## 🔧 Manual Installation

If you prefer to install the hooks manually, follow these steps:

### 1. **Copy Hook Files**

Copy the following files from the `hooks` directory in this repository to your local `.git/hooks` directory:

- `commit-msg-validator.sh` -> `.git/hooks/commit-msg`
- `pr-health-check.sh` -> `.git/hooks/pre-commit`
- `security-pre-commit.sh` -> `.git/hooks/pre-commit`

**Note:** You will need to combine the `pr-health-check.sh` and `security-pre-commit.sh` scripts into a single `pre-commit` file.

### 2. **Make Hooks Executable**

Run the following command to make the hooks executable:

```bash
chmod +x .git/hooks/commit-msg
chmod +x .git/hooks/pre-commit
```

---

## 🧪 Using the Hooks

Once installed, the hooks will run automatically before each commit and when you edit a commit message.

### **`pre-commit` Hook**

This hook runs before you type a commit message. It performs the following checks:

- **PR Health Check**: Checks for stale pull requests and compliance violations.
- **Security Pre-Commit**: Scans for secrets in your staged files.

If any of these checks fail, the commit will be aborted.

### **`commit-msg` Hook**

This hook runs after you have entered a commit message. It validates that your commit message follows the Conventional Commits specification.

If your commit message is not valid, the commit will be aborted.

---

## 💡 Customization

The behavior of the hooks can be customized by editing the `config/rules.json` file. This file allows you to configure the following:

- **Secret Detection Patterns**: Add or remove patterns to detect secrets.
- **File Count Limits**: Adjust the maximum number of files per pull request.
- **And more...**

---

**Installation complete! Your local environment is now set up to enforce the MANDATORY rules. 🎉**
