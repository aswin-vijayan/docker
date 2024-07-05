#!/bin/bash

# Parse the Trivy JSON report and convert it to HTML
trivy_report="trivy_report.json"
output_html="trivy_report.html"

jq -r '.[] | "<tr><td>" + .Target + "</td><td>" + .Type + "</td><td>" + .Vulnerability.Severity + "</td><td>" + .Vulnerability.PackageName + "</td><td>" + .Vulnerability.CurrentVersion + "</td><td>" + .Vulnerability.FixedVersion + "</td><td>" + .Vulnerability.Title + "</td></tr>"' "$trivy_report" > temp.html

# Create the HTML report with headers
echo '<!DOCTYPE html><html><head><title>Trivy Vulnerability Report</title></head><body><h1>Trivy Vulnerability Report</h1><table border="1"><tr><th>Target</th><th>Type</th><th>Severity</th><th>Package Name</th><th>Current Version</th><th>Fixed Version</th><th>Title</th></tr>' > "$output_html"

# Append the formatted data
cat temp.html >> "$output_html"

# Close the HTML file
echo '</table></body></html>' >> "$output_html"

# Clean up temporary file
rm temp.html

echo "HTML report generated as $output_html"

