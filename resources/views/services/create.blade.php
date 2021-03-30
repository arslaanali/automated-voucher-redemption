<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
    $(document).ready(function(){
        var maxField = 9; //Input fields increment limitation
        var addButton = $('.add_button'); //Add button selector
        var wrapper = $('.field_wrapper'); //Input field wrapper
        var fieldHTML = '<div class="form-group">'+
            '<label class="control-label col-sm-4" for="email">Service Name: * </label>'+
            '<div class="col-md-6">'+
            '<input type="text" class="form-control"  placeholder="Enter name" name="name[]" required value="">'+
            '</div>'+
            '</div>'; //New input field html
        var x = 3; //Initial field counter is 1

        //Once add button is clicked
        $(addButton).click(function(){
            //Check maximum number of input fields
            if(x < maxField){
                x++; //Increment field counter
                $(wrapper).append(fieldHTML); //Add field html
            }
        });

        //Once remove button is clicked
        $(wrapper).on('click', '.remove_button', function(e){
            e.preventDefault();
            $(this).parent('div').remove(); //Remove field html
            x--; //Decrement field counter
        });
    });
</script>
@extends('layouts.app')

@section('content')
<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                      <div class="card-header"> <h4> <b>Add New Service </b> </h4></div>
                      <br>
                  <form class="form-horizontal" action="{{ route('service.store') }}" method="post">
                         @csrf

                         <div class="field_wrapper">
                              <div class="form-group">
                                <label class="control-label col-sm-4" >Service Name : * </label>
                                <div class="col-md-6">
                   <input type="text" class="form-control "  placeholder="Enter name" name="name[]" required value="">

                                </div>
                              </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-sm-4" for="email">Service Name : * </label>
                          <div class="col-md-6">
                            <input type="text" class="form-control"  placeholder="Enter name" name="name[]" required>
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-sm-4" for="email">Service Name  : * </label>
                          <div class="col-md-6">
                            <input type="text" class="form-control"  placeholder="Enter name" name="name[]" required>
                            <a href="javascript:void(0);" class="add_button btn btn-info" title="Add field" style="float:right"> + </a>
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
                            <input type="text" class="form-control" id="email" placeholder="Enter link1" name="link1">
                          </div>
                        </div>

                        <div class="form-group">
                          <label class="control-label col-sm-2" >Link 2:</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" id="email" placeholder="Enter link2" name="link2">
                          </div>
                        </div>

                        <div class="form-group">
                          <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Submit</button>
                          </div>
                        </div>

                      </form>
                </div>
            </div>
        </div>
    </div>



    @include('sweetalert::alert')
@endsection

