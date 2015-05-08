<?xml version="1.0" encoding="UTF-8"?>
<%@ page contentType="text/vnd.wap.wml" %>
<%@ page import="javax.servlet.http.HttpUtils.*" %>
<%@ page import="com.lp.webapp.frame.*" %>
<% TheClient theClient = (TheClient)session.getAttribute(session.getId()); %>
<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.2//EN" "http://www.wapforum.org/DTD/wml12.dtd">
<wml>
<template>
  <do type="prev" label="Back">
    <prev/>
  </do>
</template>
<card id="fehler" title="HELIUM V 5.08">
  <p>F: <%= theClient.getSMsg() %></p>
  <p><a href="<%= response.encodeURL(theClient.getSContextServletPath() + "?cmd=" + TheApp.CMD_WAP_SHOWMENUE)%>">Menue</a></p>
</card>
</wml>
