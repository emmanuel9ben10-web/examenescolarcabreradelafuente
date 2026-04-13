<%@include file="conexion.jsp"%>

<%
int m = Integer.parseInt(request.getParameter("matricula"));

st = conexion.prepareStatement("SELECT * FROM alumnos WHERE matricula=?");
st.setInt(1,m);
rs = st.executeQuery();

rs.next();
%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-dark text-white">

<div class="container mt-5">
<div class="card p-4">

<h3>Editar Alumno</h3>

<form action="actualizar.jsp" method="post">

<input type="hidden" name="matricula" value="<%=rs.getInt("matricula")%>">

<input type="text" name="nombre" value="<%=rs.getString("nombre")%>" class="form-control mb-3">
<input type="text" name="carrera" value="<%=rs.getString("carrera")%>" class="form-control mb-3">
<input type="number" step="any" name="cal1" value="<%=rs.getDouble("calificacion1")%>" class="form-control mb-3">
<input type="number" step="any" name="cal2" value="<%=rs.getDouble("calificacion2")%>" class="form-control mb-3">

<button class="btn btn-success">Actualizar</button>

</form>

</div>
</div>

</body>
</html>