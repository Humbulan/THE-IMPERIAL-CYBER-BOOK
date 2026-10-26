# Day 61: Service Health – Health Checks

## Objective
Learn how to check whether a local web service is responding and record its health status.

## Task 1 – Understand a health endpoint
A health endpoint is a URL that reports whether an application is responding. Common examples include `/health` and `/healthz`, but the correct path depends on the application.

Do not assume every service uses the same endpoint.

## Task 2 – Check an existing local service
Choose a local HTTP service that you own and are authorized to test.

Replace `PORT` with its actual port and use the health path documented by that service.

`curl -i --max-time 5 http://127.0.0.1:PORT/health`

If the service uses a different path, replace `/health`. If `curl` is unavailable, install it with `pkg install curl`.

## Task 3 – Interpret the result
- HTTP 200: the endpoint responded successfully.
- HTTP 404: the requested path was not found; check the documented route.
- HTTP 500: the application reported a server error.
- Connection refused: no service accepted the connection at that address and port.
- Timeout: the service did not respond within the time limit.

A successful HTTP response does not necessarily prove that every dependency is healthy.

## Task 4 – Record the result
Write down the service name, address, endpoint, HTTP status or error, and test time.

Do not publish credentials, access tokens, or sensitive internal information.

## Screenshot Required
Show the health-check command and its result in the terminal. Redact sensitive information.

## Absolute Truth
A reliable health check measures an observable condition; it does not guess.
