# Exploiting Private Registry via Misconfiguration - Scenario

Bob's company has deployed a new mail application for them to use. Alas, this application is riddled with bugs! Most of which arise from default configurations and poor programming practices. There has been speculation that the internal team did not even remove the readme file for this application!

In any case, as an attacker you know that the application is deployed using docker. Can we use a vulnerability to read files that we are not meant to and see what the docker private registry looks like? Who knows what secrets you may find!

## Tips

* Endpoint for your attack is `http://mailbox-service.student-uniquename.cloudsec.training`. Replace `uniquename` with your unique name
* The login credentials for the application are `username: bob` and `password: bobmailbox`
* `README.md` exists
* The app is vulnerable to `LFI`