# Docker escape using Pod Volume Mounts to access the nodes and host systems - Scenario

Bob's company has a lot of helpful applications for their IT admins. The same developers who built the Server Health Check application, also built a "Connectivity check" application. Well, they obviously re-used the code (who doesn't!) leading to an interesting vulnerability.

Instead of making a web request now, this application makes ping requests to a server that Bob specifies. And we all know the quickest way to make a ping request is to execute the `ping` command.

Web applications that execute OS commands using user input can fall prey to OS command injection vulnerabilities which would allow an attacker (our dear Bob in this case) to execute any accesible OS command through the user input fields. Oh and it's even more exciting if this application is running on docker!

Let's hack this box and see where we can go from here :)

## Tips

* Endpoint for your attack is `http://connectivity-check.student-uniquename.cloudsec.training`. Replace `uniquename` with your unique name
* Login to the application using `username: sysadmin` and `password: superpowers`