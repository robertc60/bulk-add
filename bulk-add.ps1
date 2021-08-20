. C:\scripts\Functions-PSStoredCredentials.ps1
# pulls secure credential from the key path
$Credential = Get-StoredCredential -UserName tenant admin
# connect to msol
Connect-MsolService -Credential $Credential
# gets all users and filters out users with permission to create calendar items
$users = Get-Mailbox -ResultSize unlimited -Filter {displayname -ne "Admin Users"} | Select UserPrincipalName
#loops through users
foreach ($user in $users){
    # gets the user
    $member = Get-MsolUser -UserPrincipalName $user.UserPrincipalName
    # adds member to the mail enabled security group
    Add-DistributionGroupMember -Identity "test" -Member $member.DisplayName
}