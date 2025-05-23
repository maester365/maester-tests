Describe "CISA" -Tag "MS.EXO", "MS.EXO.17.1", "CISA.MS.EXO.17.1", "CISA", "Security", "All" {
    It "CISA.MS.EXO.17.1: Microsoft Purview Audit (Standard) logging SHALL be enabled." {

        $result = Test-MtCisaAuditLog

        if ($null -ne $result) {
            $result | Should -Be $true -Because "safe link enabled."
        }
    }
}