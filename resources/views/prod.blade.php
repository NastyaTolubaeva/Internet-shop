@extends('layouts.app')


@section('content')
	<div class="card mb-3">
		<img src="{{ $data->image }}" class="card-img-top" style="width: 400px;" alt="img">
		<div class="card-body">
			<h5 class="card-title">{{ $data->title }}</h5>
			<h5 class="card-title">{{ $data->cost }} p</h5>
			<p class="card-text">{{$data->content}}</p>
			<p class="card-text"><small class="text-muted">Последнее обновление {{$data->created_at}}</small></p>
			<p class="card-text"><small class="text-muted">Автор: {{$data->published_at}}</small></p>
		</div>
	</div>

@endsection