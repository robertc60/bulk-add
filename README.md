# bulk-add
Script used to add all members of an office 365 tenant to a mail-enabled security group


This script build upon the functionality provided by https://github.com/cunninghamp/PowerShell-Stored-Credentials/blob/master/Functions-PSStoredCredentials.ps1

The script is used to bulk add all member of a tenant (excluding members with permission other than read-only) to a 
mail-enabled security group which can then be used to provide access to various resources within Office 365
