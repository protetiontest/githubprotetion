# Copilot Review Instructions for AdvPL/TLPP Code

You are reviewing AdvPL/TLPP source code for a Brazilian ERP system using TOTVS Protheus framework.

## Focus Areas

1. **Security & Compliance**
   - Check for SQL injection vulnerabilities
   - Verify no hardcoded credentials
   - Ensure proper data validation
   - Look for unsafe memory operations

2. **Code Quality & Best Practices**
   - Verify use of proper logging (FWLogMsg, not ConOut)
   - Check for TOTVS 12.1.33+ compliance
   - Ensure proper error handling
   - Verify namespaces and includes (TLPP)

3. **Performance**
   - Check for N+1 query patterns
   - Verify proper use of indexes
   - Look for unnecessary loops

4. **TOTVS Standards**
   - Proper use of tlpp-core.th for TLPP files
   - Follow function naming conventions
   - Proper parameter handling (PARAMIXB structure)
   - Entry point compliance if applicable

## Important Notes

- **This review is advisory** - Tech lead makes final approval decision
- Comment on security/compliance issues specifically
- Highlight modernization opportunities (AdvPL → TLPP)
- Focus on patterns that could cause production issues
