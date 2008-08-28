<?xml version="1.0" encoding="UTF-8"?>
<%@ page contentType="text/vnd.wap.wml" %>
<%@ page import="javax.servlet.http.HttpUtils.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.lp.webapp.frame.*" %>
<%@ page import="com.lp.webapp.heliumv.*" %>
<% TheClient theClient = (TheClient)session.getAttribute(session.getId()); %>
<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.2//EN" "http://www.wapforum.org/DTD/wml12.dtd">
<wml>
<template>
 <do type="prev" label="Back">
   <noop/>
 </do>
</template>
<card id="ze" title="HELIUM V 5.08">
  <onevent type="onenterforward">
    <refresh>
      <setvar name="buart" value="<%= TheApp.KOMMEN %>" />
    </refresh>
  </onevent>
  <p>Buchungszeit:</p>
  <p><%= ((DataZE)theClient.getData()).getBuchungsZeitpunktASString() %></p>
  <p>
    <select multiple="false" name="buart" value="<%= TheApp.KOMMEN %>">
      <option value="<%= TheApp.KOMMEN %>">Kommen</option>
      <option value="<%= TheApp.UNTERBRECHEN %>">Unterb.</option>
      <option value="<%= TheApp.GEHEN %>">Gehen</option>
    </select>
  </p>
  <do type="accept" label="Buchen">
    <go href="<%= response.encodeURL(theClient.getSContextServletPath() + "?cmd=" + TheApp.CMD_WAP_ZEIT_BUCHEN) %>" method="post">
      <postfield name="<%= TheApp.BUCHUNGSZEIT%>" value="<%= ((DataZE)theClient.getData()).getBuchungsZeitpunktASString()%>" />
      <postfield name="<%= TheApp.BUCHUNGSART%>" value="$(buart)" />
    </go>
  </do>
  </card>
</wml>
