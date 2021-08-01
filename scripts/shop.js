$(document).ready(function () {
    var shop_url = 'phpscript/shop.php';
    var divString ='';
    var cartList =[];

    $.ajax({
        type: "POST",
        url: shop_url,
        success: function (response) {
            addProduct(response);
        }
    });

    function addProduct(data){
        //console.log(data);
        var myJSON = JSON.parse(data);

        $.each(myJSON, function(key, value){
            divString += '<div class="col-md-3 mb-2">';
            divString += '<div class="card" style="width: 18rem;">';
            divString += `<img src=images/${value.product_img} class="card-img-top" alt="...">`;
            divString += '<div class="card-body">';
            divString += `<h5 class="card-title">${value.product_name}</h5>`;
            divString += `<p class="card-text">${value.product_desc}</p>`;
            divString += `<label>Discount Price:</label><a class=".text-dark text-decoration-line-through">₹ ${value.product_discount_price} </a><br>`;
            divString += `<label>Best Price:</label><p id="productPrice" class="fw-bold text-primary">₹ ${value.product_price}</p>`;
            divString += '<button type="button" id="addWishlistBtn" class="btn btn-outline-danger"><i class="fi-rr-heart"></i></button> ';
            divString += '<button id="addCartBtn" class="btn btn-primary">Add Cart</button>';
            divString += '</div>';
            divString += '</div>';
            divString += '</div>';

        });
        $(".row").append(divString);
    }

    $(".row").on('click', '#addCartBtn',  function (e) {
       //console.log(e);
        var pro_name = $(this).parent();
        var cart_value = $(this).closest('span');
        console.log(cart_value);
        var CartCount = cart_value.prevObject[0].ownerDocument.children[0].children[1].children[0].children[0].children[4].children[1];
        console.log(CartCount.innerText);
        var cartItem ={};
        cartItem.productName = pro_name[0].children[0].innerText;
        //cartItem.productPrice = pro_name[0].children[6].innerText;
        //console.log(cartItem);
        var prodPriceWithSymbol = pro_name[0].children[6].innerText;
        //console.log(Array.from(prodPriceWithSymbol));
        var productPriceAfterSplit = prodPriceWithSymbol.slice(2, prodPriceWithSymbol.length);
        //console.log(productPriceAfterSplit);
        var cartItem ={};
        cartItem.productName = pro_name[0].children[0].innerText;
        cartItem.productPrice = productPriceAfterSplit;
        //console.log(cartItem);
        cartList.push(cartItem);
        CartCount.innerText = cartList.length;
    });
});

/*<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>*/