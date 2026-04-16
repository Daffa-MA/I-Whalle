# Security Policy

## Reporting Security Vulnerabilities

**Please do NOT report security vulnerabilities publicly.**

If you discover a security vulnerability, please email:
security@i-whalle.com

Include:
- Description of vulnerability
- Steps to reproduce
- Potential impact
- Suggested fix (if any)

We will respond within 48 hours and work with you to fix the issue.

## Security Best Practices

### For Admin Dashboard Users

1. **Use Strong Passwords**
   - At least 12 characters
   - Mix of uppercase, lowercase, numbers, symbols

2. **Enable 2FA** when available

3. **Keep Credentials Secure**
   - Don't share credentials
   - Use password managers
   - Rotate keys regularly

4. **Monitor Activity**
   - Check activity logs regularly
   - Review connected sessions
   - Report suspicious activity immediately

### For Developers

1. **Never commit secrets**
   - Use .env files
   - Keep private keys local
   - Review .gitignore

2. **Update dependencies**
   - Run `npm audit` regularly
   - Keep packages up-to-date
   - Monitor security advisories

3. **Use environment variables**
   - Store sensitive data in .env
   - Never hardcode secrets
   - Use Firebase for sensitive operations

4. **Input validation**
   - Validate all user inputs
   - Sanitize database queries
   - Use prepared statements

5. **HTTPS only**
   - Always use HTTPS in production
   - Configure Firebase security rules
   - Enable CORS properly

6. **Code review**
   - Review PRs carefully
   - Check for vulnerabilities
   - Follow security guidelines

## Security Updates

We recommend:
- Following security advisories from npm
- Updating to latest stable Node.js LTS
- Regularly auditing dependencies

## Supported Versions

| Version | Status | Security Updates |
|---------|--------|-----------------|
| 1.0.x   | Current | ✅ Yes |

## Additional Resources

- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [Firebase Security](https://firebase.google.com/support/guides/security-checklist)
- [Node.js Security Best Practices](https://nodejs.org/en/docs/guides/security/)

Thank you for helping keep I-Whalle secure!
