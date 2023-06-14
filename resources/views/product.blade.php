 @extends('layout')

@section('content')
   <div class="product">
      <div class="product__left">
         <div class="product__nav"></div>
         <div class="product__slide">
            <div class="product__img">
               <img src="https://preview.ibb.co/jrJruS/atomic_bag_1.png", alt="atomic travel bag" alt="" srcset="">
            </div>
            <ul class="list__dot">
               <li class="list__dot-item is-active"></li>
               <li class="list__dot-item"></li>
               <li class="list__dot-item"></li>
            </ul>
         </div>

      </div>
      <div class="product__right">
         <h1 class="product__title">
            Red Travel Bag
         </h1>
         <p class="product__price">
            <span class="product__price-new">$199</span> 
            <sup class="product__price-old">$250.00</sup> 
         </p>
         <p class="product__desc">
            Lorem Ipsum is simply dummy text of the printing and typesetting industry lorem Ipsum is simply dummy
         </p>
         <div class="product__info">
            <span class="product__info-title"></span>
         </div>
      </div>
   </div>
@endsection 

