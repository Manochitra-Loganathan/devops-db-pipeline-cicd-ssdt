# Auto-create ServiceNow ticket for DB release
$uri = "https://your-instance.service-now.com/api/now/table/change_request"
$body = @{
    short_description = "Automated DB Deployment Trigger"
    description       = "Deploying new SSDT schema to production via Azure DevOps."
    category          = "Change Request"
    priority          = "3"
} | ConvertTo-Json

Invoke-RestMethod -Uri $uri -Method Post -Headers @{
    "Authorization" = "Bearer $env:SNOW_TOKEN"
    "Content-Type"  = "application/json"
} -Body $body
