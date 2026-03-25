# Security Incident Tracking System
### Healthcare Scenario | GRC Portfolio Project

---

## Scenario

Midwest Regional Health Network has experienced a pattern of recurring security 
incidents over the past quarter. Rather than treating each event in isolation, 
leadership asked for a structured analysis of incident data to identify which 
threat types are repeating, which assets are concentrating the most serious 
events, and where control failures are driving the pattern.

I built this SQL-based tracking system to simulate how a GRC or security 
operations team would structure, query, and analyze incident data to support 
risk-based decision making.

---

## What I Did

I designed a relational incident tracking table in SQL, populated it with 
realistic healthcare security incident data, and wrote analysis queries to 
surface the patterns that matter most to a GRC analyst: incident frequency 
by type, high-severity concentration by asset, and overall severity 
distribution across the environment.

The goal wasn't just to store incidents — it was to answer the question 
leadership actually asks: *are we seeing the same problems repeatedly, 
and where are our most critical exposures?*

---

## Key Findings

**Unauthorized Access Attempts and Malware are the most frequent incident 
types**, each occurring twice in the tracked period. For a healthcare 
organization, repeated unauthorized access attempts are a direct HIPAA 
concern — they indicate either a control failure or an active threat actor 
probing the environment.

**VPN Gateway leads all assets with 2 high-severity incidents.** This 
finding directly mirrors the open vulnerabilities identified in the 
vulnerability management dashboard — the same asset showing the most 
unresolved vulnerabilities is also generating the most serious incidents. 
That correlation is a meaningful signal that the VPN Gateway remediation 
backlog is already producing real events, not just theoretical risk.

**Endpoint Laptop, Email Server, and Customer Database each recorded 
1 high-severity incident.** The Email Server finding is particularly 
notable in a healthcare context — email is the primary phishing vector 
and a common path to PHI exposure.

**Privilege Misuse and Excessive Access appeared as distinct incident 
types.** These are process and governance failures, not just technical 
ones — they indicate that access control policies either don't exist or 
aren't being enforced consistently.

---

## My Recommendations (Priority Order)

1. **Investigate the VPN Gateway incidents immediately alongside the open 
vulnerability backlog.** Two high-severity incidents on an asset with 10 
unresolved vulnerabilities is not a coincidence — this asset needs an 
emergency remediation sprint, not a standard patch cycle.

2. **Treat Privilege Misuse and Excessive Access as a policy enforcement 
problem, not just a technical one.** The presence of both incident types 
suggests access is being granted without adequate review and not being 
revoked when roles change. A quarterly access review process would directly 
address this pattern.

3. **Add phishing-specific controls to the Email Server.** One high-severity 
email incident combined with Phishing appearing in the incident type 
breakdown indicates the current email security controls are insufficient. 
DMARC enforcement and user awareness training should be immediate priorities.

---

## Files

| File | Description |
|------|-------------|
| `incident_tracking.sql` | SQL script for table creation, data insertion, and analysis queries |
| `analysis.md` | Written summary of findings and interpretation |
| `incident-type-output.PNG` | Query output showing incident frequency by type |
| `incident-analysis-output.PNG` | Query output showing high-severity incidents by asset |

---

## Frameworks Referenced

- **NIST CSF** — Detect and Respond functions (incident detection and analysis)
- **HIPAA Security Rule** — Security Incident Procedures (§164.308(a)(6))
- **NIST SP 800-61** — Computer Security Incident Handling Guide

---

*This is a fictional scenario created for portfolio purposes.
No real patient data or organizational information was used.*
