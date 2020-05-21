# VLC for Home Assistant

Run a VLC player on your Home Assistant installation.

Control it using the web interface or with the new [VLC Telnet component](https://www.home-assistant.io/components/vlc-telnet/) and control the player from your HA Automations!

Place your media files on the /share folder in your Home Assistant or play files from network locations, Internet included! Try for example online radios!

## Installation
1. Upload folder with files from this repository to `/addons` folder on your Home Assistant
2. Refresh the add-ons using the white arrow on the top right of the page
3. Search for `VLC` on the list and click on it
4. Click on the install button and wait! It could take a couple of minutes.
5. Configure a password for your telnet and web interface
6. Configure your audio output device.
7. Click on start!

If everything was OK, you can now:
* Control the player using the web interface, clicking the button "Open Web UI" and using a blank user with the password you configured.
* Control the player using the telnet interface, for which you can use the [VLC Telnet component](https://www.home-assistant.io/components/vlc-telnet/), configuring 127.0.0.1 (localhost) as the host, 4212 as the port and the configured password.

## Troubleshooting
* Make sure you select the correct audio output. If the audio doesn't work at first, change the configuration and restart the add on. It depends on your device.
* If you have any other problem, please fill an issue to this project. Please include the add on log and the system log to your report.
