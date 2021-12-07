@extends('layouts.app')

@section('content')
<h2>Товары</h2>
<div class="row justify-content-start">
	@foreach($data as $el)
		@if($el->is_active == 1)
		<div class="card" style="width: 18rem;margin: 5px;">
			<img src="{{$el->image}}" class="card-img-top" alt="img">
			<div class="card-body">
				<h5 class="card-title">{{$el->title}} - {{$el->cost}} p</h5>
				<p class="card-text">{{$el->preview}}</p>
				<a href="{{route('prod', $el->id)}}" class="btn btn-primary">Подробнее</a>
			</div>
		</div>
		@endif
	@endforeach

</div>
@endsection
