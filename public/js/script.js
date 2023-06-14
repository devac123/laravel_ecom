

let shoping_cart = localStorage.getItem('shoping_cart');
if(shoping_cart){
    let cart = JSON.parse(shoping_cart);
    udateCart(cart)
}else{
    cart = {}
}
$('.cart-button').click((e)=>{
    
})