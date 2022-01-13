# Local Installation
Installation for Ikemen api project

## Setup
For <b>first time</b> compose
```
docker-compose up
```
For <b>next time</b> compose
```
docker-compose up --build
```
Alternative way to update docker image
```
docker-compose up --force-recreate --build -d
docker image prune -f
```
## Check database connection
1. Install [MySQL workbench](https://dev.mysql.com/downloads/)
1. Setup MySQL workbench on your local computer
1. Create new connection with
    ```
    Hostname = 127.0.0.1
    Port = 3307
    Username = root
    ```
1. Import data to MySQL with ```test_book.sql``` at the port ```3307``` which connected with this project

<b>Tutorial that will help you</b>
1. [FuelPHP Structure](https://www.tutorialspoint.com/fuelphp/fuelphp_complete_working_example.htm)
1. [Docker, NGINX, PHP, MYSQL - eng](https://www.youtube.com/watch?v=tXg24aFcp-0)
1. [Docker, NGINX, PHP, MYSQL, Redis - jp](https://qiita.com/nemui-fujiu/items/2fc3c97800d45e55a435)

---
# Note

- โปรเจคนี้เป็นโปรเจคสำหรับลองการเชื่อม Docker, NGINX, PHP, MYSQL, Redis ด้วย pdo, ใช้สำหรับเทสว่าระบบทำงานอย่างคร่าวถูกต้อง
- แก้ password ใน ```docker-compose.yml``` และ ```\fuelphp\fuel\app\config\db.php``` เป็น password ของ db ตามที่ตั้งเอาไว้
- เมื่อรันทุกอย่างเรียบร้อย http://localhost:6080/ จะขึ้นหน้า welcome fuelphp default
- เมื่อรันทุกอย่างเรียบร้อย http://localhost:6080/book จะขึ้นหน้าโชว์ข้อมูลจาก db