# Attacking Kubernetes Cluster Metadata using SSRF vulnerability - Scenario

Applications hosted on the cloud can lead to a whole slew of other problems. Especially, vulnerable ones :)

Bob's company has an application deployed on GCP that allows you to quickly check the health of other web applications on the Internet. The application uses a server side function to connect to the specified URL and let's Bob know if the web app is functioning as expected or not.

Well, the most common problem applications like this face is not sanitizing user input which allows Bob to specify any endpoint (and of course any port) to make the server perform a GET request.

This is bad, yes, but it can be worse for applications on the cloud as you can query the helpful metadata endpoints. That is whole playground for you to explore. Let's see what we can do with this scenario!

## Tips

* Endpoint for your attack is `http://server-health.student-uniquename.cloudsec.training`. Replace `uniquename` with your unique name
* The login credentials for the application are `username: serveradmin` and `password: monitorworld`
* Useful reference: [Google Instance Metadata](https://cloud.google.com/appengine/docs/standard/java/accessing-instance-metadata) `169.254.169.254`