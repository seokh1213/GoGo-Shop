## GoGo~ Shop

---

#### Authenticate

1. 로그인
2. 회원가입

---

#### User

1. 내 정보 조회
2. 내 정보 수정
3. 판매자 등록

---

#### View(페이지)

1. 메인페이지
   ```http request
   GET /view/main 
   ```
   ```json lines
   {
    "result": {
      "banners": [
        {
          "image_url": "banner image url",
          "event_id": "배너의 event id"
        }, 
        {
          "image_url": "banner image url",
          "event_id": "배너의 event id"
        }
      ],
      "layouts": [
        {
          "type": "LIST",
          "title": "오늘은 이 상품 어때요?",
          "products": [
            {
              "product_id": 12341,
              "name": "상품명",
              "price": 27000,
              "discount_price": 16200,
              "image_url": "이미지 url",
              "seller": "판매자 이름",
              "discount_rate": 40
            },
            {
              "product_id": 12341,
              "name": "상품명",
              "price": 27000,
              "discount_price": 16200,
              "image_url": "이미지 url",
              "seller": "판매자 이름",
              "discount_rate": 40
            }
          ]
        },
        {
          "type": "LIST",
          "title": "👖 바지만 모았어요~",
          "products": [
            {
              "product_id": 12341,
              "name": "상품명",
              "price": 27000,
              "discount_price": 16200,
              "image_url": "이미지 url",
              "seller": "판매자 이름",
              "discount_rate": 40
            },
            {
              "product_id": 12341,
              "name": "상품명",
              "price": 27000,
              "discount_price": 16200,
              "image_url": "이미지 url",
              "seller": "판매자 이름",
              "discount_rate": 40
            }
          ]
        }
      ]
    }
   }
   ```
2. 물건 상세 페이지
   ```http request
   GET /view/products/{productId}
   ```
   ```json lines
   {
    "result": {
       "product": {
         "product_id": 12341,
         "name": "상품명",
         "price": 27000,
         "discount_price": 16200,
         "image_url": "이미지 url",
         "seller": "판매자 이름",
         "discount_rate": 40,
         "image_url_list": ["image url", "image url", "image url", "image url"] 
       },
       "options": [
         {
           "order": 1,
           "default_title": "[컬러]를 선택하세요.",
           "option_list": ["Black", "White"]
         },
         {
           "order": 2,
           "default_title": "[사이즈]를 선택하세요",
           "option_list": ["Free"]
         }
       ],
       "details": {
          "detail_image_url": "image_url" 
        }
     }
   }
   ```

---

#### Order

1. 물건 주문
    - `POST /orders/{productId}`
2. 주문내역
    - `GET /orders`
3. 물건 등록
