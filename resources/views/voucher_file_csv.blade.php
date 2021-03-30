@extends('layouts.app')

@section('content')
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="{{ URL::asset('/css/style.css') }}">

<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                    <h2> <b>Vouchers </b> </h2>
                    <div class="container-xl">
								<div class="table-responsive">
									<div class="table-wrapper">
									<div class="table-title">
                    <div class="row">
                      <div class="col-sm-6">
                  <form action="{{route('import')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                      <input type="file" name="file" accept=".csv" required>
                                                  
                      <button class="btn btn-success"  >Import Voucher Data</button>
                  </form>
                      </div>
                          <br>
                  </div>
					</div>

            <table class="table table-bordered table-striped table-hover">
                    <thead>
                      <tr>
                      <th>ID</th>
                      <th>VoucherCode</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($voucher as $row)
                      <tr>
                      <td>{{ $row->id }}</td>
                      <td>{{ $row->VoucherCode }}</td>
                      </tr>
                    @endforeach
                    </tbody>
                    </table>

															</div>
														</div>
													</div>
                          {!! $voucher->links() !!}

                    </div>
                </div>
            </div>
        </div>
    </div>




    @include('sweetalert::alert')
    
@endsection