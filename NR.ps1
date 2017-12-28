Login-AzureRmAccount

$sub1 = Get-AzureRmSubscription -SubscriptionId "96e98080-e35c-4963-a6e8-9748d470c233" # 'TSS Team Sandbox' # | Select-AzureRmSubscription

Select-AzureRmSubscription -SubscriptionObject $sub1[0].SubscriptionId

New-AzureRmResourceGroupDeployment -Name NRDeployment -ResourceGroupName rperum -TemplateFile template.json