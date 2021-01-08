class Car {
    [string] $Manufacturer
    [string] $Model
}

class Person {
    [string] $FirstName
    [string] $LastName
}

function Get-Something {
    [CmdletBinding()]
    param (
        [Parameter(ParameterSetName = 'Car')]
        [switch] $Car,
        [Parameter(ParameterSetName = 'Person')]
        [switch] $Person
    )

    if ($PSCmdLet.ParameterSetName -eq 'Car') {
        [Car]::new()
    } elseif ($PSCmdLet.ParameterSetName -eq 'Person') {
        [Person]::new()
    }
}