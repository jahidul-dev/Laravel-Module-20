<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
    <link href="{{ asset('https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css') }}" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .product-image{
            height:80px
        }
    </style>
</head>
<body>
    <div class="bg-success text-white py-3 mb-3">
        <div class="container">
            <div class="row">
                <div class="col-md-7"><h2 class="mb-1">Edit Product</h2></div>
                <div class="col-md-5 text-end"><a href="{{ route('products.index') }}" class="btn btn-primary">Products List</a></div>
            </div>
        </div>     
    </div>  
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
               
                <form action="{{ route('products.update',$product->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')

                    <div class="mb-3">
                        <label for="name" class="form-label">Product Name</label>
                        <input type="text" name="name" value="{{ $product->name }}" id="name" class="form-control">
                        @error('name')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror 
                    </div>
                    <div class="mb-3">
                        <label for="product_code" class="form-label">Product ID SKU</label>
                        <input type="text" name="product_id" value="{{ $product->product_id }}" id="product_code" class="form-control">
                        @error('product_id')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror  
                    </div>                                    
                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <input type="text" name="description" value="{{ $product->description }}" id="description" class="form-control">
                        @error('description')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror 
                    </div>                    
                    <div class="mb-3">
                        <label for="price" class="form-label">Price :</label>
                        <input type="number" name="price" value="{{ $product->price }}" id="price" class="form-control">
                        @error('price')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror 
                    </div>                   
                     <div class="mb-3">
                        <label for="stock" class="form-label">Stock :</label>
                        <input type="number" name="stock" value="{{ $product->stock }}" id="stock" class="form-control">
                        @error('stock')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror  
                    </div>     
                    <div class="mb-1"> 
                        <img src="{{ asset('storage/'. $product->image) }}" alt="Current Image Empty!" class="product-image">
                    </div>                
                    <div class="mb-3">
                        <label for="image" class="form-label">New Product image :</label>
                        <input type="file" name="image" id="image" class="form-control">
                        @error('image')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror     
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div> 
                </form>
            </div>
        </div>
    </div>
</body>
</html>