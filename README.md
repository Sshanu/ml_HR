Link for imgdata.dat
	https://drive.google.com/open?id=0B692TJyWNvPNeDNlTnI2QXVuMkE

For installing Git on windows:

	https://git-for-windows.github.io/
	
For using Sublime Text Editor as Editor in git:

	1)First edit your .bash_profile file which is in your User Directory by adding :- 
	
		alias subl="C:/Program\ Files/Sublime\ Text\ 3/sublime_text.exe"
		
	2)Type these commands in git bash:-
		git config --global core.editor "'C:/Program Files/Sublime Text 3/sublime_text.exe' -n -w"
		git config --global push.default upstream
		git config --global merge.conflictstyle diff3
		
	3) Restart the git bash
	
	
Clone the ml_HR repository:

	git clone https://github.com/Sshanu/ml_HR.git


For setting up repository:

	git init
	
Adding remote:

	git remote add <remote_name>  <url>
	
Checking remote:

	git remote
Saving changes:

	git add <file>
	git add -A             //For saving the whole the directory
	
Commiting File:

	git commit
	
For checking status:

	git status
For checking history of commits:

	git log
	git log -n <limit>     // For displaying only limit commits
	
For checking different branches:

	git checkout <branch name>
	
For Checking out file:
	
	git checkout <file name>

For Checking out commit:

	git checkout <commit>
	
For undoing the changes:

	git revert <commit>
	
For Fetching changes to local repository:

	git fetch <remote> <branch>
	
For pulling or Merging changes into local repository:

	git pull <remote> <branch>
	
For Pushing or Uploading Changes to Github:
	
	git push <remote> <branch>
	

