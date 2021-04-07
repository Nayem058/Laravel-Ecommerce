@if (Session('success'))
    <div class="alert bg-primary fade in">
        <a href="#" class="close" data-dismiss="alert">×</a>
        <h4>{{ Session('success') }}</h4>
    </div>
@endif

@if ($errors->any())
    @foreach ($errors->all() as $error)
    <div class="alert bg-danger fade in">
        <a href="#" class="close" data-dismiss="alert">×</a>
        <h4>{{ $error }}</h4>
    </div>
    @endforeach 
@endif

{{-- @error('brand_name')
    <div class="alert bg-danger fade in">
        <a href="#" class="close" data-dismiss="alert">×</a>
        <h4>{{ $message }}</h4>
    </div>    
@enderror --}}

