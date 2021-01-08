Import-Module -Name ./cars.psm1 -Force

Describe "Cars" {
    It "Should return a Car" {
        (Get-Something -Car).GetType() | Should -be Car
    }
    It "Should return a Person" {
        (Get-Something -Person).GetType() | Should -be Person
    }
}