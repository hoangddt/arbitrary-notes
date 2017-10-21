
## 1. Cloud concepts

- Scaling out -> more server : horizontal scaling
- Scaling in -> less server: horizontal scaling
- Scaling up -> resources are added to single component or node in order to its capacity to handle load: vertical scaling
- Scaling down -> Reducing processing capacity or decreasing memory of a server : vertical scaling

An important thing when build applications in the cloud is that the application themselves must be built in a scalable way in order to take advantage of a scalable infrastructure

## 2. Cloud Best Practices

### 1. Design for failure

user -> (internet) -> load balancer -> multiple webservers -> DB