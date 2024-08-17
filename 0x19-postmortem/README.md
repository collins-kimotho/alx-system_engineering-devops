# Issue Summary
## Duration of Outage:
Start: August 15, 2024, 10:00 AM EAT
End: August 15, 2024, 12:30 PM EAT
## Impact:
Our e-commerce platform experienced a significant slowdown, affecting the checkout process. Users reported delays in processing payments and loading order confirmation pages. Approximately 60% of users were affected, leading to a 40% drop in successful transactions during the outage.
## Root Cause:
The root cause was a misconfigured database index, which led to inefficient query execution and high database load.
## Timeline
*	10:00 AM: Issue detected via monitoring alert indicating high database CPU usage.
*	10:05 AM: Engineering team notified and began investigation.
*	10:10 AM: Initial assumption was a spike in user traffic; scaled up web servers.
*	10:30 AM: Realized web server scaling did not resolve the issue; shifted focus to database.
*	10:45 AM: Database queries analyzed; identified slow queries causing high CPU usage.
*	11:00 AM: Misleading path: suspected a recent code deployment; rolled back changes.
*	11:30 AM: Rollback did not resolve the issue; escalated to database team.
*	12:00 PM: Database team identified misconfigured index; applied correct indexing.
*	12:30 PM: Issue resolved; database performance normalized.
## Root Cause and Resolution
### Root Cause:
The issue was caused by a misconfigured database index on the orders table. A recent schema change introduced a new column, but the corresponding index was not updated. This led to inefficient query execution, causing high CPU usage and slow response times.
### Resolution:
The database team identified the missing index and applied the correct indexing to the orders table. This optimized the query execution plan, reducing CPU usage and restoring normal performance.
## Corrective and Preventative Measures
### Improvements:
*	Enhance database schema change review process.
*	Implement automated index validation tools.
*	Improve monitoring and alerting for database performance metrics.
### Tasks:
1.	Patch Database Indexing: Review and update all database indexes to ensure they are correctly configured.
2.	Automated Index Validation: Develop and deploy tools to automatically validate database indexes after schema changes.
3.	Enhanced Monitoring: Add detailed monitoring on database query performance and CPU usage.
4.	Review Process: Establish a more rigorous review process for database schema changes, including peer reviews and automated checks.
5.	Training: Conduct training sessions for the engineering team on best practices for database indexing and performance optimization.
## Conclusion
While the outage was a challenging experience, it provided valuable lessons on the importance of thorough database management and monitoring. By implementing the corrective measures outlined above, we aim to prevent similar issues in the future and ensure a smoother experience for our users.


![alt text](image.png)