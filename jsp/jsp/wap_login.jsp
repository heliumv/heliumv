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
<card id="login" title="Menue">
  <do type="accept" label="Anmelden">
    <go href="<%= response.encodeURL(theClient.getSContextServletPath() + "?cmd=" + TheApp.CMD_WAP_DOLOGIN) %>" method="post">
	<postfield name="<%= TheApp.AUSWEISNR %>" value="$(aid)"/>
    </go>
  </do>
  <p><b>ZE Log In</b></p>
  <p>Ausweisnr.:<input format="*N" name="aid" size="10"/></p>
</card>
</wml>
