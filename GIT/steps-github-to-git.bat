1.6: Cloning Repo and Push/Pull - Git and GitHub for Poets

https://www.youtube.com/watch?v=yXT1ElMEkW8&list=PLRqwX-V7Uu6ZF9C0YMKuns9sLDzK6zoiV&index=6

0) make GITHUB rep WITH README file if you dont have one
1) go to GITHUB rep, and clone/https/copy
2) go to GITBASH
3) IF no readme file THEN must do GITBASH git init
	ELSE continue
	// clone straight from your fork or rep
   GITBASH git clone https://github.com/carlotonydaristotile/TEST.git
4) GITBASH cd test
5) GITBASH git status
6) NOTEPAD edit any file ex.main.html
7) GITBASH git status
	modified main.html
8) GITBASH git commit -a -m "method1"
	-a stands for all
	-m is method
   IF ERROR OCCURS ADD GITHUB USERNAME AND EMAIL
	 GITBASH git config --global user.name "CarloTonyDaristotile"
	 GITBASH git config --global user.email carlo.daristotile@gmail.com
   CHECK WITH
	 GITBASH git config --list
10) GITBASH git log
    TO SEE COMMIT HISTORY
11) Dont use VIM in GITBASH ( if you did type :q )
12) GITBASH git push ( to push your pc/terminal changes to github)
	GITBASH git pull ( to pull your pc/terminal changes to github)
	YOU WILL GET ERROR , SEE NEXT YOU NEED REMOTE.NAME REMOTE.BRANCH
13) GITBASH git remote
	return is origin, name of the remote
14) GITBASH git remote -v
15) git push origin master

