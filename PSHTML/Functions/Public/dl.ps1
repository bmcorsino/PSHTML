Function dl {
    <#
    .SYNOPSIS
    Create a dl tag in an HTML document.

    .EXAMPLE
    dl

    .EXAMPLE
    dl -Content {dt -Content "Coffe";dl -Content "Black hot drink"}

    .EXAMPLE
    dl -Class "class" -Id "something" -Style "color:red;"

    .NOTES
    Current version 3.2
        History: 
            2018.11.11;@ChristopheKumor;Updated to version 3.2
            2018.10.30;@ChristopheKumor;Updated to version 3.0
            2018.10.02;bateskevin;Updated to v2.
            2018.05.01;Removed reversed as this is not supported.
            2018.04.01;bateskevin;Creation.
    .LINK
        https://github.com/Stephanevg/PSHTML
    #>
    [CmdletBinding()]
    Param(

        [Parameter(Mandatory = $false, position = 0)]
        [AllowEmptyString()]
        [AllowNull()]
        $Content,

        [Parameter(Position = 1)]
        [String]$Class,

        [Parameter(Position = 2)]
        [String]$Id,

        [Parameter(Position = 3)]
        [String]$Style,

        [Parameter(Position = 4)]
        [Hashtable]$Attributes,

        [Parameter(Position = 5)]
        [string]$start

    )
    Process {

        $tagname = "dl"

        Set-HtmlTag -TagName $tagname -TagType NonVoid -Cmdlet $PSCmdlet
        
    }

}
