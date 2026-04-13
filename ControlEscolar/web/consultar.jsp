<%@include file="conexion.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Consulta</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

<h2 class="text-center">Lista de Alumnos</h2>

<table class="table table-hover table-striped">
<thead class="table-dark">
<tr>
<th>Matricula</th>
<th>Nombre</th>
<th>Carrera</th>
<th>Cal1</th>
<th>Cal2</th>
<th>Promedio</th>
<th>Acciones</th>
</tr>
</thead>

<tbody>

<%
st = conexion.prepareStatement("SELECT * FROM alumnos");
rs = st.executeQuery();

while(rs.next()){
%>

<tr>
<td><%=rs.getInt("matricula")%></td>
<td><%=rs.getString("nombre")%></td>
<td><%=rs.getString("carrera")%></td>
<td><%=rs.getDouble("calificacion1")%></td>
<td><%=rs.getDouble("calificacion2")%></td>
<td><%=rs.getDouble("promedio")%></td>

<td>
<a href="editar.jsp?matricula=<%=rs.getInt("matricula")%>" class="btn btn-warning btn-sm">Editar</a>

<a href="eliminar.jsp?matricula=<%=rs.getInt("matricula")%>" 
class="btn btn-danger btn-sm"
onclick="return confirm('¿Seguro que deseas eliminar?')">
Eliminar
</a>
</td>

</tr>

<%
}
%>

</tbody>
</table>

<a href="index.jsp" class="btn btn-secondary">Regresar</a>

</div>
</body>
</html>