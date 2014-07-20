if (!(get-webconfiguration -Filter "System.WebServer/handlers/*" | where {$_.Name -eq "PHP"}))
{
    add-webconfiguration /system.webServer/handlers iis:\ -value @{
        name = "PHP"
        path = "*.php"
        verb = "*"
        modules = "FastCgiModule"
        scriptProcessor = "C:\php\php-cgi.exe"
    }
}
            
