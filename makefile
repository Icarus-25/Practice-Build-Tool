Main.jar : Main.class Speaker.class
	jar cfe Main.jar Main Main.class Speaker.class

Main.class : Main.java
	javac -cp ".:/usr/share/java/freetts-1.2.2.jar" Main.java

Speaker.class : Speaker.java
	javac -cp ".:/usr/share/java/freetts-1.2.2.jar" Speaker.java

run: Main.jar
	java -cp "Main.jar:/usr/share/java/freetts-1.2.2.jar" Main

clean:
	rm -f Main.class Speaker.class Main.jar