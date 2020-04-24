Docker проект для развертывания Book_shop
1) Необходимо установить Docker Toolbox
2) Установить java8-jdk
3) Необходимо установить maven https://maven.apache.org/install.html 
(и в системных параметрах установить JAVA_HOME = install_java_path и добавить add install_maven_path в параметр Path)
4) Необходимо скопировать settings.xml и вставить в папку  `C:/Users/<username>/.m2`
5) Запустить скрипт buildProject.bat
6) Запустить скрипт startAll.bat 

Проект запустится по адресу http://localhost:8080/ (под пользователем login:admin password:admin)
