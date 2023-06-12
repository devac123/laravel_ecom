console.log('working js');

var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        let response = JSON.parse(this.responseText)
        console.log(response);
        let thisHtml = '';
        for(i=0; i<response.length; i++){
            let productdescription = response[i].description; 


            thisHtml += `<a href="/product/`+ response[i].id+`"><div class="col mb-5">
            <div class="card h-100">
                <!-- Product image-->
                <img class="card-img-top" src="`+ response[i].image +`" alt="...">
                <!-- Product details-->
                <div class="card-body p-4">
                    <div class="text-center">
                        <!-- Product name-->
                        <h5 class="fw-bolder">`+  response[i].description +`</h5>
                        <!-- Product price-->
                        `+ response[i].price +`
                    </div>
                </div>
                <!-- Product actions-->
                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                    <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                </div>
            </div>
        </div></a>`
        }
        document.querySelector('.products').innerHTML = thisHtml;
    }
}
xhttp.open("GET", "http://127.0.0.1:8000/api/allproducts", true);
xhttp.send();
