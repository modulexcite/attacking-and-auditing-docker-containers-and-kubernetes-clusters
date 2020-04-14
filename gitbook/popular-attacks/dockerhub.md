# Dockerhub known vulnerable images

Docker containers have recently become a popular approach to provision multiple applications over shared physical hosts in a more lightweight fashion than traditional virtual machines. This popularity has led to the creation of the Docker Hub registry, which distributes a large number of official and community images. In this paper, we study the state of security vulnerabilities in Docker Hub images. We create a scalable Docker image vulnerability analysis (DIVA) framework that automatically discovers, downloads, and analyzes both official and community images on Docker Hub.

Using our framework, we have studied 356,218 images and made the following findings:

1. Both official and community images contain more than 180 vulnerabilities on average when considering all versions
2. Many images have not been updated for hundreds of days
3. Vulnerabilities commonly propagate from parent images to child images

These findings demonstrate a strong need for more automated and systematic methods of applying security updates to Docker images and our current Docker image analysis framework provides a good foundation for such automatic security update.


* Read more about [A Study of Security Vulnerabilities on Docker Hub](http://dance.csc.ncsu.edu/papers/codaspy17.pdf)

* [Research Paper](https://dl.acm.org/citation.cfm?id=3029832)