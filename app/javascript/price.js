// カレーを選択したら価格が表示される
const currySelector = document.querySelector('#order_curry_id')
const ricesizeSelector = document.querySelector('#order_ricesize_id')
const spicenessSelector = document.querySelector('#order_spiceness_id')

const generate_query_string = (curry_id, ricesize_id, spiceness_id) => {
  // パラメータをオブジェクトに格納
  const params = {
    curry_id: curry_id,
    ricesize_id: ricesize_id || undefined,
    spiceness_id: spiceness_id || undefined,
  };

  // クエリパラメータを動的に生成
  const query_string = Object.entries(params)
    .filter(([key, value]) => value !== undefined)
    .map(([key, value]) => `${key}=${encodeURIComponent(value)}`)
    .join('&')

  return query_string
}

const display_order_price = (data) => {
  let order_price = 0; 
  for (let i = 0; i < data.length; i++) {
    order_price += data[i][1].price;
  }
  return order_price;
}

currySelector.addEventListener("change", (event) => {
  let order_price_element = document.getElementById("order_price");
  event.preventDefault();
  // 各要素の値を取得
  const curry_id = event.target.value;
  const ricesize_id = document.getElementById("order_ricesize_id").value;
  const spiceness_id = document.getElementById("order_spiceness_id").value;

  const query_string = generate_query_string(curry_id, ricesize_id, spiceness_id);

  fetch(`/api/orders?${query_string}`)
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      order_price_element.value = display_order_price(data);
    })
    .catch(error => {
      console.error('Fetch error', error);
    });
});

ricesizeSelector.addEventListener('change', (event) => {
  let order_price_element = document.getElementById("order_price");
  event.preventDefault();
  // 各要素の値を取得
  const curry_id = document.getElementById("order_curry_id").value;
  const ricesize_id = event.target.value;
  const spiceness_id = document.getElementById("order_spiceness_id").value;

  const query_string = generate_query_string(curry_id, ricesize_id, spiceness_id);

  fetch(`/api/orders?${query_string}`)
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      order_price_element.value = display_order_price(data);
    })
    .catch(error => {
      console.error('Fetch error', error);
    });
})

spicenessSelector.addEventListener('change', (event) => {
  let order_price_element = document.getElementById("order_price");
  event.preventDefault();
  // 各要素の値を取得
  const curry_id = document.getElementById("order_curry_id").value;
  const ricesize_id = document.getElementById("order_ricesize_id").value;
  const spiceness_id = event.target.value;

  const query_string = generate_query_string(curry_id, ricesize_id, spiceness_id);

  fetch(`/api/orders?${query_string}`)
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      order_price_element.value = display_order_price(data);
    })
    .catch(error => {
      console.error('Fetch error', error);
    });
})