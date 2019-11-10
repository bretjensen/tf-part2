$jsonpayload = [Console]::In.ReadLine()

$json = ConvertFrom-Json $jsonpayload

$workspace = $json.workspace
$projectcode = $json.projectcode
$url = $json.url

$headers = @{ }
$headers.Add("querytext", "$workspace-$projectcode")
$response = Invoke-WebRequest -uri $url -Method Get -Headers $headers

Write-Output $response.content