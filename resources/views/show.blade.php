<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Info</title>
    <link href="{{ asset('https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css') }}" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
    <div class="bg-success text-white py-3 mb-3">
        <div class="container">
            <div class="row">
                <div class="col-md-8"><h2 class="mb-1">Product Info - {{ $product->name }}</h2></div>
                <div class="col-md-4 text-end"><a href="{{ route('products.index') }}" class="btn btn-primary">Products List</a></div>
            </div>
        </div>     
    </div>  
    <div class="container">
        <div class="row mt-3">
            <div class="col-md-4">
                <img src="{{ asset('storage/'. $product->image) }}" alt="" class="img-thumbnail">
            </div>
            <div class="col-md-8">  
                <table class="table table-bordered mt-1">
                    <tr>
                        <td>Product Name</td>
                        <td>{{ $product->name }}</td>
                    </tr>                    
                    <tr>
                        <td>Product ID</td>
                        <td>{{ $product->product_id }}</td>
                    </tr>                      
                    <tr>
                        <td>Price</td>
                        <td>{{ $product->price }}</td>
                    </tr>                                      
                    <tr>
                        <td>Product stock</td>
                        <td>{{ $product->stock }}</td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td>{{ $product->description }}</td>
                    </tr>     
                </table>
            </div>
        </div>
    </div>
</body>
</html>