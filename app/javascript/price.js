// カレーを選択したら価格が表示される
const selectElement = document.querySelector('#order_curry_id')

selectElement.addEventListener("change", (event) => {
  event.preventDefault();
  const orderPrice = document.getElementById("order_price");
  const curryId = event.target.value;

  fetch(`/api/orders?id=${curryId}`)
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      console.log('Orders:', data);
      orderPrice.value = data.price;
    })
    .catch(error => {
      console.error('Fetch error', error);
    });
});