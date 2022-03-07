    <!-- Modal -->
    <link href="{{URL::asset('/css/style.css')}}" rel='stylesheet'>

    <div class=" bg-gradient h-100 " id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-Gure">
            <div class="modal-content  modal-Gure bg-gradient text-color-GureO">
                <div class="modal-header-gure text-center">
                    <h5 class="modal-title " id="exampleModalLabel">{!! trans('jokes.ADMINISTRAR USUARIOS Y MATCHS') !!}</h5>
                    <a href="{{route ('home')}}"><button type="button" class="btn-close" sdata-bs-dismiss="modal"
                            aria-label="Close"></button></a>
                </div>
                <div class="modal-body">
              <table class="table">
                <thead >
                    <tr>
                    <th scope="col">{!! trans('jokes.USUARIA') !!}</th>
                    <th scope="col">{!! trans('jokes.IDIOMA') !!}</th>
                    <th scope="col">{!! trans('jokes.DEMANDA') !!}</th>
                    <th scope="col">{!! trans('jokes.OFRECE') !!}</th>
                    <th scope="col">{!! trans('jokes.CONTACTAR') !!}</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($users as $user)
                <tr>
                    <td>{{$user->name}}</td>
                    <td>{{$user->id_idioma}}</td>
                    <td>{{$user->name}}</td>
                    <td>
                    <form action="{{route('modal_admin_usermatch.destroy')}}" method="POST">
                        @csrf
                        @method('delete')
                        <button type="submit" style="background-color: crimson; border-radius: 16px; font-weight: bold;display: block"><i class="fas fa-trash-alt"></i></button>
                    </form>
                    {{--Borrar Productos--}}
                    </td>
                </tr>
                 @endforeach
                </tbody>
                </table>
    <script src="{{URL::asset('/js/bootstrap.min.js')}}"></script>
