function Set-CASecurityDescriptor {
<#
.ExternalHelp PSPKI.Help.xml
#>
[CmdletBinding()]
	param(
		[Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
		[Alias('ACL')]
		[PKI.Security.AccessControl.CASecurityDescriptor[]]$InputObject,
		[switch]$RestartCA
	)
	process {
		foreach($ACL in $InputObject) {
			$ACL.SetObjectSecurity($RestartCA)
		}
	}
}