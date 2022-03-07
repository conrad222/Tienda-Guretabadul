    <!-- Modal https://stackoverflow.com/questions/35980409/adding-user-to-mysql-database-in-php-using-phpmyadmin  https://stackoverflow.com/questions/44348870/insert-user-info-into-the-databasa-php-and-mysql-->

    <link href="{{URL::asset('/css/style.css')}}" rel='stylesheet'>

<div class=" bg-gradient h-100 " id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-Gure">
        <div class="modal-content  modal-Gure bg-gradient text-color-GureO h-50">
            <div class="modal-header-gure text-center ">
                <h5 class="modal-title " id="exampleModalLabel">VER PERFILES</h5>
                <a href="{{route ('home')}}"><button type="button" class="btn-close" sdata-bs-dismiss="modal"
                        aria-label="Close"></button></a>
            </div>
            <div class="modal-body  ">
            <table class="table">
            <thead >
                <tr>
                <th scope="col">NOMBRE</th>
                <th scope="col">EMAIL</th>
                  </tr>
            </thead>
            <tbody>
            @foreach($users as $user)

            <tr>
                <td>{{$user->name}}</td>
                <td>{{$user->email}}</td>

            </tr>

             @endforeach
            </tbody>
            </table>
            </div>
        </div>
    </div>
</div>
<script src="{{URL::asset('/js/bootstrap.min.js')}}"></script>
