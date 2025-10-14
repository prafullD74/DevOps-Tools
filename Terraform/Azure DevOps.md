[A](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
[B](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/tree/master/Instructions/Labs)
[C](https://rsvp.withgoogle.com/events/partner-learning/partner-certification-academy)

## CI-CD
- Continuous integration establishes an automated way to build, package, and test their applications. Having a consistent integration process encourages developers to commit code changes more frequently, which leads to better collaboration and code quality.
- Continuous delivery picks up where continuous integration ends, and automates application delivery to selected environments, including production, development, and testing environments. Continuous delivery is an automated way to push code changes to these environments.

Hosted Server vs Application Server
Hosted Server = Install different Application on it
HostedServerIP:Port = Domain Name
Anguler : Dist -ng -build
Java Mevan : Mvn clean install
netstat -ano | findstr :8080
taskkill /PID PID_No /F     >> Kill process and Port will be free
localhost:8080/appication_war_file_name
CI/CD
Provide Code location for Azure DevOps 
Clone it with URL then in Personal account / Repositories / Import a repository

Project setting >> Service connections >> New service connection >> Docker Registry

[D](https://github.com/rahulshettyacademy/DevopsBasics)
```bash
github config
Noraml >> Stash >> commit >> github
git add * 
git status
git remote add origin <git_link>
git commit -m "any-comment"
git push origin master
```
