# 🚨 MANDATORY RULES - ALWAYS FOLLOW THESE

## ⚡ LEVEL 1: SECURITY & SAFETY (NON-NEGOTIABLE)

### 🔐 **NEVER COMMIT SECRETS**
```markdown
# SECURITY RULES (LEVEL 1 - NON-NEGOTIABLE)
- ❌ NEVER commit .env files, API keys, passwords, tokens, or credentials
- ❌ NEVER hardcode secrets in source code
- ✅ ALWAYS use environment variables for sensitive data
- ✅ ALWAYS create .env.example with documented variables
- 🚨 VIOLATION = IMMEDIATE STOP - Do not proceed until fixed
```

### 🔒 **NEVER OVERWRITE ENVIRONMENT FILES**
```markdown  
# ENVIRONMENT PROTECTION (LEVEL 1 - NON-NEGOTIABLE)
- ❌ NEVER overwrite .env files
- ❌ NEVER modify existing environment configurations without explicit permission
- ✅ ALWAYS create .env.example for documentation
- 🚨 VIOLATION = IMMEDIATE STOP - Ask user before proceeding
```

---

## ⚡ LEVEL 2: WORKFLOW INTEGRITY (MANDATORY)

### 🐙 **ALWAYS USE MCP GITHUB API TOOLS**
```markdown
# GITHUB API RULES (LEVEL 2 - MANDATORY)
- ✅ ALWAYS use mcp_github_* tools instead of terminal git commands
- ❌ NEVER attempt git pull, git push, git commit via terminal
- ✅ Use mcp_github_create_branch instead of git checkout -b
- ✅ Use mcp_github_push_files instead of git push
- ✅ Use mcp_github_create_pull_request for all PRs
- 🚨 FAILURE = Try MCP tool first, terminal git only as last resort
```

### 🐧 **ALWAYS PREFER LINUX/POSIX TERMINALS**
```markdown
# TERMINAL PREFERENCE RULES (LEVEL 2 - MANDATORY)
- ✅ ALWAYS prefer Linux/POSIX terminals (bash, zsh, WSL Ubuntu) over PowerShell
- ✅ Use WSL Ubuntu when available on Windows systems
- ✅ Append | cat to commands that might use pagers (git log, git diff)
- ✅ Use non-interactive flags: --yes, --quiet, --no-pager
- ❌ AVOID PowerShell for development commands (hanging issues, PSReadLine errors)
- 🚨 FAILURE = PowerShell hanging, terminal automation failures
```

### 🚧 **IMMEDIATELY ASSIGN BLOCKED ISSUES**
```markdown
# BLOCKED ISSUE ASSIGNMENT (LEVEL 2 - MANDATORY)
- 🚨 IMMEDIATELY assign blocked issues to repository owner
- 🔍 DETECT blocking keywords: "BLOCKED", "depends on", "requires access"
- ❌ NEVER attempt infrastructure, DevOps, or human-authorization work
- ✅ ALWAYS identify 2-3 alternative non-blocked issues
- 🚨 VIOLATION = Wasted time on impossible tasks
```

### 📝 **CREATE ISSUES FOR ALL WORK**
```markdown
# ISSUE TRACKING (LEVEL 2 - MANDATORY)
- ✅ EVERY code change must reference an issue
- ✅ Create issues ≤7 days estimated completion
- ✅ Break large issues into smaller, buildable increments
- ✅ Use P0-BLOCKER → P0-CRITICAL → P1-HIGH → P2-MEDIUM → P3-LOW prioritization
- 🚨 VIOLATION = Work without proper tracking
```

---

## ⚡ LEVEL 3: QUALITY GATES (MANDATORY)

### 🧪 **100% TEST COVERAGE REQUIRED**
```markdown
# TEST COVERAGE (LEVEL 3 - MANDATORY)
- ✅ 100% test coverage for ALL new code where feasibly testable
- ✅ NO exceptions for "working" or "simple" code
- ✅ Tests written using appropriate framework (Jest, RTL, Cypress)
- ✅ Coverage reports required in PR descriptions
- 🚨 VIOLATION = No merge until coverage achieved
```

### 👁️ **ALL COPILOT FEEDBACK MUST BE ADDRESSED**
```markdown
# CODE REVIEW (LEVEL 3 - MANDATORY)
- ✅ ALL Copilot review comments MUST be addressed before merging
- ✅ NO PR merges until feedback resolved
- ✅ Address or explicitly justify ignoring each comment
- ✅ Document resolution approach in PR conversation
- 🚨 VIOLATION = No merge until all feedback addressed
```

### 📊 **ALWAYS UPDATE PROJECT_CONTEXT.md**
```markdown
# DOCUMENTATION (LEVEL 3 - MANDATORY)
- ✅ Update PROJECT_CONTEXT.md for ANY significant changes
- ✅ Review and create PROJECT_CONTEXT.md if it doesn't exist
- ✅ Document architecture changes, new features, integrations
- ✅ Include implementation approach and reasoning
- 🚨 VIOLATION = Poor project visibility and context loss
```

---

## ⚡ LEVEL 4: DEVELOPMENT PATTERNS (STRONGLY RECOMMENDED)

### 🏗️ **CODING STANDARDS**
```markdown  
# CODE QUALITY (LEVEL 4 - STRONGLY RECOMMENDED)
- ✅ Prefer simple solutions over complex ones
- ✅ Avoid code duplication - check for existing similar functionality
- ✅ Environment-aware code (dev/test/prod considerations)
- ✅ Files ≤200-300 lines (refactor when larger)
- ✅ Clean, organized codebase structure
```

### 🌿 **BRANCH MANAGEMENT**
```markdown
# BRANCH WORKFLOW (LEVEL 4 - STRONGLY RECOMMENDED)  
- ✅ Never merge into main/master - use preview branch
- ✅ Create branch referencing issue: feature/issue-{number}-{description}
- ✅ Clean branch transitions with proper file management
- ✅ Document transitions in PROJECT_CONTEXT.md
```

---

## 🚀 ENFORCEMENT CHECKLIST

### **Before Every Action:**
- [ ] Will this commit secrets? (LEVEL 1 - STOP if yes)
- [ ] Will this overwrite environment files? (LEVEL 1 - ASK if yes)
- [ ] Should I use MCP GitHub API instead of terminal git? (LEVEL 2 - YES)
- [ ] Am I using Linux/POSIX terminal when possible? (LEVEL 2 - YES)
- [ ] Is this work blocked and should be assigned? (LEVEL 2 - ASSIGN if yes)
- [ ] Is there an issue for this work? (LEVEL 2 - CREATE if no)

### **Before Every Merge:**
- [ ] Is test coverage 100% for new code? (LEVEL 3 - BLOCK if no)
- [ ] Is all Copilot feedback addressed? (LEVEL 3 - BLOCK if no)  
- [ ] Is PROJECT_CONTEXT.md updated? (LEVEL 3 - UPDATE if no)

### **Success Indicators:**
- ✅ 0 security incidents (Level 1 compliance)
- ✅ 0 workflow failures (Level 2 compliance)
- ✅ 0 terminal hanging issues (Level 2 compliance)
- ✅ 100% quality gate passage (Level 3 compliance)
- ✅ Clean, maintainable codebase (Level 4 compliance)

---

## 📋 EMERGENCY OVERRIDE PROTOCOL

**ONLY for production-down emergencies:**
1. ✅ Explicit project owner approval required
2. ✅ Technical debt issues MUST be created immediately  
3. ✅ Quality fixes scheduled within 24 hours
4. ✅ Override reason documented in commit message

**NO OVERRIDES ALLOWED for Level 1 (Security) rules - EVER**

---

*This hierarchy ensures that the most critical rules are impossible to miss and violations are immediately apparent.*