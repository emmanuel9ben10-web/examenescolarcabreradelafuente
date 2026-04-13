<%@include file="conexion.jsp"%>

<%
int m = Integer.parseInt(request.getParameter("matricula"));
String n = request.getParameter("nombre");
String c = request.getParameter("carrera");
double c1 = Double.parseDouble(request.getParameter("cal1"));
double c2 = Double.parseDouble(request.getParameter("cal2"));

double prom = (c1 + c2)/2;

st = conexion.prepareStatement("INSERT INTO alumnos VALUES(?,?,?,?,?,?)");

st.setInt(1,m);
st.setString(2,n);
st.setString(3,c);
st.setDouble(4,c1);
st.setDouble(5,c2);
st.setDouble(6,prom);

st.executeUpdate();

response.sendRedirect("consultar.jsp");
%>