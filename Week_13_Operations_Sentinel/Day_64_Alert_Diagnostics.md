# Day 64: Alert Diagnostics – Investigate Before Fixing

## Objective
Learn how to inspect an alert, identify its current state, and collect evidence before changing a monitoring configuration.

## Task 1 – Open an existing alert
Open the alert rules or alert list in your existing monitoring system.

Choose an alert that you are authorized to inspect. Do not create or modify a production alert for this exercise.

## Task 2 – Record the alert state
Record the alert name, current state, evaluation time, and any displayed error.

Common states or conditions include:
- Firing: the alert condition is currently met.
- Normal or resolved: the condition is no longer met.
- Pending: the condition has been met but the configured waiting period has not completed.
- NoData: the query returned no usable data.
- Error: the alert evaluation encountered a problem.

Exact state names depend on the monitoring system and its configuration.

## Task 3 – Investigate the evidence
Check these items in order:
1. Read the complete alert message and query.
2. Confirm the selected time range.
3. Check whether the underlying metric is available.
4. Review the evaluation history and relevant application logs.
5. Compare the observed value with the configured threshold.

Do not assume NoData means the service is down. The metric source, query, or connection may be the problem.

## Task 4 – Document the diagnosis
Record the symptom, evidence, likely cause, and next safe action.

Do not silence an alert, change thresholds, or restart a service just to remove a warning. Follow the approved incident procedure if the alert concerns a production system.

## Screenshot Required
Show an alert's state and relevant diagnostic details. Hide credentials, tokens, and sensitive infrastructure information.

## Absolute Truth
An alert is a signal to investigate, not proof of a root cause.
