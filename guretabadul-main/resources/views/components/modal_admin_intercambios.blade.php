 <!-- Modal -->
 <link href="{{URL::asset('/css/style.css')}}" rel='stylesheet'>

<div class=" bg-gradient h-100" id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-Gure">
        <div class="modal-content  modal-Gure bg-gradient text-color-GureO">
            <div class="modal-header-gure text-center">
                <h5 class="modal-title " id="exampleModalLabel">INTERCAMBIOS</h5>
                <a href="{{route ('home')}}"><button type="button" class="btn-close" sdata-bs-dismiss="modal"
                        aria-label="Close"></button></a>
            </div>
            <div class="row ">
            <div class="modal-body">
              <fieldset>
                <legend>Añadir:</legend>
                <label for="fname">Introduce el nombre:</label>
                <input type="text" id="nombre" name="nombre"><br><br>
                <label for="fname">Introduce la marca:</label>
                <input type="text" id="marca" name="marca"><br><br>
                <label for="fname">Introduce la modelo:</label>
                <input type="text" id="modelo" name="modelo"><br><br>
                <label for="fname">Introduce la descripcion:</label>
                <input type="text" id="descripcion" name="descripcion"><br><br>
                <label for="fname">Introduce la velocidad:</label>
                <input type="number" id="velocidad" name="velocidad"><br><br>
                <label for="fname">Selcciona una imagen</label>
                <input type="file" class="form-class" id="imagen" name="imagen"><br><br>
              </fieldset>  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="Submit" class="btn btn-primary">Crear</button>
      </div>
        </div>
    </div>
</div>