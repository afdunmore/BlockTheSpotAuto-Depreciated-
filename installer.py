import requests
import os
import os.path

r = requests.get("https://raw.githubusercontent.com/afdunmore/BlockTheSpotAuto/main/BlockTheSpotAuto.bat")
username = os.getlogin()
path = f"C:/Users/{username}/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/BlockTheSpotAuto.bat"

if os.path.exists(path) == 1:
    os.remove(path)
    


f = open(path, "w")
f.write(r.text)
f.close()
