** Security Incident Tracking System

** Overview
This project is a SQL-based system for tracking and analyzing cybersecurity incidents to identify recurring patterns, high-risk assets, and areas requiring remediation.

** Objective
The objective of this project is to simulate how organizations collect and analyze security incident data to identify trends, assess risk exposure, and support data-driven decision-making.

** Tools Used
- SQL

** Project Components
- `incident_analysis.sql` – SQL script for table creation, data insertion, and analysis queries
- `incident-type-output.png` – incident frequency analysis
- `high-severity-assets-output.png` – high-severity incident concentration by asset

** Key Features
- Tracks and categorizes security incidents across systems and assets
- Analyzes incident frequency by type to identify recurring threats
- Identifies high-risk assets based on incident concentration
- Evaluates severity distribution to understand overall risk exposure

** Methodology
Incident data is structured in a relational table and analyzed using SQL queries. The analysis focuses on identifying trends across incident types, affected assets, and severity levels. Additional queries isolate high-severity incidents to support prioritization of critical risks.

** Example Insights
- Unauthorized access attempts and malware incidents were the most frequent security events
- VPN Gateway and Endpoint devices showed the highest concentration of incidents
- High-severity incidents represented the majority of recorded activity
- Critical risk exposure was concentrated in key infrastructure systems

** Example Outputs

** Incident Type Analysis
Displays the most frequent types of security incidents.

** High-Severity Incidents by Asset
Highlights which assets have the highest concentration of critical incidents, supporting risk-based prioritization.

** Outcome
This project demonstrates the ability to analyze structured security data using SQL, identify trends and risk concentrations, and generate actionable insights to support incident management and cybersecurity risk reduction.
