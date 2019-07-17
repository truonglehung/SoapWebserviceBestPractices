<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="samplePersonServiceImplProxyid" scope="session" class="com.vsolu.soapsimple.service.PersonServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
samplePersonServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = samplePersonServiceImplProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        samplePersonServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.vsolu.soapsimple.service.PersonServiceImpl getPersonServiceImpl10mtemp = samplePersonServiceImplProxyid.getPersonServiceImpl();
if(getPersonServiceImpl10mtemp == null){
%>
<%=getPersonServiceImpl10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String id_1id=  request.getParameter("id18");
        int id_1idTemp  = Integer.parseInt(id_1id);
        boolean deletePerson15mtemp = samplePersonServiceImplProxyid.deletePerson(id_1idTemp);
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deletePerson15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
break;
case 20:
        gotMethod = true;
        String age_3id=  request.getParameter("age25");
        int age_3idTemp  = Integer.parseInt(age_3id);
        String name_4id=  request.getParameter("name27");
            java.lang.String name_4idTemp = null;
        if(!name_4id.equals("")){
         name_4idTemp  = name_4id;
        }
        String id_5id=  request.getParameter("id29");
        int id_5idTemp  = Integer.parseInt(id_5id);
        %>
        <jsp:useBean id="com1vsolu1soapsimple1beans1Person_2id" scope="session" class="com.vsolu.soapsimple.beans.Person" />
        <%
        com1vsolu1soapsimple1beans1Person_2id.setAge(age_3idTemp);
        com1vsolu1soapsimple1beans1Person_2id.setName(name_4idTemp);
        com1vsolu1soapsimple1beans1Person_2id.setId(id_5idTemp);
        boolean addPerson20mtemp = samplePersonServiceImplProxyid.addPerson(com1vsolu1soapsimple1beans1Person_2id);
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addPerson20mtemp));
        %>
        <%= tempResultreturnp21 %>
        <%
break;
case 31:
        gotMethod = true;
        String id_6id=  request.getParameter("id40");
        int id_6idTemp  = Integer.parseInt(id_6id);
        com.vsolu.soapsimple.beans.Person getPerson31mtemp = samplePersonServiceImplProxyid.getPerson(id_6idTemp);
if(getPerson31mtemp == null){
%>
<%=getPerson31mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">age:</TD>
<TD>
<%
if(getPerson31mtemp != null){
%>
<%=getPerson31mtemp.getAge()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">name:</TD>
<TD>
<%
if(getPerson31mtemp != null){
java.lang.String typename36 = getPerson31mtemp.getName();
        String tempResultname36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename36));
        %>
        <%= tempResultname36 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getPerson31mtemp != null){
%>
<%=getPerson31mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 42:
        gotMethod = true;
        com.vsolu.soapsimple.beans.Person[] getAllPersons42mtemp = samplePersonServiceImplProxyid.getAllPersons();
if(getAllPersons42mtemp == null){
%>
<%=getAllPersons42mtemp %>
<%
}else{
	String tempreturnp43 = null;
    if(getAllPersons42mtemp != null){
    java.util.List<com.vsolu.soapsimple.beans.Person> listreturnp43= java.util.Arrays.asList(getAllPersons42mtemp);
    //tempreturnp43 = listreturnp43.toString();
    for(com.vsolu.soapsimple.beans.Person p : listreturnp43){
    	int id = p.getId();
    	int age = p.getAge();
    	String name=p.getName();
    	%>
    	<%=id%>::<%=name %>::<%=age %>
    	<%
    	}
    }
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>