#!/bin/bash
cd /data/data/com.termux/files/home/THE-IMPERIAL-CYBER-BOOK

DB_CMD="mariadb -u root -p'RootStrongPass123!' -S $HOME/mysql_run/mysql.sock -D imperial_nexus -B -N -e"

# Query Wealth Data
WEALTH=$($DB_CMD "SELECT portfolio_value, true_valuation, last_updated FROM wealth_tracking ORDER BY id DESC LIMIT 1;" 2>/dev/null)
PV=$(echo "$WEALTH" | awk -F'\t' '{print $1}')
TV=$(echo "$WEALTH" | awk -F'\t' '{print $2}')
LU=$(echo "$WEALTH" | awk -F'\t' '{print $3}')

# Query Risk Data and format as JSON using jq
RISKS_RAW=$($DB_CMD "SELECT project_name, risk_level, status FROM municipal_governance_risks WHERE risk_level IN ('high','critical');" 2>/dev/null)
RISKS_JSON=$(echo "$RISKS_RAW" | jq -R -s -c 'split("\n") | map(select(length > 0) | split("\t") | {project_name: .[0], risk_level: .[1], status: .[2]})')

# Fallback if empty
if [ -z "$RISKS_JSON" ] || [ "$RISKS_JSON" = "null" ]; then RISKS_JSON="[]"; fi

# Construct final JSON
jq -n \
  --arg lu "${LU:-Unknown}" \
  --arg pv "${PV:-0}" \
  --arg tv "${TV:-0}" \
  --argjson risks "$RISKS_JSON" \
  '{last_updated: $lu, wealth: {portfolio_value: $pv, true_valuation: $tv}, risks: $risks}' > dashboard_data.json

echo "✅ dashboard_data.json generated successfully."
