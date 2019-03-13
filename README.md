# iniaAlert
   steps to start:
     1. Run the iniaAlert.bat
     2. The IniaAlert folder will be created in the same directory.
     3. Open the folder and run the IniaAlert.exe as admin to start the process
   Functionality:
     1. Until 6:00 pm the user is allowed to lock his system as usual.
     2. After 6:00 pm when the user tries to lock the system, A popup titled 'Inia Alert' stating 'Did you fill your timesheet?' will be           displayed.
	      a. From the popup, If  'YES' is clicked then it will allow the user to lock the machine, The popup will not be displayed when the            user tries to lock the pc for the day and it will be reset for the next day.
	      b. From the popup, If  'NO' is clicked then it will terminate the lock functionality and open 'https://iniapro.objectfrontier.com'            in the system default browser.
	      c. From the popup, If  'CANCEL' is clicked then it will terminate both lock functionality and also the popup
