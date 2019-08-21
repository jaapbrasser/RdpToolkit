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
        # 
        $networkautodetect,
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
        # 
        $full_address,
        # Determines whether the local or remote machine plays audio. - 0: Play sounds on local computer (Play on this computer) - 1: Play sounds on remote computer (Play on remote computer) - 2: Do not play sounds (Do not play)
        [validaterange(0,2)]
        [int] $audiomode = 0,
        # 
        $redirectprinters,
        # 
        $redirectcomports,
        # 
        $redirectsmartcards,
        # 
        $redirectclipboard,
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
        $alternate_shell,
        # 
        $shell_working_directory,
        # 
        $gatewayhostname,
        # 
        $gatewayusagemethod,
        # 
        $gatewaycredentialssource,
        # 
        $gatewayprofileusagemethod,
        # 
        $promptcredentialonce,
        # 
        $gatewaybrokeringtype,
        # 
        $use_redirection_server_name,
        # 
        $rdgiskdcproxy,
        # 
        $kdcproxyname,
        # 
        $drivestoredirect
        # 
    )
}