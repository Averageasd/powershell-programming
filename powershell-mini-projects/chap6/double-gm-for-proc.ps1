# produce MemberDefinition objects
Get-Process | Get-Member 

# lists members of Member Definition objects (Equal, GetHashCode, GetType, ToString, Defintion, MemberType, Name, TypeName)
Get-Process | Get-Member | Get-Member