
$EMPTY=""
switch($env:term){
    "xterm-ghostty" {
        if ($Host.UI.RawUI.WindowSize.Width -gt 105) {
            fastfetch `
            --config "C:\ProgramData\fastfetch\config_extended.jsonc" `
            --logo "C:\ProgramData\fastfetch\logo.webp" `
            --logo-type kitty `
            --logo-height 20
        }
        else {
            fastfetch
        }
    }
    default {
        if ($WT_SESSION -ne $EMPTY) {
            if ($Host.UI.RawUI.WindowSize.Width -gt 105) {
                fastfetch `
                    --config "C:\ProgramData\fastfetch\config_extended.jsonc" `
                    --logo "C:\ProgramData\fastfetch\logo.webp" `
                    --logo-type sixel `
                    --logo-height 20
            }
            else {
                fastfetch
            }
        }
        else {
            fastfetch --config "C:\ProgramData\fastfetch\config_extended.jsonc"
        }
     }
}
