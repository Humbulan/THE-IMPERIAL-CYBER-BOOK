# Day 66: HTTP Latency – Measure Response Time

## Objective
Measure how long an HTTP endpoint takes to respond and record the result.

## Task 1 – Select an endpoint
Choose a local HTTP service that you own or are authorized to test. Use its actual address and port.

## Task 2 – Measure response time
Replace `PORT` with the correct port and change the path if needed.

`curl -sS -o /dev/null -w 'HTTP %{http_code} | Total: %{time_total}s | Connect: %{time_connect}s\n' --max-time 10 http://127.0.0.1:PORT/health`

If the service uses a different health path, use that path instead.

## Task 3 – Interpret the result
- HTTP status indicates the response received.
- Total time measures the complete request duration.
- Connect time measures the time taken to establish the connection.

A single request is only a sample. Network conditions, caching, and application workload can affect the result.

## Task 4 – Repeat and record
Run the measurement several times. Record the endpoint, status, response times, and test time.

Do not run aggressive load tests against production services.

## Screenshot Required
Show the command and several response-time measurements, with sensitive details hidden.

## Absolute Truth
Latency must be measured over time; one fast or slow request does not establish reliability.
