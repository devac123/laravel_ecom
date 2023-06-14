        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center products">
                @foreach ($products as $item)
                <a href="/product/1">
                    <div class="col mb-5">
                        <div class="card h-100 ">
                            <!-- Product image-->
                            <img class="card-img-top" src="{{$item['image']}}" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"> {{$item['name']}}</h5>
                                    <!-- Product price-->
                                    Rs /- {{$item['price']}}
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center cart-button"><a class="btn btn-outline-dark mt-auto" href="#">ADD To CART</a></div>
                            </div>
                        </div>
                    </div>
                    </a>
                @endforeach
                </div>
            </div>
        </section>