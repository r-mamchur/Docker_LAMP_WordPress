## Exercise. Docker, LAMP, WordPress.

### Task: deploy LAMP in Docker containers.

***Start_lamp.sh*** and ***docker-compose*** are practically equivalent for runing. 
Before useing ***docker-compose***, run ***data_dir.sh*** for make data directory. 

### Idempotence
- First run - the ***database*** and ***WordPress***  will be initialized.
- Next runs - they won't be change.
 
 ### Note
 ***PID***s of ***httpd*** and ***mysqld*** in containers are not **`1`** but I hope all be good.
 
