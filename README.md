# Setting Up Project

## Main Dependencies used:
Flask
Flask SQLAlchemy
Flask CORS
pandas
WAMP (Windows) / Mamp (Mac) - which can be downloaded from https://www.mamp.info/en/windows/ (for MAMP) or https://sourceforge.net/projects/wampserver/ (for wamp)


## Steps to set up WAMP for windows:
Username: root
Password is empty


## Steps to set up MAMP for Mac:
Username: root
Password: root
Turn on WAMP/MAMP till you see a green light.
Load SingHealth.sql file from project folder into phpMyAdmin


## Setting up the environment - within Terminal -> New Terminal (Ctrl + Shift + `)
## It is highly recommended to put the "FYP-GoodHealth" folder within "C:\wamp64\www" folder, which becomes "C:\wamp64\www\FYP-GoodHealth" when you are using it.

Navigate to Project directory:
```cd Project```

Install the packages by running these commands one by one:
```python3 -m venv env```

```source env/bin/activate```

```pip install -r requirements.txt```

Following this command, successful packages installed should be as shown in `img/successful_pip_installation.png`

If any package such as pandas or flask cannot be installed, screenshot and let us know. 

Run backend/app.py under flask folder with commands: 
```python backend/app.py```

Within the terminal, you should see the status below, which means app.py is running:

 * Running on http://127.0.0.1:5011
 * Running on http://192.168.3.147:5011
Press CTRL+C to quit
 * Restarting with stat * Debugger is active!
 * Debugger PIN: xxx-xxx-xxx

Navigate to: http://localhost:5011/ to start using the app, assuming you placed the FYP-GoodHealth folder under "C:\wamp64\www" directory.


If any issues occur, please attach screenshots of the error and let us know. Thank you. :)
## THE END