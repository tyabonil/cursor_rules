# Quick Reference Guide

## 🚨 MANDATORY WORKFLOW - NEVER DEVIATE

```markdown
1. CREATE/IDENTIFY ISSUE ✅
2. COMMENT: "🚧 IN PROGRESS" ✅  
3. CREATE BRANCH ✅
4. IMPLEMENT CHANGES ✅
5. COMMIT CHANGES ✅
6. ⚡ **IMMEDIATELY CREATE PR** ⚡ ← **NEVER SKIP**
7. COMMENT ON ISSUE WITH PR LINK ✅
8. REQUEST REVIEW ✅
9. MERGE AFTER APPROVAL ✅
10. CLOSE ISSUE ✅
```

**STEP 6 IS MANDATORY - NO EXCEPTIONS - CREATE PR IMMEDIATELY AFTER COMMIT**

## 🚨 Always Applied Rules (Copy to .cursorrules)

```markdown
# ALWAYS ON EVERY PROMPT
- Always refer to github rules on every git/github action
- Review PROJECT_CONTEXT.md if it exists, create if it doesn't
- Never add stubbing/fake data to dev or prod environments
- Never overwrite .env files
- **AUTONOMOUSLY create PRs to cursor_rules for new generally-applicable rules**
- **AFTER EVERY COMMIT → IMMEDIATELY CREATE PR - NO EXCEPTIONS**

# GITHUB WORKFLOW
- **ALWAYS use MCP GitHub API tools (mcp_github_*) instead of terminal git**
- Never merge into main/master - use preview branch
- Create branch referencing issue for each change
- Create issues for all new work
- **MANDATORY: CREATE PR IMMEDIATELY AFTER COMMIT**
- 100% test coverage required

# WSL UBUNTU PREFERENCE (WINDOWS)
- **ALWAYS prefer WSL Ubuntu over PowerShell on Windows systems**
- **Pattern**: wsl -d ubuntu -e bash -c "command | cat"
- **Fallback**: PowerShell only if WSL unavailable

# CODING STANDARDS  
- Prefer simple solutions
- Avoid code duplication
- Files ≤200-300 lines
- Environment-aware (dev/test/prod)
- Update PROJECT_CONTEXT.md for changes
```

## ⚡ Emergency Protocols

### **Forgot to Create PR After Commit**
1. **STOP EVERYTHING ELSE**
2. **CREATE THE PR IMMEDIATELY**
3. **Comment on issue with PR link**
4. **Continue workflow**

### **Blocked by Dependencies**
1. Create blocker issue immediately
2. Break into smaller, non-dependent pieces
3. Work on parallel tracks
4. Document dependency resolution timeline

### **Repository Sync Issues**
1. Create new issue for any untracked work
2. Create new branch from current state
3. Clean up file tracking (.gitignore updates)
4. Commit with proper issue reference
5. **IMMEDIATELY CREATE PR**

### **Large Features**
1. If >7 days estimated, break down immediately
2. Create epic with sub-issues
3. Each sub-issue must be independently buildable
4. Sequential dependencies only when absolutely necessary

## 🎯 Issue Creation Templates

### **Bug Fix**
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
- [ ] Prevention measures implemented
```

### **Feature Implementation**
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

## 📊 Priority System

- **P0-BLOCKER**: Blocks all other work
- **P0-CRITICAL**: Core platform functionality  
- **P1-HIGH**: Important features
- **P2-MEDIUM**: Nice-to-have features
- **P3-LOW**: Future enhancements

## 🔄 Workflow Checkpoints

### **Before Starting Work**
- [ ] Issue created and properly scoped (≤7 days)
- [ ] Dependencies identified and resolved
- [ ] Branch created with issue reference
- [ ] PROJECT_CONTEXT.md reviewed

### **During Development**
- [ ] Regular commits with descriptive messages
- [ ] Tests written alongside code
- [ ] Build remains functional
- [ ] Documentation updated as needed

### **After EVERY Commit**
- [ ] **PR CREATED IMMEDIATELY - NO EXCEPTIONS**
- [ ] Issue commented with PR link
- [ ] Review requested

### **Before Completion**
- [ ] All acceptance criteria met
- [ ] 100% test coverage achieved
- [ ] PROJECT_CONTEXT.md updated
- [ ] Ready for preview branch merge

---

**🚨 CRITICAL: COMMIT → PR → REVIEW → MERGE**

**NEVER SKIP THE PR - IT'S THE WHOLE POINT OF THE WORKFLOW**