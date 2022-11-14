<%-- 
    Document   : web
    Created on : 13-Nov-2022, 10:32:28 PM
    Author     : franc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <?xml version="1.0" encoding="UTF-8"?>
<web-app version="3.1" xmlns="http://xmlns.jcp.org/xml/ns/javaee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd">
    <filter>
        <filter-name>AuthenticationFilter</filter-name>
        <filter-class>filters.AuthenticationFilter</filter-class>
    </filter>
    <filter>
        <filter-name>AdminFilter</filter-name>
        <filter-class>filters.AdminFilter</filter-class>
    </filter>
    <filter-mapping>
        <filter-name>AuthenticationFilter</filter-name>
        <servlet-name>AdminServlet</servlet-name>
    </filter-mapping>
    <filter-mapping>
        <filter-name>AuthenticationFilter</filter-name>
        <servlet-name>NoteServlet</servlet-name>
    </filter-mapping>
    <filter-mapping>
        <filter-name>AdminFilter</filter-name>
        <servlet-name>AdminServlet</servlet-name>
    </filter-mapping>
    <servlet>
        <servlet-name>NoteServlet</servlet-name>
        <servlet-class>servlets.NoteServlet</servlet-class>
    </servlet>
    <servlet>
        <servlet-name>LoginServlet</servlet-name>
        <servlet-class>servlets.LoginServlet</servlet-class>
    </servlet>
    <servlet>
        <servlet-name>AdminServlet</servlet-name>
        <servlet-class>servlets.AdminServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>NoteServlet</servlet-name>
        <url-pattern>/notes</url-pattern>
    </servlet-mapping>
    <servlet-mapping>
        <servlet-name>LoginServlet</servlet-name>
        <url-pattern>/login</url-pattern>
    </servlet-mapping>
    <servlet-mapping>
        <servlet-name>AdminServlet</servlet-name>
        <url-pattern>/admin</url-pattern>
    </servlet-mapping>
    <session-config>
        <session-timeout>
            30
        </session-timeout>
    </session-config>
    <welcome-file-list>
        <welcome-file>login</welcome-file>
    </welcome-file-list>
</web-app>