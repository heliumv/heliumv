<?xml version="1.0" encoding="UTF-8"?>
<%@ page contentType="text/vnd.wap.wml" %>
<%@ page import="javax.servlet.http.HttpUtils.*" %>
<%@ page import="com.lp.webapp.frame.*" %>
<% TheClient theClient = (TheClient)session.getAttribute(session.getId()); %>
<% String s= com.lp.webapp.frame.TheApp.AUSWEISNR; %>
<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.2//EN" "http://www.wapforum.org/DTD/wml12.dtd">
<wml>
<template>
 <do type="prev" label="Back">
   <prev/>
 </do>
</template>
<card id="menue" title="HELIUM V 5.08">
  <p><b>Menue</b></p>
  <p><a href="<%= response.encodeURL(theClient.getSContextServletPath() + "?cmd=" + TheApp.CMD_WAP_SHOWLOGIN)%>">Zeiterfassung </a><br/>Partnerabfrage</p>
</card>
</wml>
