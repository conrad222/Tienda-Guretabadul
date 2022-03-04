@extends('layout.masterpage')
@section('contenido')
<div>
  <canvas id="myChart"></canvas>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>

  const data = {
  labels: [
    'Administradores',
    'Usuarios',

  ],
  datasets: [{
    data: [300, 50],
    backgroundColor: [
      '#8024A0',
      '#FBA6C8'
    ],
    hoverOffset: 4
  }]
};

  const config = {
  type: 'pie',
  data: data,
};
</script>

<script>
  const myChart = new Chart(
    document.getElementById('myChart'),
    config
  );
</script>

 

 

@endsection