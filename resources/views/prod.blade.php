@extends('layouts.app')


@section('content')
	<div class="card mb-3">
		<img src="{{ $data->image }}" class="card-img-top" style="width: 400px;" alt="img">
		<div class="card-body">
			<h5 class="card-title">{{ $data->title }}</h5>
			<p class="card-text">{{$data->content}}</p>
			<p class="card-text"><small class="text-muted">Последнее обновление {{$data->created_at}}</small></p>
			<p class="card-text"><small class="text-muted">Автор: {{$data->published_at}}</small></p>
		
			<p>Цена: {{ number_format($data->cost, 2, '.', '') }}</p>
			<!-- Форма для добавления товара в корзину -->
			@auth
			<form action="{{ route('basket.add', ['id' => $data->id]) }}"
				method="post" class="form-inline">
				@csrf
				<label for="input-quantity">Количество</label>
				<input type="text" name="quantity" id="input-quantity" value="1"
					class="form-control mb-1 w-25">
				<button type="submit" class="btn btn-success">Добавить в корзину</button>
			</form>
			@endauth
		</div>
	</div>
	<div class="col-md-6">
	</div>
@endsection