# Day 49: Prometheus Node Exporter – Metrics Collection

## Objective
Export system metrics to a Prometheus server (simulated locally).

## Task 1 – Inside Alpine container, install node_exporter
`proot-distro login alpine`
`apk add node_exporter`
`node_exporter &`

## Task 2 – Fetch metrics from the exporter
`curl localhost:9100/metrics | head -20`

## Screenshot Required
Show the prometheus metrics output (first few lines).

## Absolute Truth
Standardized metrics enable professional monitoring stacks.
