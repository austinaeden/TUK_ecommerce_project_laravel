<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <base href="/public">
    <meta charset="utf-8">
    <title>UrbanContemporary | Product Details</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:title" content="">
    <meta property="og:type" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">
    <link rel="shortcut icon" type="image/x-icon" href="user/assets/imgs/theme/favicon.ico">
    <link rel="stylesheet" href="user/assets/css/main.css">
    <link rel="stylesheet" href="user/assets/css/custom.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <style>
        th{
            font-weight: bold;
            font-size: 14px;
            background-color: #DBDFEA;
        }
        td p{
            font-size: 13px;
        }
        	span {cursor:pointer; }
		.number{
			margin:10px 0;
		}
		.minus, .plus{
			width:40px;
			height:40px;
			background:#f2f2f2;
			border-radius:4px;
			padding:8px 5px 8px 5px;
			border:1px solid #ddd;
            display: inline-block;
            vertical-align: middle;
            text-align: center;
        }
        input{
            height:34px;
            width: 100px;
            text-align: center;
            font-size: 26px;
            border:1px solid #ddd;
            border-radius:4px;
            display: inline-block;
            vertical-align: middle;
        }
        .unclickable-input {
            pointer-events: none;
        }
    </style>
</head>

<body>
    @include('sweetalert::alert')
    @include('user.header')
    @include('user.mobile_header')    
    <main class="main">
        @if(session()->has('message'))
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Failed!</strong> {{session()->get('message')}}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <section class="mt-50 mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="product-detail accordion-detail">
                            <div class="row mb-50">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="detail-gallery">
                                        <span class="zoom-icon"><i class="fi-rs-search"></i></span>
                                        <!-- MAIN SLIDES -->
                                        <div class="product-image-slider">
                                            <figure class="border-radius-10">
                                                <img src="{{$product->image}}" alt="product image">
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="detail-info">
                                        <h5 class="title-detail">{{$product->title}}</h5>
                                        <div class="product-detail-rating">
                                            <div class="pro-details-brand">
                                                <span> Category: <a href="#">{{$product->category}}</a></span>
                                            </div>
                                            <div class="product-rate-cover text-end">
                                                <div class="product-rate d-inline-block">
                                                    <div class="product-rating" style="width:90%">
                                                    </div>
                                                </div>
                                                <span class="font-small ml-5 text-muted"> (25 reviews)</span>
                                            </div>
                                        </div>
                                        <div class="clearfix product-price-cover">
                                            <div class="product-price primary-color float-left">
                                                <ins><span class="text-brand">${{$product->discount_price}}</span></ins>
                                                <ins><span class="old-price font-md ml-15">${{$product->price}}</span></ins>
                                                <span class="save-price  font-md color3 ml-15">25% Off</span>
                                            </div>
                                        </div>
                                        <div class="bt-1 border-color-1 mt-15 mb-15"></div>
                                        <div class="product_sort_info font-xs mb-30">
                                            <ul>
                                                <li class="mb-10"><i class="fi-rs-refresh mr-5"></i> 30 Day Return Policy</li>
                                                <li><i class="fi-rs-credit-card mr-5"></i> Cash on Delivery available</li>
                                            </ul>
                                        </div>
                                        <div class="bt-1 border-color-1 mt-30 mb-30"></div>
                                        <div class="detail-extralink">
                                            <form action="{{url('add-to-cart',$product->id)}}"  method="post">
                                                @csrf
                                                <div class="number">
                                                    <span class="minus">-</span>
                                                    <input class="unclickable-input" name="quantity" type="number" value="1" min="1"/>
                                                    <span class="plus">+</span>
                                                </div>
                                                <div class="product-extra-link2">
                                                    @if($product->quantity <1)
                                                        <p style="font-size: 12px;">
                                                            Availability:<span class="in-stock text-danger ml-5">{{$product->quantity}} Items In Stock</span>
                                                        </p>
                                                        <button style="opacity: 0.5;cursor: not-allowed;" disabled type="submit" class="button button-add-to-cart">Add to cart</button>
                                                    @else
                                                        <button type="submit" class="button button-add-to-cart">Add to cart</button>
                                                    @endif
                                                </div>
                                            </form>
                                        </div>
                                        <ul class="product-meta font-xs color-grey mt-50">
                                            <li>Availability:<span class="in-stock text-success ml-5">{{$product->quantity}} Items In Stock</span></li>
                                        </ul>
                                    </div>
                                    <!-- Detail Info -->
                                </div>
                            </div>
                            <section id="product-details">
                                <div class="tab-style3">
                                    <ul class="nav nav-tabs text-uppercase">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="Additional-info-tab" data-bs-toggle="tab" href="#Additional-info">Product Details</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content shop_info_tab entry-main-content">
                                        <div class="tab-pane fade show active" id="Additional-info">
                                            <table class="font-md">
                                                <tbody>
                                                    <tr>
                                                        <th>Brand</th>
                                                        <td><p>{{ $product->brand }}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Size</th>
                                                        <td><p>{{ $product->size }}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Material</th>
                                                        <td><p>{{ $product->material }}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Color</th>
                                                        <td><p>{{ $product->color }}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Gender</th>
                                                        <td><p>{{ $product->gender }}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Fit</th>
                                                        <td><p>{{ $product->fit }}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Style</th>
                                                        <td><p>{{ $product->style }}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Sleeve Length</th>
                                                        <td><p>{{ $product->sleeve_length }}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Length</th>
                                                        <td><p>{{ $product->length }}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Pattern</th>
                                                        <td><p>{{ $product->pattern }}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Details</th>
                                                        <td><p>{{ $product->details }}</p></td>
                                                    </tr>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>      
                            </section>                        
                        </div>
                    </div>
                    <div class="col-lg-3 primary-sidebar sticky-sidebar">
                        <div class="widget-category mb-30">
                            <h5 class="section-title style-1 mb-30 wow fadeIn animated">{{$product->category}}</h5>
                            <ul class="categories">
                                <li><span style="font-weight:bold">Brand: </span>{{ $product->brand }}</li>
                                <li><span style="font-weight:bold">Size: </span>{{ $product->size }}</li>
                                <li><span style="font-weight:bold">Color: </span>{{ $product->color }}</li>
                                <li><span style="font-weight:bold">Pattern: </span>{{ $product->pattern }}</li>
                            </ul>
                        </div>                        
                    </div>
                </div>
            </div>
        </section>
    </main>

    @include('user.footer')    
    <!-- Vendor JS-->
    <script src="user/assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <script src="user/assets/js/vendor/jquery-3.6.0.min.js"></script>
    <script src="user/assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
    <script src="user/assets/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="user/assets/js/plugins/slick.js"></script>
    <script src="user/assets/js/plugins/jquery.syotimer.min.js"></script>
    <script src="user/assets/js/plugins/wow.js"></script>
    <script src="user/assets/js/plugins/jquery-ui.js"></script>
    <script src="user/assets/js/plugins/perfect-scrollbar.js"></script>
    <script src="user/assets/js/plugins/magnific-popup.js"></script>
    <script src="user/assets/js/plugins/select2.min.js"></script>
    <script src="user/assets/js/plugins/waypoints.js"></script>
    <script src="user/assets/js/plugins/counterup.js"></script>
    <script src="user/assets/js/plugins/jquery.countdown.min.js"></script>
    <script src="user/assets/js/plugins/images-loaded.js"></script>
    <script src="user/assets/js/plugins/isotope.js"></script>
    <script src="user/assets/js/plugins/scrollup.js"></script>
    <script src="user/assets/js/plugins/jquery.vticker-min.js"></script>
    <script src="user/assets/js/plugins/jquery.theia.sticky.js"></script>
    <script src="user/assets/js/plugins/jquery.elevatezoom.js"></script>
    <!-- Template  JS -->
    <script src="user/assets/js/main.js?v=3.3"></script>
    <script src="user/assets/js/shop.js?v=3.3"></script></body>
    <script>
        	$(document).ready(function() {
			$('.minus').click(function () {
				var $input = $(this).parent().find('input');
				var count = parseInt($input.val()) - 1;
				count = count < 1 ? 1 : count;
				$input.val(count);
				$input.change();
				return false;
			});
			$('.plus').click(function () {
				var $input = $(this).parent().find('input');
				$input.val(parseInt($input.val()) + 1);
				$input.change();
				return false;
			});
		});
    </script>

</html>