# 9.1 How the Web Works
## Release 1: Research Web Servers
### What are some of the key design philosophies of the Linux operating system?
* It's open-source, free, no cost-per-license for machine. Lots of ports are available for use. It's widely used, so it plays well with OSX and Windows. It flexible, can handle multiple users and tasks.
* See [here](http://www.catb.org/esr/writings/taoup/html/ch01s06.html "Basics of the Unix Philosophy")

### In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
* It's part of a computer that is partitioned and run as a separate computer/server. You don't have rely on a hosting service. You are in control of the configuration. (It can run a different OS than your main computer.) You can use your terminal to access the server terminal. You don't need hardware. It's easy to maintain and inexpensive to start. If something goes wrong, you can rebuild. Opening ports is less risky because the only files available are the ones that were uploaded to the server.
* See [here](https://en.wikipedia.org/wiki/Virtual_private_server "Virtual private server from Wikipedia, the free encyclopedia")

### Why is it considered a bad idea to run programs as the root user on a Linux system?
* The root user has access to everything (super user role) and has no restrictions. It's more secure to have a separate user account. It lessens the chance of screwing something up (even from just a typo) and also makes the system users accountable for their actions.
* See [here](http://www.tldp.org/LDP/lame/LAME/linux-admin-made-easy/root-account.html "Linux Administration Made Easy")