<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <link href="<?php echo e(asset('https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css')); ?>" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .product-image{
            height:40px;
        }
    </style>
    <script src="<?php echo e(asset('https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js')); ?>" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <div class="bg-success text-white py-3 mb-3">
        <div class="container">
            <div class="row">
                <div class="col-md-7"><h2 class="mb-1">Products List</h2></div>
                <div class="col-md-5 text-end"><a href="<?php echo e(route('products.create')); ?>" class="btn btn-primary">Add Product</a></div>
            </div>
        </div>     
    </div>     

    <div class="container">   
        <?php if(session('success')): ?>
            <div class="alert alert-success alert-dismissible fade show mt-2" role="alert">
                <?php echo e(session('success')); ?>

                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <?php endif; ?>

        <!-- Product Search  -->
            <div class="bg-light py-3 px-2 mt-3 border">
                <div class="row">
                    <div class="col-md-6">
                        <form method="GET" action="<?php echo e(route('products.index')); ?>">
                            <div class="input-group">
                                <input type="text" name="search" value="<?php echo e($searchTerm); ?>" class="form-control" placeholder="Search by Product ID or Description">
                                <button class="btn btn-secondary" type="submit">Search</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <a href="<?php echo e(route('products.index', ['sort' => 'name', 'order' => $sortOrder == 'asc' ? 'desc' : 'asc'])); ?>" class="btn btn-outline-primary">Sort by Name</a>
                        <a href="<?php echo e(route('products.index', ['sort' => 'price', 'order' => $sortOrder == 'asc' ? 'desc' : 'asc'])); ?>" class="btn btn-outline-primary">Sort by Price</a>
                        <a href="<?php echo e(route('products.index')); ?>" class="btn btn-outline-primary">Reset</a>
                    </div>
                </div>
            </div> 

            <table class="table table-striped table-hover table-bordered mb-4">
                <thead class="table-dark">
                    <tr>
                        <th>Product ID</th> 
                        <th>Image</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Stock</th>
                        <th>Description</th>
                        <th style="width:180px">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($product->product_id); ?></td>
                        <td><img src="<?php echo e(asset('storage/'. $product->image)); ?>" alt="" class="product-image"></td>
                        <td><?php echo e($product->name); ?></td>
                        <td><?php echo e($product->price); ?></td>
                        <td><?php echo e($product->stock); ?></td>
                        <td><?php echo e($product->description); ?></td>
                        <td class="text-end">
                            <a href="<?php echo e(route('products.show', $product->id)); ?>" class="btn btn-info btn-sm">View</a>
                            <a href="<?php echo e(route('products.edit', $product->id)); ?>" class="btn btn-warning btn-sm">Edit</a>
                            <form method="POST" action="<?php echo e(route('products.destroy', $product->id)); ?>" style="display:inline;" onSubmit="if(!confirm('Are you sure to [<?php echo e($product->name); ?>] Product Delete?')){return false;}">
                                <?php echo csrf_field(); ?>
                                <?php echo method_field('DELETE'); ?>
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>

           <div class="d-flex justify-content-end">
                <?php echo e($products->links()); ?>

           </div>

    </div>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\laravel\exam20\resources\views/index.blade.php ENDPATH**/ ?>