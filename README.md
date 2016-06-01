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

	git remote add origin https://github.com/Sshanu/ml_HR.git
	
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
	
