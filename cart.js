// cart.js
let cartItems = [];
let totalQuantity = 0;
let totalPrice = 0;

function addToCart(name, price, image) {
  const existingItem = cartItems.find(item => item.name === name);

  if (existingItem) {
    existingItem.quantity += 1;
  } else {
    cartItems.push({ name, price, quantity: 1, image });
  }

  totalQuantity += 1;
  totalPrice += price;

  updateCart();
}

function updateCart() {
  const selectedItemsTable = document.getElementById('selected-items');
  selectedItemsTable.innerHTML = '';

  cartItems.forEach(item => {
    const row = document.createElement('tr');
    row.innerHTML = `
      <td>
        <img src="${item.image}" alt="${item.name}" class="cart-item-image">
        <span>${item.name}</span>
      </td>
      <td>${item.quantity}</td>
      <td>$${(item.price * item.quantity).toFixed(2)}</td>
    `;
    selectedItemsTable.appendChild(row);
  });

  const totalQuantityElement = document.getElementById('total-quantity');
  totalQuantityElement.textContent = totalQuantity;

  const totalPriceElement = document.getElementById('total-price');
  totalPriceElement.textContent = `$${totalPrice.toFixed(2)}`;
}

// Add event listener to "Add to Cart" button on the product page
const addToCartButton = document.querySelector('btn');
addToCartButton.addEventListener('click', () => {
  const name = "RUNFALCON 3.0 SHOES";
  const price = 20000;
  const image = "img/products/All in one/Shoes site mens/2/item2.jpeg";
  addToCart(name, price, image);
});