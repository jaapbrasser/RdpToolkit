function New-RdpFile {
    param(
        $Path,
        # 
        $screen_mode_id,
        # 
        $use_multimon,
        # Determines the resolution width (in pixels) on the remote computer when you connect by using Remote Desktop Connection. This setting corresponds to the selection in the Display configuration slider on the Display tab under Options in RDC.
        [validaterange(200,4096)]
        [int] $desktopwidth = 1280,
        # Determines the resolution height (in pixels) on the remote computer when you connect by using Remote Desktop Connection. This setting corresponds to the selection in the Display configuration slider on the Display tab under Options in RDC.
        [validaterange(200,2048)]
        [int] $desktopheight = 720,
        # 
        $session_bpp,
        # 
        $winposstr,
        # Determines whether bulk compression is enabled when it is transmitted by RDP to the local computer. - 0: Disable RDP bulk compression - 1: Enable RDP bulk compression
        [validaterange(0,1)]
        [int] $compression = 1,
        # 
        $keyboardhook,
        # Indicates whether audio input/output redirection is enabled. - 0: Disable audio capture from the local device - 1: Enable audio capture from the local device and redirection to an audio application in the remote session
        [validaterange(0,1)]
        [int] $audiocapturemode = 0,
        # 
        $videoplaybackmode,
        # 
        $connection_type,
        # Determines whether or not to use automatic network bandwidth detection. Requires the option bandwidthautodetect to be set and correlates with connection type 7. - 0: Don't use automatic network bandwidth detection - 1: Use automatic network bandwidth detection
        [validaterange(0,1)]
        [int] $networkautodetect = 1,
        # Determines whether automatic network type detection is enabled - 0: Disable automatic network type detection - 1: Enable automatic network type detection
        [validaterange(0,1)]
        [int] $bandwidthautodetect = 1,
        # 
        $displayconnectionbar,
        # 
        $enableworkspacereconnect,
        # 
        $disable_wallpaper,
        # 
        $allow_font_smoothing,
        # 
        $allow_desktop_composition,
        # 
        $disable_full_window_drag,
        # 
        $disable_menu_anims,
        # 
        $disable_themes,
        # 
        $disable_cursor_setting,
        # 
        $bitmapcachepersistenable,
        # This setting specifies the name or IP address of the remote computer that you want to connect to. A valid computer name, IPv4 address, or IPv6 address.
        [string] $full_address,
        # Determines whether the local or remote machine plays audio. - 0: Play sounds on local computer (Play on this computer) - 1: Play sounds on remote computer (Play on remote computer) - 2: Do not play sounds (Do not play)
        [validaterange(0,2)]
        [int] $audiomode = 0,
        # Determines whether printers configured on the client computer will be redirected and available in the remote session when you connect to a remote computer by using Remote Desktop Connection. - 0: The printers on the local computer are not available in the remote session - 1: The printers on the local computer are available in the remote session
        [validaterange(0,1)]
        [int] $redirectprinters = 1,
        # 
        $redirectcomports,
        # 
        $redirectsmartcards,
        # Determines whether the clipboard on the local computer will be redirected and available in the remote session. - 0: Clipboard on local computer isn't available in remote session - 1: Clipboard on local computer is available in remote session
        [validaterange(0,1)]
        [int] $redirectclipboard = 1,
        # 
        $redirectposdevices,
        # Determines whether the client computer will automatically try to reconnect to the remote computer if the connection is dropped, such as when there's a network connectivity interruption. - 0: Client computer does not automatically try to reconnect - 1: Client computer automatically tries to reconnect
        [validaterange(0,1)]
        [int] $autoreconnection_enabled = 1,
        # Defines the server authentication level settings. - 0: If server authentication fails, connect to the computer without warning (Connect and don’t warn me) - 1: If server authentication fails, don't establish a connection (Don't connect) - 2: If server authentication fails, show a warning and allow me to connect or refuse the connection (Warn me) - 3: No authentication requirement specified.
        [validaterange(0,2)]
        [int] $authentication_level = 3,
        # 
        $prompt_for_credentials,
        # 
        $negotiate_security_layer,
        # 
        $remoteapplicationmode,
        # Determines whether a program starts automatically when you connect with RDP. To specify an alternate shell, enter a valid path to an executable file for the value, such as "C:\ProgramFiles\Office\word.exe". This setting also determines which path or alias of the Remote Application to be started at connection time if RemoteApplicationMode is enabled.
        [string] $alternate_shell,
        # 
        $shell_working_directory,
        # Specifies the RD Gateway host name.
        [string] $gatewayhostname,
        # Specifies when to use the RD Gateway server - 0: Don't use an RD Gateway server - 1: Always use an RD Gateway server - 2: Use an RD Gateway server if a direct connection cannot be made to the RD Session Host - 3: Use the default RD Gateway server settings - 4: Don't use an RD Gateway, bypass server for local addresses. Setting this property value to 0 or 4 are is effectively equivalent, but setting this property to 4 enables the option to bypass local addresses.
        [validaterange(0,4)]
        [int] $gatewayusagemethod,
        # Specifies or retrieves the RD Gateway authentication method. - 0: Ask for password (NTLM) - 1: Use smart card - 4: Allow user to select later
        [validateset(0,1,4)]
        [int] $gatewaycredentialssource = 0,
        # Specifies whether to use default RD Gateway settings. - 0: Use the default profile mode, as specified by the administrator - 1: Use explicit settings, as specified by the user
        [validaterange(0,1)]
        [int] $gatewayprofileusagemethod = 0,
        # Determines whether a user's credentials are saved and used for both the RD Gateway and the remote computer. - 0: Remote session will not use the same credentials - 1: Remote session will use the same credentials
        [validaterange(0,1)]
        [int] $promptcredentialonce = 1,
        # 
        $gatewaybrokeringtype,
        # 
        $use_redirection_server_name,
        # 
        $rdgiskdcproxy,
        # 
        $kdcproxyname,
        # Determines which local disk drives on the client computer will be redirected and available in the remote session. No value specified: don't redirect any drives * : Redirect all disk drives, including drives that are connected later DynamicDrives: redirect any drives that are connected later The drive and labels for one or more drives: redirect the specified drive(s)
        [string] $drivestoredirect
        # 
    )
}