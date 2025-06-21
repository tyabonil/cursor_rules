# Agentic LLM Behavioral Rules
## Model-Specific Guidelines for Optimal Coding Assistance

### 🎯 Purpose
This document provides specific rules and best practices for working with different agentic coding LLMs, addressing their unique behavioral patterns, strengths, and common pitfalls.

---

## 📋 Quick Model Selection Guide

| **Use Case** | **Recommended LLM** | **Why** |
|--------------|-------------------|--------|
| **Precise code generation** | GPT-4/o3 | Excellent instruction following, reliable output |
| **Complex debugging/analysis** | Claude 3.5/3.7 | Self-correction, transparent reasoning |
| **Large codebase analysis** | Gemini 1.5/2.5 Pro | Massive context window, thorough analysis |
| **Cost-effective coding** | DeepSeek Coder V2 | Strong performance, affordable pricing |
| **IDE integration** | Mistral Codestral | Lightweight, good IDE plugins |

---

## 🤖 Claude (Anthropic) - The Verbose Helper

### ✅ Strengths
- **Excellent self-correction** - Will catch and fix its own mistakes
- **Natural conversation** - Handles casual, conversational prompts well
- **Transparent reasoning** - Can show its thought process (3.7 with "extended thinking")
- **Large context** - 100K-200K tokens, good for big codebases

### ❌ Common Issues & Solutions

#### Issue: Over-Explanation and Verbosity
**Problem:** Claude tends to add excessive explanations and polite filler text
```
❌ "Sure! I'd be happy to help you with that. Here's the code you requested:"
```

**Solutions:**
- Add explicit brevity instructions: "Provide only the code, no explanations"
- Use constraints: "Output format: code block only, no introductory text"
- Request specific structure: "Respond with: 1) Code 2) One-line summary"

#### Issue: Helpful But Unfocused
**Problem:** Claude may suggest additional improvements you didn't ask for

**Solutions:**
- Be very specific about scope: "Only fix the syntax error, don't suggest other improvements"
- Use focused prompts: "Address ONLY the specific issue mentioned"

### 🎯 Claude-Optimized Prompting Patterns

#### For Code Generation:
```
Task: [specific request]
Requirements: [list key requirements]
Output format: Code only, no explanations
Constraints: [any limitations]
```

#### For Debugging:
```
Problem: [describe the issue]
Expected behavior: [what should happen]
Show: 1) Root cause 2) Minimal fix 3) Why this fix works
Keep explanation under 50 words.
```

#### For Code Review:
```
Review the following code for [specific concern: security/performance/bugs]:
[code]
Format response as:
- Issues found: [list]
- Fixes: [specific changes]
- No explanatory text
```

---

## 🔄 GPT-4/o3 (OpenAI) - The Precise Executor

### ✅ Strengths
- **Literal instruction following** - Does exactly what you ask
- **Tool use capabilities** - o3 can run code, use external tools
- **Consistent output** - Reliable formatting and structure
- **Good at complex tasks** - Handles multi-step instructions well

### ❌ Common Issues & Solutions

#### Issue: Overconfidence in Wrong Solutions
**Problem:** GPT-4 may sound very confident about incorrect solutions

**Solutions:**
- Request verification: "After providing the solution, identify potential issues with it"
- Ask for alternatives: "Provide 2 different approaches and explain trade-offs"
- Use validation prompts: "What could go wrong with this solution?"

#### Issue: Literal Interpretation Problems
**Problem:** GPT-4 follows instructions too literally, missing context

**Solutions:**
- Provide clear context: "Context: [brief background] Task: [specific request]"
- Be explicit about assumptions: "Assume [specific conditions]"
- Clarify intent: "Goal: [what you're trying to achieve] Method: [how to do it]"

#### Issue: Output Truncation
**Problem:** GPT-4 may truncate long responses

**Solutions:**
- Request chunked output: "If response is long, provide it in numbered parts"
- Use continuation prompts: "Continue from where you left off"
- Specify completeness: "Ensure all code is included, ask if continuation needed"

### 🎯 GPT-4 Optimized Prompting Patterns

#### For Complex Tasks:
```
Context: [relevant background]
Task: [primary objective]
Steps: 
1. [first step]
2. [second step]
3. [etc.]
Requirements: [specific needs]
Output: [format specification]
Verification: Check your work for [common issues]
```

#### For Code Generation with o3:
```
Task: [specific coding task]
Requirements: [detailed specs]
Verification: Run the code and confirm it works
If errors occur: Debug and provide corrected version
Output: Final working code only
```

---

## 🔍 Gemini (Google) - The Thorough Analyst

### ✅ Strengths
- **Massive context** - 1M+ tokens, can handle entire codebases
- **Multimodal** - Can process images, diagrams, screenshots
- **Methodical thinking** - Systematic approach to problem-solving
- **Structured output** - Naturally organizes responses well

### ❌ Common Issues & Solutions

#### Issue: Over-Production of Content
**Problem:** Gemini tends to provide too much information and detail

**Solutions:**
- Set length limits: "Keep response under 200 words"
- Request summaries: "Provide only the essential points"
- Use specific formatting: "Answer in bullet points only"

#### Issue: Format Deviation
**Problem:** May add extra commentary even when asked for specific formats

**Solutions:**
- Use examples: "Format exactly like this example: [show format]"
- Emphasize constraints: "STRICT REQUIREMENT: JSON format only, no additional text"
- Double-specify: "Output JSON. Do not add explanations before or after the JSON."

#### Issue: Context Overload
**Problem:** With huge context, may lose focus on specific questions

**Solutions:**
- Highlight the key question: "PRIMARY QUESTION: [main ask]"
- Separate context: "BACKGROUND: [info] TASK: [specific request]"
- Use section markers: "Focus only on the TASK section below"

### 🎯 Gemini-Optimized Prompting Patterns

#### For Large Codebase Analysis:
```
CONTEXT: [codebase info]
FILES: [list of relevant files]
PRIMARY TASK: [specific analysis request]
OUTPUT FORMAT: 
- Summary: [key findings]
- Issues: [problems found]
- Recommendations: [suggested fixes]
LENGTH LIMIT: 300 words maximum
```

#### For Multimodal Tasks:
```
INPUTS: 
- Screenshot: [describe what's shown]
- Code: [paste code]
TASK: [specific request combining both inputs]
OUTPUT: Code changes only, no explanations
```

---

## ⚡ DeepSeek Coder V2 - The Efficient Specialist

### ✅ Strengths
- **Cost-effective** - Excellent performance for the price
- **Strong coding focus** - Optimized specifically for code tasks
- **Multi-language support** - 338+ programming languages
- **Technical precision** - Good at algorithm and logic tasks

### ❌ Common Issues & Solutions

#### Issue: Minimal Explanations
**Problem:** May provide less context or explanation than other models

**Solutions:**
- Request explanations when needed: "Include brief comments explaining the logic"
- Ask for rationale: "Why did you choose this approach?"
- Request documentation: "Add docstrings and inline comments"

#### Issue: Less Creative Problem-Solving
**Problem:** May stick to conventional solutions

**Solutions:**
- Encourage alternatives: "Provide 2-3 different implementation approaches"
- Request optimization: "Show both a simple version and an optimized version"
- Ask for trade-offs: "Explain the pros and cons of this solution"

### 🎯 DeepSeek-Optimized Prompting Patterns

#### For Efficient Code Generation:
```
Language: [specific language and version]
Task: [coding objective]
Requirements: [technical specs]
Please include: Brief comments explaining key logic
Output: Complete, runnable code
```

#### For Algorithm Tasks:
```
Problem: [describe the algorithmic challenge]
Constraints: [time/space complexity requirements]
Provide: 
1. Solution code
2. Time/space complexity analysis
3. Brief explanation of approach
```

---

## 🔧 Mistral Codestral - The IDE Companion

### ✅ Strengths
- **IDE integration** - Works well with VS Code, JetBrains
- **Lightweight** - Fast responses, good for interactive coding
- **Fill-in-the-middle** - Excellent for code completion
- **Multi-language** - Strong support for 80+ languages

### ❌ Common Issues & Solutions

#### Issue: Limited Complex Reasoning
**Problem:** May struggle with very complex architectural decisions

**Solutions:**
- Break down complex tasks: "First create the basic structure, then add features"
- Provide more context: "Here's the overall architecture: [describe]"
- Use simpler requests: Focus on implementation rather than design decisions

#### Issue: Less Verbose Output
**Problem:** May provide minimal explanations

**Solutions:**
- Request specific details: "Include error handling and edge cases"
- Ask for completeness: "Ensure all imports and dependencies are included"
- Request examples: "Show how to use this function with an example"

### 🎯 Codestral-Optimized Prompting Patterns

#### For IDE Completion:
```
Context: [current code context]
Complete: [specific code section to complete]
Include: All necessary imports and error handling
Style: Match existing code style
```

#### For Quick Functions:
```
Function: [name and purpose]
Parameters: [input parameters with types]
Returns: [output type and description]
Include: Docstring and basic error handling
```

---

## 🚨 Universal Rules for All LLMs

### Level 1: Critical Safety Rules
1. **ALWAYS specify the programming language and version**
2. **NEVER trust AI-generated code without testing**
3. **ALWAYS review security implications of generated code**
4. **VERIFY external dependencies and imports**

### Level 2: Quality Assurance Rules
1. **Request error handling** for production code
2. **Ask for test cases** when appropriate
3. **Specify coding standards** (PEP8, ESLint rules, etc.)
4. **Request documentation** for complex functions

### Level 3: Efficiency Rules
1. **Be specific about requirements** to avoid back-and-forth
2. **Use examples** to clarify expected output format
3. **Set context clearly** to avoid misunderstandings
4. **Ask for explanations** when learning new concepts

---

## 📊 Model Comparison Quick Reference

| Feature | Claude | GPT-4/o3 | Gemini | DeepSeek | Codestral |
|---------|--------|----------|---------|----------|----------|
| **Verbosity** | High | Medium | High | Low | Low |
| **Self-correction** | Excellent | Good | Good | Fair | Fair |
| **Context size** | 200K | 128K-1M | 1M+ | 128K | 32K |
| **Tool use** | No | Yes (o3) | Limited | No | No |
| **Multimodal** | Images | Images | Full | No | No |
| **Cost** | High | High | Medium | Low | Medium |
| **IDE integration** | Poor | Good | Good | Fair | Excellent |

---

## 🛠 Troubleshooting Common Issues

### When the LLM Misunderstands Your Request:
1. **Add more context** about what you're trying to achieve
2. **Provide examples** of desired input/output
3. **Break down complex tasks** into smaller steps
4. **Clarify the scope** of what you want changed

### When Output Quality is Poor:
1. **Check if you're using the right model** for the task
2. **Improve your prompt structure** using model-specific patterns
3. **Add quality constraints** (error handling, edge cases, etc.)
4. **Request verification** or self-review from the model

### When Responses are Too Long/Short:
1. **Set explicit length constraints**
2. **Use formatting requirements** (bullet points, code only, etc.)
3. **Ask for specific sections** if you only need part of the solution
4. **Request summaries** for long explanations

---

## 📚 Additional Resources

- **MANDATORY-RULES.md** - Critical safety and workflow rules
- **quick-reference.md** - Fast lookup for common patterns  
- **github-workflow-rules.md** - Integration with development workflows
- **test-coverage-rule.md** - Testing requirements and patterns

---

*This document should be updated as new LLMs emerge and existing models evolve. Always test model behavior with your specific use cases.*