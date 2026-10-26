# Day 63: Grafana Dashboards – Read and Verify

## Objective
Learn how to inspect a Grafana dashboard and identify whether its panels are displaying useful, current data.

## Task 1 – Open your existing dashboard
Open the Grafana instance and dashboard that you already use and are authorized to access.

Do not assume a particular port or dashboard URL. Use your existing configuration.

## Task 2 – Inspect a panel
Choose one panel and record:
- Panel title and metric being displayed.
- Selected time range.
- Whether data is visible.
- Whether the panel shows an error or no-data message.

## Task 3 – Check the data source
Open the panel's query or inspect its data-source settings, if your account permits it.

Confirm that the panel uses the expected data source and query. Do not change production settings just to complete this exercise.

## Task 4 – Diagnose missing data
If a panel shows no data:
1. Confirm the selected time range includes the expected measurements.
2. Check whether the data source reports an error.
3. Verify that the metric exists in the source.
4. Check the query and labels or filters.
5. Record the exact error before making changes.

A no-data result is not automatically proof that the monitored service is down.

## Task 5 – Record your findings
Write down the panel name, time range, data-source status, observed result, and any error message.

Do not include passwords, tokens, or other secrets in screenshots or reports.

## Screenshot Required
Show an existing dashboard panel and its time range. If a panel has an error, capture the error without exposing sensitive information.

## Absolute Truth
A dashboard visualizes collected data; it cannot make missing or incorrect data reliable.
