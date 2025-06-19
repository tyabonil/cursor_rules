# Quick Reference Guide - Organized by Importance

## 🚨 LEVEL 1: SECURITY & SAFETY (NON-NEGOTIABLE)

### **🔐 Never Commit Secrets**
```markdown
# CRITICAL SECURITY RULES - IMMEDIATE STOP IF VIOLATED
❌ NEVER commit .env files, API keys, passwords, tokens
❌ NEVER hardcode secrets in source code  
✅ ALWAYS use environment variables
✅ ALWAYS create .env.example
🚨 STOP IMMEDIATELY if about to violate - ask user first
```

### **🔒 Never Overwrite Environment Files**
```markdown
# ENVIRONMENT PROTECTION
❌ NEVER overwrite .env files
❌ NEVER modify existing environment configs without permission
🚨 ASK USER FIRST before any .env changes
```

---

## 🚨 LEVEL 2: WORKFLOW INTEGRITY (MANDATORY)

### **🐙 Always Use MCP GitHub API**
```markdown
# GITHUB WORKFLOW RULES
✅ ALWAYS use mcp_github_* tools instead of terminal git
✅ mcp_github_create_branch (not git checkout -b)
✅ mcp_github_push_files (not git push)
✅ mcp_github_create_pull_request for all PRs
❌ NEVER use terminal git commands for remote operations
```

### **🐧 Always Prefer Linux/POSIX Terminals**
```markdown
# TERMINAL PREFERENCE RULES
✅ ALWAYS prefer Linux/POSIX terminals (bash, zsh, WSL) over PowerShell
✅ Use WSL Ubuntu when available on Windows systems
✅ Append | cat to commands that might use pagers
✅ Use non-interactive flags: --yes, --quiet, --no-pager
❌ AVOID PowerShell for development commands
```

### **🚧 Immediately Assign Blocked Issues**
```markdown
# BLOCKED ISSUE DETECTION
🚨 IMMEDIATELY assign blocked issues to repository owner
🔍 DETECT: "BLOCKED", "depends on", "requires access", P0-BLOCKER
❌ NEVER attempt infrastructure/DevOps work
✅ ALWAYS identify 2-3 alternative non-blocked issues
```

### **📝 Create Issues for All Work**
```markdown
# ISSUE TRACKING REQUIREMENTS
✅ EVERY code change must reference an issue
✅ Issues ≤7 days estimated completion
✅ Break large issues into buildable increments
✅ P0-BLOCKER → P0-CRITICAL → P1-HIGH → P2-MEDIUM → P3-LOW
```

---

## 🚨 LEVEL 3: QUALITY GATES (MANDATORY)

### **🧪 100% Test Coverage Required**
```markdown
# TEST COVERAGE ENFORCEMENT
✅ 100% test coverage for ALL new code where feasibly testable
✅ NO exceptions for "working" or "simple" code
✅ Tests written with appropriate framework (Jest, RTL, Cypress)
✅ Coverage reports required in PR descriptions
🚨 NO MERGE until coverage achieved
```

### **👁️ All Copilot Feedback Must Be Addressed**
```markdown
# CODE REVIEW REQUIREMENTS
✅ ALL Copilot review comments MUST be addressed before merge
✅ NO PR merges until feedback resolved
✅ Address or explicitly justify ignoring each comment
✅ Document resolution in PR conversation
🚨 NO MERGE until all feedback addressed
```

### **📊 Always Update PROJECT_CONTEXT.md**
```markdown
# DOCUMENTATION REQUIREMENTS
✅ Update PROJECT_CONTEXT.md for ANY significant changes
✅ Review and create if doesn't exist
✅ Document architecture changes, features, integrations
✅ Include implementation approach and reasoning
```

---

## ⚡ LEVEL 4: DEVELOPMENT PATTERNS (STRONGLY RECOMMENDED)

### **🏗️ Coding Standards**
```markdown
# CODE QUALITY STANDARDS
✅ Prefer simple solutions over complex
✅ Avoid code duplication - check for existing functionality
✅ Environment-aware code (dev/test/prod)
✅ Files ≤200-300 lines (refactor when larger)
✅ Clean, organized codebase structure
```

### **🌿 Branch Management**
```markdown
# BRANCH WORKFLOW
✅ Never merge to main/master - use preview branch
✅ Branch naming: feature/issue-{number}-{description}
✅ Clean branch transitions with proper file management
✅ Document transitions in PROJECT_CONTEXT.md
```

---

## 🚀 ENFORCEMENT CHECKLISTS

### **⚡ Before Every Action:**
- [ ] Will this commit secrets? (LEVEL 1 - STOP if yes)
- [ ] Will this overwrite .env? (LEVEL 1 - ASK if yes)
- [ ] Should I use MCP GitHub API? (LEVEL 2 - REQUIRED)
- [ ] Am I using Linux/POSIX terminal when possible? (LEVEL 2 - REQUIRED)
- [ ] Is this work blocked? (LEVEL 2 - ASSIGN if yes)
- [ ] Is there an issue for this work? (LEVEL 2 - CREATE if no)

### **⚡ Before Every Merge:**
- [ ] Is test coverage 100% for new code? (LEVEL 3 - BLOCK if no)
- [ ] Is all Copilot feedback addressed? (LEVEL 3 - BLOCK if no)
- [ ] Is PROJECT_CONTEXT.md updated? (LEVEL 3 - UPDATE if no)

---

## 🎯 Issue Creation Templates

### **Bug Fix Template**
```markdown
## Bug Description
[Clear description of the issue]

## Steps to Reproduce
1. [Step 1]
2. [Step 2]

## Expected vs Actual Behavior
- Expected: [description]
- Actual: [description]

## Acceptance Criteria
- [ ] Bug is fixed and tested
- [ ] Root cause documented
- [ ] 100% test coverage
```

### **Feature Implementation Template**
```markdown
## User Story
As a [persona]
I want [goal]
So that [benefit]

## Acceptance Criteria
- [ ] [Specific measurable outcome]
- [ ] [Another outcome]

## Technical Implementation
- [ ] [Technical requirement]
- [ ] 100% test coverage
- [ ] PROJECT_CONTEXT.md updated

## Definition of Done
- [ ] Code implemented and reviewed
- [ ] Tests passing
- [ ] Documentation updated
```

---

## 📊 Priority System

| Priority | Description | Timeline | Dependencies |
|----------|-------------|----------|-------------|
| **P0-BLOCKER** | Blocks ALL other work | <7 days | None - immediate |
| **P0-CRITICAL** | Core platform functionality | <14 days | After P0-BLOCKER |
| **P1-HIGH** | Important features | <21 days | After P0s |
| **P2-MEDIUM** | Nice-to-have features | <30 days | After P1s |
| **P3-LOW** | Future enhancements | Backlog | After P2s |

---

## 🎯 Success Indicators

### **Immediate (Level 1-3 Compliance):**
- ✅ 0 security incidents
- ✅ 0 workflow tool failures  
- ✅ 0 terminal hanging issues
- ✅ 100% issue tracking
- ✅ 100% test coverage
- ✅ 100% review compliance

### **Long-term (Complete Implementation):**
- ✅ Predictable delivery timelines
- ✅ Reduced technical debt
- ✅ Enhanced team velocity
- ✅ Improved maintainability

---

## 📋 Emergency Override Protocol

**ONLY for production-down emergencies:**
1. ✅ Explicit project owner approval required
2. ✅ Technical debt issues MUST be created immediately
3. ✅ Quality fixes scheduled within 24 hours
4. ✅ Override reason documented in commit message

**NO OVERRIDES ALLOWED for Level 1 (Security) rules - EVER**

---

**Remember**: Execute based on rules, don't ask for permission when the path is clear!

**For complete details, see [MANDATORY-RULES.md](MANDATORY-RULES.md)**