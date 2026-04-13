<%@include file="conexion.jsp"%>

<%
int m = Integer.parseInt(request.getParameter("matricula"));
String n = request.getParameter("nombre");
String c = request.getParameter("carrera");
double c1 = Double.parseDouble(request.getParameter("cal1"));
double c2 = Double.parseDouble(request.getParameter("cal2"));

double prom = (c1 + c2)/2;

st = conexion.prepareStatement(
"UPDATE alumnos SET nombre=?, carrera=?, calificacion1=?, calificacion2=?, promedio=? WHERE matricula=?"
);

st.setString(1,n);
st.setString(2,c);
st.setDouble(3,c1);
st.setDouble(4,c2);
st.setDouble(5,prom);
st.setInt(6,m);

st.executeUpdate();

response.sendRedirect("consultar.jsp");
%>