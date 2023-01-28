#include <iostream>
#include <fstream>

using namespace std;

int main(){

    //Gets username
    char* user = getenv("username");
    string userStr = string(user);

    //File Path
    string path = ("C:Users/" + userStr + "/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/BlockTheSpotAuto.bat");

    //Delete Previous file
    ofstream remFile(path);
    remFile.clear();
    remFile.close();

    //Creates File
    ofstream MyFile(path);

    //Inputs file data
    MyFile << "@echo off \n";
    MyFile << "if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start \"\" /min \"%~dpnx0\" %* && exit \n";
    MyFile << "@echo off \n";
    MyFile << "C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -Command \"&{[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12}; \"\"\"\"& { $((Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/afdunmore/BlockTheSpotAuto/master/install.ps1').Content)} -confirm_uninstall_ms_spoti -confirm_spoti_recomended_over -podcasts_on -cache_off -block_update_off -start_spoti \"\"\"\" | Invoke-Expression\" \n";
    MyFile << "exit";

    MyFile.close();

    return 0;
}