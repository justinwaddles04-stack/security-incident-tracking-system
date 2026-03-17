CREATE TABLE security_incidents (
    incident_id INTEGER,
    incident_date TEXT,
    asset_name TEXT,
    incident_type TEXT,
    severity TEXT,
    vulnerability TEXT,
    status TEXT
);

INSERT INTO security_incidents VALUES
(1, '2026-01-03', 'Email Server', 'Phishing', 'High', 'User awareness gap', 'Open'),
(2, '2026-01-04', 'VPN Gateway', 'Unauthorized Access Attempt', 'High', 'No MFA enforcement', 'Open'),
(3, '2026-01-05', 'Shared Drive', 'Excessive Access', 'Medium', 'Poor permission review', 'In Progress'),
(4, '2026-01-06', 'Endpoint Laptop', 'Malware', 'High', 'Delayed patching', 'Open'),
(5, '2026-01-07', 'Customer Database', 'Data Exposure', 'High', 'Weak encryption controls', 'Open'),
(6, '2026-01-08', 'Admin Portal', 'Privilege Misuse', 'Medium', 'Shared admin credentials', 'In Progress'),
(7, '2026-01-09', 'VPN Gateway', 'Unauthorized Access Attempt', 'High', 'No MFA enforcement', 'Open'),
(8, '2026-01-10', 'Endpoint Laptop', 'Malware', 'Medium', 'Delayed patching', 'Resolved');

SELECT incident_type, COUNT(*) AS incident_count
FROM security_incidents
GROUP BY incident_type
ORDER BY incident_count DESC;

SELECT asset_name, COUNT(*) AS asset_incident_count
FROM security_incidents
GROUP BY asset_name
ORDER BY asset_incident_count DESC;

SELECT severity, COUNT(*) AS severity_count
FROM security_incidents
GROUP BY severity
ORDER BY severity_count DESC;

SELECT asset_name, COUNT(*) AS high_severity_count
FROM security_incidents
WHERE severity = 'High'
GROUP BY asset_name
ORDER BY high_severity_count DESC;
