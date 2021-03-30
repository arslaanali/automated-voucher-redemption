@extends('layouts.app')

@section('content')



<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                      <div class="card-header"><h4> <b>Edit Service </b> </h4></div>
                      <br>
                  <form class="form-horizontal" action="{{ route('service.update',$service->id) }}" method="post">
                  @csrf
                        <div class="form-group">
                          <label class="control-label col-sm-4" >Service Name: * </label>
                          <div class="col-md-6">
                            <input type="text" class="form-control"  placeholder="Enter name" name="name" value="{{$service->name}}" required>
                          </div>
                        </div>

                            <div class="form-group">
                            <label class="control-label col-sm-4">Choose a Product: * </label>
                              <div class="col-md-6">
                            <select name="product_id" class="form-control">
                            @foreach($products as $product)
                              <option value="{{ $product->id }}"> {{ $product->productitem }} </option>
                            @endforeach
                            </select>
                              </div>
                            </div>

                        <div class="form-group">
                          <label class="control-label col-sm-2" >Link 1:</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" id="email" placeholder="Enter link1" name="link1" value="{{$service->link1}}">
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-sm-2" >Link 2:</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" id="email" placeholder="Enter link2" name="link2" value="{{$service->name}}">
                          </div>
                        </div>



                        <div class="form-group">
                          <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Update</button>
                          </div>
                        </div>
                      </form>
                </div>
            </div>
        </div>
    </div>

    @include('sweetalert::alert')
@endsection

