<%@include file="conexion.jsp"%>

<%
int m = Integer.parseInt(request.getParameter("matricula"));

st = conexion.prepareStatement("DELETE FROM alumnos WHERE matricula=?");
st.setInt(1,m);

st.executeUpdate();

response.sendRedirect("consultar.jsp");
%>