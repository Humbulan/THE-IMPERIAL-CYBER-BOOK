# Day 65: Alert Notifications – Verify Delivery

## Objective
Understand how monitoring alerts become notifications and learn how to verify delivery without triggering a production incident.

## Task 1 – Review the notification path
In your existing monitoring system, identify:
- The alert rule that produces the event.
- The notification contact or destination.
- The routing policy that selects the destination.
- The delivery history or available logs.

The exact names and screens depend on the monitoring platform.

## Task 2 – Check the destination
Confirm that the intended destination is configured and that the account or service has permission to use it.

Do not print passwords, API tokens, webhook secrets, or private notification URLs in the terminal or screenshots.

## Task 3 – Send a controlled test
If your monitoring platform provides a test-notification feature, use it with a destination you are authorized to test.

If no test feature is available, use an approved test alert in a non-production environment. Do not deliberately trigger a real production incident.

## Task 4 – Verify delivery
Record:
- The time the test was initiated.
- The destination selected.
- Whether the platform reported success or failure.
- Whether the notification actually arrived.
- Any relevant error message.

A successful send response does not always prove that the recipient received or read the notification.

## Task 5 – Troubleshoot a failed notification
Check the routing policy, destination configuration, permissions, network connectivity, and delivery logs.

Change one setting at a time, and follow the system owner's change procedure.

## Screenshot Required
Show the test result or delivery status. Hide contact details, secrets, and private webhook URLs.

## Absolute Truth
An alert is not operationally complete until its notification path has been tested.
