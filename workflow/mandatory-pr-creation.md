# MANDATORY PR CREATION - NEVER SKIP

## 🚨 CRITICAL WORKFLOW RULE

**AFTER EVERY SINGLE COMMIT, IMMEDIATELY CREATE THE PULL REQUEST. NO EXCEPTIONS. EVER.**

## ⚠️ THE PROBLEM THIS SOLVES

AI assistants get distracted by:
- Adding documentation to other repositories
- Updating multiple files
- Focusing on technical solutions
- Thinking about "what's next"

**NONE OF THAT MATTERS** - The PR MUST be created immediately after committing.

## 🚀 BULLETPROOF WORKFLOW

### **MANDATORY SEQUENCE - NEVER DEVIATE**

```markdown
1. CREATE/IDENTIFY ISSUE ✅
2. COMMENT ON ISSUE: "🚧 IN PROGRESS" ✅
3. CREATE BRANCH ✅
4. IMPLEMENT CHANGES ✅
5. COMMIT CHANGES ✅
6. ⚡ **IMMEDIATELY CREATE PR** ⚡ ← **NEVER SKIP THIS**
7. COMMENT ON ISSUE WITH PR LINK ✅
8. REQUEST REVIEW ✅
9. MERGE AFTER APPROVAL ✅
10. CLOSE ISSUE ✅
```

### **🔴 STEP 6 IS MANDATORY - NO EXCEPTIONS**

**The moment you commit changes, the very next action MUST be creating the PR.**

**STOP EVERYTHING ELSE. CREATE THE PR.**

## 💀 WHAT HAPPENS WHEN YOU SKIP THE PR

- Work exists on branch but isn't in review process
- Issue shows "in progress" but has no reviewable code
- Workflow integrity broken
- Changes can get "lost" or forgotten
- No code review happens
- Quality gates bypassed

## 🛡️ ENFORCEMENT MECHANISMS

### **Mental Checklist After Every Commit**
```markdown
- [ ] Did I just commit changes?
- [ ] Is there an active branch with commits?
- [ ] Have I created the PR yet?
- [ ] If NO PR exists → CREATE PR NOW
```

### **PR Creation Commands**
```bash
# IMMEDIATE ACTION after git commit:
mcp_github_create_pull_request(
  owner="owner",
  repo="repo", 
  title="Issue title (#number)",
  head="feature-branch-name",
  base="preview",
  body="Resolves #number"
)
```

### **No-Excuse PR Pattern**
```markdown
# Minimum viable PR body:
Resolves #123

# That's it. Create the PR. Add details later if needed.
```

## 🎯 COPY-PASTE ENFORCEMENT RULES

```markdown
# MANDATORY PR CREATION RULES - NO EXCEPTIONS
- **AFTER EVERY COMMIT → IMMEDIATELY CREATE PR**
- **NO WORK WITHOUT PR** - All code changes must have pull request
- **PR FIRST, DETAILS LATER** - Create PR with minimal info, enhance later
- **NEVER GET DISTRACTED** - Documentation, other repos, etc. come AFTER PR
- **MENTAL CHECK**: "Did I commit? Where's my PR?"
- **IF NO PR EXISTS AFTER COMMIT → CREATE PR NOW**
```

## ⚡ INSTANT PR CREATION TEMPLATE

**Copy-paste this immediately after any commit:**

```markdown
Title: [Issue description] (#[issue-number])
Body: Resolves #[issue-number]
Head: [current-branch-name]
Base: preview
```

**CREATE THE PR. WORRY ABOUT DETAILS LATER.**

## 🔄 WORKFLOW RECOVERY

**If you realize you skipped creating a PR:**

1. **STOP EVERYTHING ELSE**
2. **CREATE THE PR IMMEDIATELY**
3. **Comment on issue with PR link**
4. **Continue with normal workflow**

**DO NOT start new work until the PR exists.**

## 📊 SUCCESS METRICS

- **100% of commits have corresponding PRs**
- **0% "orphaned" branches without PRs**
- **Immediate PR creation** - within 30 seconds of commit
- **All work properly reviewed** - no code bypasses review

## 🎉 THE POINT OF PRS

**THE USER REVIEWS YOUR WORK IN THE PR BEFORE MERGING TO MAIN**

This is:
- **Quality control**
- **Knowledge sharing** 
- **Error catching**
- **Process integrity**
- **Professional development**

**EVERY COMMIT NEEDS REVIEW. EVERY REVIEW NEEDS A PR.**

---

**REMEMBER: The PR is not optional. It's not "nice to have." It's MANDATORY infrastructure for professional development.**

**COMMIT → PR → REVIEW → MERGE**

**NEVER SKIP THE PR.**