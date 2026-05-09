# Day 52: Capstone – Web Dashboard with Chart

## Objective
Create a Flask route that serves an HTML page with a chart.

## Task 1 – Extend the dashboard to include a chart
Use Chart.js CDN and pass JSON data from your database.

## Template code (save as `templates/dashboard.html`)

```html
<html><body><canvas id="priceChart"></canvas>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
fetch("/api/rates").then(r=>r.json()).then(data=>{
    new Chart(ctx, { type: "line", data: { labels: data.ts, datasets: [{ label: "ZAR", data: data.rates }] } });
});
</script></body></html>
```

## Task 2 – Create flask app with `/api/rates` endpoint

## Screenshot Required
Show the chart rendered in your browser.
