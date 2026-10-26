# Day 62: Prometheus Metrics – Inspect and Verify

## Objective
Learn how to inspect Prometheus-format metrics from a Node Exporter endpoint and verify that useful measurements are being exposed.

## Task 1 – Review Day 49
Open `Week_11_Monitoring/Day_49_Prometheus.md` and review how Node Exporter is installed and started inside the Alpine container.

Do not start another exporter if one is already running.

## Task 2 – Fetch the metrics
If your existing Node Exporter is running and reachable on the same environment, run:

`curl --max-time 5 -sS http://127.0.0.1:9100/metrics | head -20`

If the exporter runs inside Alpine or another isolated environment, run the request from an environment that can actually reach it. `127.0.0.1` always refers to the environment where the command runs.

## Task 3 – Interpret the output
Prometheus metrics commonly contain a metric name, optional labels, a value, and sometimes comment lines beginning with `#`.

Look for:
- Metric names related to CPU, memory, filesystem, or network.
- Numeric values following metric names.
- Errors indicating that the endpoint is unreachable.

An empty result does not prove that the exporter is healthy. Check the command's error output and the exporter's actual address.

## Task 4 – Check the HTTP response
Run this separately:

`curl -sS -o /dev/null -w 'HTTP %{http_code}\n' --max-time 5 http://127.0.0.1:9100/metrics`

Replace the address if your exporter is reachable elsewhere. A successful HTTP response means the endpoint responded; it does not guarantee every metric is correct.

## Screenshot Required
Show a short sample of the metrics output and the HTTP status. Hide private addresses or sensitive details where necessary.

## Absolute Truth
Metrics are useful only when their source, meaning, and collection status are understood.
