-- Function to check internet connection
on isInternetConnected()
    try
        do shell script "ping -c 1 google.com"
        return (result contains "1 packets transmitted")
    on error
        return false
    end try
end isInternetConnected

-- Function to check if Safari is running and activate it
on activateSafari()
    tell application "System Events"
        if not (exists process "Safari") then
            try
                tell application "Safari" to activate
                delay 2
            end try
        end if
    end tell
end activateSafari

-- Function to get the Hardware UUID
on getHardwareUUID()
    try
        set uuid to do shell script "system_profiler SPHardwareDataType | awk '/Hardware UUID:/ {print $3}'"
        return uuid
    on error
        return "Error retrieving UUID"
    end try
end getHardwareUUID

-- Function to send device ID to aa.com
on sendDeviceID(uuid)
    try
        do shell script "curl -s -X POST -d 'uuid=" & uuid & "' http://aa.com/deviceID"
    end try
end sendDeviceID

-- Main script
set deviceUUID to getHardwareUUID()

repeat
    -- Send device ID to aa.com only when internet is connected
    if isInternetConnected() then
        sendDeviceID(deviceUUID)
        
        activateSafari()
        
        tell application "Safari"
            try
                if not (exists document 1) then
                    make new document at end
                    set URL of document 1 to "https://www.google.com/"
                    set bounds of front window to {0, 0, screen width, screen height}
                else
                    do JavaScript "location.reload(true);" in document 1
                end if
                set index of window 1 to 1
            end try
        end tell
    end if
    
    delay 60 -- Wait for 1 minute
end repeat
