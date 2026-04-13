<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Control Escolar</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-dark text-white">

<div class="container mt-5">
<div class="card p-4">

<h3 class="text-center text-primary">Alta de Alumno</h3>

<form action="guardar.jsp" method="post">

<input type="number" name="matricula" class="form-control mb-3" placeholder="Matricula" required>
<input type="text" name="nombre" class="form-control mb-3" placeholder="Nombre" required>
<input type="text" name="carrera" class="form-control mb-3" placeholder="Carrera" required>
<input type="number" step="any" name="cal1" class="form-control mb-3" placeholder="Calificacion 1" required>
<input type="number" step="any" name="cal2" class="form-control mb-3" placeholder="Calificacion 2" required>

<button class="btn btn-success w-100">Guardar</button>

</form>

<a href="consultar.jsp" class="btn btn-primary mt-3">Ver alumnos</a>

</div>
</div>

</body>
</html>