-- user
INSERT INTO auth(uid, email, provider, create_dt, update_dt)
VALUES ('unique_admin_key', 'admin@naver.com', 'NAVER', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO user(uid, email, nickname, type, create_dt, update_dt)
VALUES ('unique_admin_key', 'admin@naver.com', '뚱땅마을주민', 'ADMIN', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- dummy data
-- product
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image1.coupangcdn.com/image/vendor_inventory/c5d3/8320a975b06e45d95b2efae76b185b6cb7f687f1e0ad80ee8c2054c203bd.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('면100% 감귤 곰돌이 레이스 프릴 스퀘어넥 러블리 루즈핏 파자마 홈웨어 원피스 투피스 커플 잠옷', '♥고퀄 레이스 감귤 커플잠옷♥

감귤,곰돌이,구름,나무 무늬가 감각적인

보돌보들 면100%🍊

고퀄 레이스 스퀘어넥 홈웨어로

어깨 라인을따라 두겹의 프릴 주름으로

러블리함을 살린 🍐

귀여운 원피스,투피스 잠옷이에요*-*



♡



♡ 파자마파티,신혼,패밀리,우정선물로 강추!

커플로 입으면 예쁨이 두배^*^





♡





투피스',
        1, 30100, 500, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/04/SB000000000071401833_1662270671_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/04/SB000000000071401833_1662270671_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/04/SB000000000071401833_1662270671_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/04/SB000000000071401833_1662270671_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/04/SB000000000071401833_1662270671_image5_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (1, 2);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (1, 3);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (1, 4);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (1, 5);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (1, 6);

-- product 2
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://imgb.a-bly.com/data/editor/20220823_1661238553337343l.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('~2XL,4Col[기장선택/인생롱와이드]속밴딩 자신만만 워싱 롱와이드 극찬핏 데님팬츠_복플레이스', '
　
/
COMMENT

🖤 티 안나는 속 밴딩이 있어 편안하고 깔끔하게
🖤 워싱 가득 들어간 오묘한 컬러들
🖤 롱 와이드 핏에 하이웨스트로 롱다리 연출 무조건
🖤 4계절 입기 좋은 두께감
🖤 적당히 루즈한 핏으로 부해 보이지 않아 날씬해 보여요
🖤 고퀄 , 너무 자주 입어서 다시 재구매 하러 오실

고퀄리티 ! 정말 예뻐요 저희 자신만만합니다 ㅎㅎ

너무 너무 ~ 예뻐서 기장도 3개 사이즈도 ~2XL까지
내 키 그리고 내 체형에 꼭 맞게 입으세요

모델 언니는 최애 컬러가 진청이라 하네요 :-)

[모델 롱/S 피팅]

/
SIZE
S , M , L , XL , 2XL
[롱 , 숏 , 기본]

/
MODEL SIZE
키 166cm / 상의44(S) / 하의 26(S) / 발사이즈 235
',
        7, 31600, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/23/SB000000000070117579_1661239432_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/23/SB000000000070117579_1661239432_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/23/SB000000000070117579_1661239432_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/23/SB000000000070117579_1661239432_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/23/SB000000000070117579_1661239432_image5_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (2, 8);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (2, 9);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (2, 10);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (2, 11);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (2, 12);

-- product 3
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://imgb.a-bly.com/data/editor/20220804_1659603252788965l.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('~2XL,2Col[기장선택/4계절와이드!!]코튼 4계절 롱와이드 면팬츠_복플레이스', '
　
/
COMMENT

🤍 4계절 입기 좋은 탄탄한 면팬츠
🤍 배꼽 가리는 하이웨스트로 롱다리 연출
🤍 깔끔한 와이드 핏이라 체형 커버 good

수선 없이 내 키 그리고 내 체형에 꼭 맞게 입으세요 :-)

사이즈 ~2XL 까지 기장도 [롱 , 숏 , 기본] 3가지

와이드 면팬츠도 기장 나뉘게 꼭 만들고 싶었는데
드디어 ~ 나왔습니다 !!

가격도 예쁘고 소재도 퀄리티 최상으로 올렸어요

핏은 오징어 핏 X 자연스럽게 루즈한 와이드 핏이라
깔끔 그 자체랍니다

" 사장님 강추 와이드 "

[ 모델 피팅 롱/S ]

/
COLOR
● ○

/
SIZE
S , M , L , XL , 2XL
[롱 , 숏 , 기본]

/
MODEL SIZE
키 166cm / 상의44(S) / 하의 26(S) / 발사이즈 235',
        13, 31600, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/04/SB000000000069046795_1659627497_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/04/SB000000000069046795_1659627497_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/04/SB000000000069046795_1659627497_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/04/SB000000000069046795_1659603985_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/04/SB000000000069046795_1659603985_image5_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (3, 14);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (3, 15);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (3, 16);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (3, 17);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (3, 18);

-- product 4
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://imgb.a-bly.com/data/editor/20220807_1659883955563366l.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('[간절기템] 스니커즈 투웨이 크롭 후드집업_슈가파우더', '

COMMENT

''  ''가장 베이직한 후드 디자인의 :) *.*

세미 크롭 기장감의 후드집업



힙을 살짝 덮어주는 기장감으로,

숏 야상/자켓 아우터랑도 함께 코디했을 때도 딱 예쁜 기장인 것 같아요

가을에는 안에 티셔츠나, 니트, 이너 위에 입어주고 -

여름에는 쌀쌀한 저녁이나 실내에서 툭~ 걸쳐주기 좋아요



낙낙한 아방핏으로 핏감이 정말 #꾸안꾸스러우면서

귀여워서 마음에 들었어요 ♥



# 투웨이 지퍼로 트렌디함도 갖추면서

레이어드하기에도 더욱 편한 디테일까지 갖췄어요



심플하면서도 군더더기 없이 깔끔하면서 착용감이 우수하며,

드롭된 숄더라인과 루즈한 소매통,

손등을 덮는 소매 기장으로 여리여리한 아웃핏까지 완성



소매와 밑단의 짱짱한 시보리 디테일도 더해져서

착용시 핏이 깔끔하면서도 힘 있게 유지가 된답니다



** 후드 사이즈도 엄청 넉넉한 편이라서 직접 써보시면

어색함이 안 느껴지실꺼에요',
        19, 31600, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/07/SB000000000069199818_1659893357_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/07/SB000000000069199818_1659893357_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/07/SB000000000069199818_1659893357_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (4, 20);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (4, 21);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (4, 22);

-- product 5
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproductdetail/2022/08/24/e6695a68bfbeffbb652d410ed109f07f.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('[가을버전/완전편함!!] 차르르핏 롱 핀턱 뒷밴딩 와이드 슬랙스 기장선택 키작녀 키큰녀 빅사이즈 컬러추가 _미우블랑', '매시즌마다 주문폭주하는
[기장선택/완전편함!!] 차르르핏 롱 핀턱 뒷밴딩 와이드 슬랙스 기장선택 키작녀 키큰녀 빅사이즈
''봄,가을버전'' 입니다

고객님들 만족도 높은 상품으로
가을시즌에 맞춰
브라운 컬러가 추가되었어요
많은 사랑 항상 감사합니다♥


[가을버전/완전편함!!] 차르르핏 롱 핀턱 뒷밴딩 와이드 슬랙스 기장선택 키작녀 키큰녀 빅사이즈 컬러추가 _미우블랑

완전 편하고 예쁜핏 보장!!

슬랙스맛집 미우블랑에서
자신있게 추천드리는 슬랙스로
완전 편한건 기본!!

편안한 핏감에 체형커버까지 완벽..♥
핏 정말 예쁘게 떨어져서
칭찬하고 싶은 슬랙스에요

적당한 두께감으로
봄,가을 시즌은 물론
사계절내내 입으실 수 있고
차르르하게 툭 떨어지는 핏감으로
힙한 느낌!!

그동안 핀턱이 제대로 안잡혀있어서
입으면 핏이 이상해지는 슬랙스
입어보신 적 있으셨죠!

요 슬랙스는 오랜기간 핏수정을 통해
착용 전,후 에도 변함없이
선명한 원핀턱을 연출하게끔 제작되었어요

세로로 잡힌 핀턱 디테일로
부해보이지않으면서
와이드하게 차르르 떨어져
하체 컴플렉스 있으신 분들도
부담없이 편하게 입으실 수 있으며,
캐주얼룩으로도 정장룩으로도
빠지지않고 고급스럽게 입으실 수
있어서 소장가치 200%!!

프론트 라인에서 허벅지까지 자연스럽게
잡히는 원핀턱으로
와이드하지만 부해보이지않고
자연스러운 입체감으로
장점은 부각, 단점을 보완해주었답니다

이중잠금 디테일로
안쪽 여밈부분은 단추,
바깥부분은 히든버클로
벌어짐을 최소화 시켜
좀 더 안정적이게 잡아준답니다

지금부터 쭉
자주 손이갈 슬랙스로
강추드려요♥


*
다양한 사이즈와
다양한 기장감으로 출시되어
각자 체형에 맞게 입으실 수 있답니다


color

블랙, 베이지, 다크그레이, 브라운


fabric

폴리스판혼방
(드라이클리닝 또는 단독 손세탁)
/
비침 없음
주머니있음


size
 S~2XL
숏기장
s(25,26): 총장95 허리32 힙55 밑위33 허벅지28 밑단24
m(27,28):총장96 허리34 힙57 밑위34 허벅지28 밑단25
l(29,30):총장97 허리36 힙59 밑위35 허벅지29 밑단26
XL(30,31): 총장98 허리38 힙61 밑위35 허벅지30 밑단27
2XL(32,33,34): 총장99 허리40 힙63 밑위36 허벅지32 밑단27


기본기장
s(25,26): 총장100 허리32 힙55 밑위33 허벅지28 밑단24
m(27,28):총장101 허리34 힙57 밑위34 허벅지28 밑단25
l(29,30):총장102 허리36 힙59 밑위35 허벅지29 밑단26
XL(30,31): 총장103 허리38 힙61 밑위35 허벅지30 밑단27
2XL(32,33,34): 총장104 허리40 힙63 밑위36 허벅지32 밑단27


롱기장
s(25,26): 총장105 허리32 힙55 밑위33 허벅지28 밑단24
m(27,28):총장106 허리34 힙57 밑위34 허벅지28 밑단25
l(29,30):총장107 허리36 힙59 밑위35 허벅지29 밑단26
XL(30,31): 총장108 허리38 힙61 밑위35 허벅지30 밑단27
2XL(32,33,34): 총장109 허리40 힙63 밑위36 허벅지32 밑단27


*
기장 세가지로
150이하 분들 숏추천
159cm이하분들 기본 추천,
162cm 이상 분들은 롱기장 추천드려요:)


모델 165cm 기준
''롱기장'' 착용시 발등 덮는 기장감으로
저는 발등을 덮는 롱한 기장을 좋아해
롱기장으로 착용했어요
기장 세가지로
실측 체크 후 구매해주세용:)



model size

165cm top&bottom 55


notice

사이즈는 재는 위치에 따라 1-3cm오차가 있을 수 있습니다.
모든 의류의 첫 세탁은 드라이 클리닝을 권장드립니다.
제품 색상은 모니터 해상도에 따라 차이가 있을 수 있습니다.',
        23, 30600, 900, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/23/SB000000000070152686_1661270162_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/23/SB000000000070152686_1661270162_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (5, 24);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (5, 25);

-- product 6
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://imgb.a-bly.com/data/editor/20220805_1659699700684424l.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('[가을ver./셔츠맛집] 인생 잘록핏! 뒷밴딩 크롭 셔츠/남방_슈가파우더', 'COMMENT

'' 예쁜 핏감을 살려주는__ 뒷밴딩 ''



슈가파우더 고객님들이 늘 좋아해주시는 디자인!

다가오는 가을을 맞이하여 긴팔VER. 뒷밴딩 크롭 셔츠를 준비했어요 :)



베이직한 셔츠 디자인에

크롭 기장감과 뒷밴딩 디테일로 포인트를 주었어요

뒷밴딩으로 편안한 착용감을 선사해주면서도

바디라인은 예쁘게 잡아주는 게 정말 요 아이템의 매력 뽀인트 *.*

허리 들뜸과 부해보임 없이 슬림한 핏을 연출해준답니다



크롭 기장감으로 다리도 엄청 길어보여서 몸매를 좋아보이게 만들어주는 효자템

저렴이 원단이 아닌 국내 제작 탄탄한 원단으로

퀄리티도 매우 좋고 흐물거리나 쉽게 해지지 않아요



포인트 컬러 소라, 데일리하게 입기 좋은 아이보리와 블랙

총 3컬러로 구성되어있어요 취향에 맞게 픽해주세요 /







# 몸매 보정

# 툭툭 ! 입고 나가도 패션 완성

# 뒷밴딩으로 _ 편안한 착용감





소재_ 면 100%











/ Sora

(소라)',
        26, 23700, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/05/SB000000000069166716_1659719153_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (6, 27);

-- product 7
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://imgb.a-bly.com/data/editor/20220818_1660829310191344l.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('[퀄리티보장] 슬림핏, 투웨이 골지카라 긴팔니트 집업/가디건_슈가파우더', '반팔ver.으로 많은 사랑을 받았던..//

'' 더욱 고급스러운 리뉴얼, 왕 부드러운 기분좋은 촉감 ''







투웨이 집업 스타일로 자연스러운 연출이 가능해요



골지 소재의 원단으로 깔끔한 라인과 실루엣을 보여주고,

카라 디자인이 밋밋하지 않은 포인트가 되어줘요

상체라인을 더욱 슬림하게 보정해줘요 !



터치감이 정말 너무 부드러운 집업이에요 ...

계속 입고 싶어지는 왕 부드러움 ♥



골반에 걸치는 기장감으로 너무 짧지도 않고 적당해서 취향저격!

쫀쫀하게 늘어나는 원단이라서 활동하기도 편안하답니다



꾸안꾸스럽게 입기 좋은 포인트 아이템으로 소장을 추천드려요 /

',
        28, 21700, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/18/SB000000000069812613_1660838356_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/18/SB000000000069812613_1660838356_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/18/SB000000000069812613_1660838356_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/18/SB000000000069812613_1660838356_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (7, 29);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (7, 30);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (7, 31);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (7, 32);

-- product 8
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://imgb.a-bly.com/data/editor/20220815_1660572957838858l.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('[오버핏] 남친 옷 뺏어입은 듯한, 왕박시 니트 가디건_슈가파우더', 'COMMENT

'' 보호본능 일으키는 루즈핏 ~ ''







오버핏으로 엉덩이까지 덮어주는 기장감으로

남친옷을 걸친듯한 여리여리한 무드가 연출되요



봄, 겨울에는 아우터로 충분히 활용하기 좋고

겨울에는 이너로 활용해주세요 !

여름에는 피팅컷처럼 반바지와 함께 입어줘도 여리핏~ 예쁘더라고요

#4계절 내내 활용할 수 있는



라운드넥으로 어떤 얼굴형과도 쉽게 매치할 수 있고

체형에 구애없이 군살을 커버해준답니다



베이직한 아이템으로 오랫동안 소장할 수 있는 #데일리 가디건으로 추천드려요

부드러운 소재감으로 편한 착용감을 느끼실 수 있어요',
        33, 37400, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/15/SB000000000069569208_1660574424_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/15/SB000000000069569208_1660574424_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/15/SB000000000069569208_1660574424_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/15/SB000000000069569208_1660574424_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/15/SB000000000069569208_1660574424_image5_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (8, 34);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (8, 35);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (8, 36);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (8, 37);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (8, 38);

-- product 9
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproductdetail/2022/08/18/e26b411b005e88b35c9881ffc2665b31.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('(6color)쥬디 가을 크롭 루즈핏 브이넥 니트 가디건_프렌치오브', 'judy cardigan(6color)


- 캐주얼한 무드의 가디건입니다.

- 손등을 살짝 덮는 소재기장감과 밑단 시보리 디테일로
완성도 높게 제작된 가디건입니다.

- 트랜디한 크롭기장감으로 로맨틱하게 연출하기
좋아 추천드립니다.

- 포인트 주기 좋은 컬러감에 소프트한
니트짜임으로 제작되었습니다.

- 목선과 쇄골라인이 돋보이는 V넥라인으로 제작되었습니다.

- 빈티지한 구슬버튼 디테일로 포인트를 주었습니다.

- 핏감이 예뻤던 상품으로 하이웨스트하의와 센스있게
매치하기 좋아 추천드립니다.
',
        39, 25700, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/18/SB000000000069775798_1660809830_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/18/SB000000000069775798_1660809830_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/18/SB000000000069775798_1660809830_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (9, 40);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (9, 41);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (9, 42);
-- product 10
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://ai.esmplus.com/withhuilin/2022FW/OUTER/%EC%86%94%EC%9E%8E%EB%B3%BC%EB%A0%88%EB%A1%9C/00-2.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('패브릭 볼레로 가디건 (5color)', '[패브릭 볼레로 가디건]


color
그레이, 네이비, 베이지, 차콜, 카키

size
free 가슴60 소매10 소매길이76 암홀40 밑단56 총길이43
 *측정 방법에 따라 1~3cm 오차 범위가 발생할 수 있습니다.


fabric
아크릴100%

check
안감 없음 l 신축성 약간 l 두께감 중간 l 비침 약간 있음
 *이너 색상에 따라 비침 정도가 다를 수 있습니다.

model
162cm / 46kg / 상의55 / 하의 26(S) / 230mm',
        43, 19900, 0, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453436_1662359889_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453436_1662359889_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453436_1662359889_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453436_1662359889_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (10, 44);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (10, 45);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (10, 46);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (10, 47);

-- product 11
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://heon1138.openhost.cafe24.com/web/upload/NNEditor/20220905/5848e516b6ae6e9a972664722e77029d.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('벌룬 레더 오버핏 점퍼 (2 color)_행자씨_2', null,
        48, 57200, 10000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453430_1662359880_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453430_1662359880_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453430_1662359880_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453430_1662359880_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453430_1662359880_image5_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (11, 49);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (11, 50);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (11, 51);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (11, 52);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (11, 53);
-- product 12
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://imgb.a-bly.com/data/editor/20220901_1662011439722563l.png',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('<세트룩> 와플 트레이닝 세트 맨투맨 반바지 밴딩 간절기 캐주얼 데일리룩 가을코디 프리사이즈 오버핏 루즈핏 심플 베이직_엔유이_2', 'comment



- 세트상품

- 바지 허리전체 밴딩

- 상의,하의 전체 루즈핏

- 사이즈 구애없는 프리사이즈

- 단독 또는 세트룩 코디 가능





color



- 베이지

- 블랙



SIZE

상의 - FREE / 총장 65 어깨단면 71 가슴단면 57 소매길이 42 소매단면 11 암홀단면 24 밑단단면 46
하의 - FREE / 총장 40 허리 27 힙단면 54 밑위길이 29 허벅지단면 31 밑단단면 34',
        54, 47300, 900, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453423_1662359873_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453423_1662359873_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453423_1662359873_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453423_1662359873_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (12, 55);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (12, 56);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (12, 57);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (12, 58);
-- product 13
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproductdetail/2022/09/05/9f280509700e6c47f43d9ac1cfa9bae7.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ( '3단쭈리 니콜슨 맨투맨_일랑', 'color : 백멜란지, 주황, 카키, 블랙



fabric : 코튼100%




size : 어깨79   가슴70   소매56   암홀30   총기장71   밑단55   (free)

      재는 위치와 방법에 따라 1~2cm 오차가 있을 수 있습니다.




원산지 : 대한민국




따뜻한 3단 쭈리원단의 캐주얼 오버핏 맨투맨입니다:)
여유있는 루즈 오버핏으로 가을부터 쭉 즐기실 수 있어요:)
니콜슨 레터링 프린팅이 유니크 포인트로 로우된 나그랑핏이 너무 귀여워요:)


-빛의 각도에 따라 색깔이 달라 보일 수 있습니다. 화면의 해상도에 따라 색깔이 달라보일 수 있습니다. - '
       , 59, 33600, 900, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453406_1662359824_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453406_1662359824_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453406_1662359824_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453406_1662359824_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453406_1662359824_image5_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (13, 60);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (13, 61);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (13, 62);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (13, 63);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (13, 64);
-- product 14
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproductdetail/2022/09/05/df823c5514d9e66e0daf039d051fd381.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('[아방함/벌룬핏] 스트릿 빈티지 프린팅 다운타운 빌리지 특양면 오버핏 맨투맨 3color]빌리맨투맨_세컨에이니', null,
        65, 31600, 900, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453401_1662359810_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453401_1662359810_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453401_1662359810_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (14, 66);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (14, 67);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (14, 68);
-- product 15
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproductdetail/2022/09/05/3227994693c82b42d553bdbd51be5f5b.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('베이직 알파카 가디건 6컬러_916프로젝트', '가디건 소개해드려요.
기본핏의 가디건으로 간절기에
활용하기 좋은 제품입니다 :)
두께감: 보통 비침: 없음 신축성: 보통 안감: 없음

fabric
알파카 100

color
검정, 브라운, 진회색, 소라, 아이보리, 크림

size -free
어깨 46 가슴 53 소매길이 63.5 소매너비 11 암홀 23 밑단 36 총장 48
(상세 사이즈는 재는 위치와 방법에 따라 1~3cm 오차가 있을 수 있습니다)

model size
키 165 , 상의 사이즈 55 하의 사이즈 S

유의사항
첫 세탁 시, 드라이클리닝을 권장합니다.빛의 각도 및 화면 해상도에 따라 색상이 달라 보일 수 있습니다.',
        69, 47300, 900, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453397_1662359800_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453397_1662359800_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (15, 70);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (15, 71);
-- product 16
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproductdetail/2022/09/05/ced9f82338828ee90442e3f848df0bd0.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('데님 바트 카고팬츠', null,
        72, 35500, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453235_1662359769_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (16, 73);
-- product 17
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproductdetail/2022/09/05/56b6cc3abad6c391208bef65a5acf98b.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('브이넥 얇은 니트 가디건', null,
        74, 18900, 0, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/09/05/SB000000000071453232_1662359766_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (17, 75);
-- product 18
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://piachess.cafe24.com/Product/ky_2022/0730/st_nb.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('아이콘 스트라이프 셔츠 긴팔 남방_박남매_2', 'comment

유행에 구애 없는 스트라이프 패턴으로
깔끔하고 모던한 아웃핏이 연출되는 셔츠입니다

베이직한 컬러부터 다양하게 구성되어
취향에 따라 컬러를 초이스해 즐길 수 있습니다

여유있는 스탠다드핏과 언발 기장으로
다른 스타일링 없이 단독으로 멋스럽게 착용되는 것은 물론
아우터속 이너로도 활용하기 좋은 아이템입니다

세로 스트라이프 패턴으로 시각적으로 슬림해보이며
스트라이프 특유의 모던한 분위기로
레이어드 또는 단독으로 활용도 높게 입어집니다










size

FREE
총장 66~78 어깨 40 가슴 50.5 소매길이(팔기장) 56
소매(팔밑단) 11 암홀 24 밑단 54


 (단면cm)

계절감 : 봄/가을
두께: 적당
촉감 : 보통
핏감 : 스탠다드핏
비침: 없음
안감: 없음
신축성: 없음
광택감: 있음




fabric

폴리 100%

---------

측정 방법은 공지사항을 참조해주세요

모든제품은 표기된 사이즈의 오차범위가 있을수 있으며
특히 니트 상품의 경우 재단방법이나 짜는형태에 따라
실측보다 오차범위가 더 커질 수 있으니 감안하여 구매바랍니다
(오차범위 최소 1cm ~ 최대 5cm 발생)

또한 모든상품이 정확하게 동일한 사이즈로 나올수 없으며
재구매시 또는 동일상품 구매시 상품마다 편차는 무조건 생길수 있습니다
동일상품의 경우 원단의 컬러의 따라서도 사이즈는 차이가 날수 있습니다
이는 불량의 사유가 되지 않습니다

흰색 및 밝은계열의 상품은 원단이 많이 두껍지 않은이상
대부분 약간의 비침이 있습니다

---------',
        76, 21700, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/11/SB000000000069449655_1660217703_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/11/SB000000000069449655_1660217703_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/11/SB000000000069449655_1660217703_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/11/SB000000000069449655_1660217703_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/11/SB000000000069449655_1660217703_image5_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (18, 77);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (18, 78);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (18, 79);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (18, 80);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (18, 81);
-- product 19
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://miri01.openhost.cafe24.com/web/upload/NNEditor/20220825/62815fadd39ad946012bb2f90b16b5b1.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('[4color/기본템!] 쫀득 스퀘어넥 스판 크롭 긴팔 티셔츠_모어샤인_2', null, 82,
        21700, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/25/SB000000000070287760_1661403324_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/25/SB000000000070287760_1661403324_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (19, 83);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (19, 84);
-- product 20
INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://imgb.a-bly.com/data/editor/20220816_1660638771530169l.jpg',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product(name, description, detail_image_url_id,
                    price, discount_rate, seller_id,
                    create_dt, update_dt)
VALUES ('~2XL[기장선택/스판쫙쫙,밴딩]가을 허리밴딩 워싱 슬림 일자핏 스판 쫘악 데님팬츠_복플레이스', '/
COMMENT

🤍 허리 밴딩이 있어 군살 쏙
🤍 전체적으로 스판 쫙쫙 늘어나요
🤍 중청에 워싱 가득 들어가 예쁜 컬러감
🤍 슬림해 말라 보이는 핏
🤍 간절기에 입기 좋은 소재

내 키 그리고 내 체형에 꼭 맞게 ! 수선 필요 X
기장 [롱 , 숏 , 기본] 3가지에 사이즈도 ~2XL까지

[모델 기본/S 착용]

/
SIZE
S , M , L , XL , 2XL
[롱 , 숏 , 기본]

/
MODEL SIZE
키 166cm / 상의44(S) / 하의 26(S) / 발사이즈 235', 85,
        30600, 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/16/SB000000000069627060_1660639941_image1_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/16/SB000000000069627060_1660639941_image2_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/16/SB000000000069627060_1660639941_image3_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/16/SB000000000069627060_1660639941_image4_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO image_url(url, create_dt, update_dt)
VALUES ('https://image.brandi.me/cproduct/2022/08/16/SB000000000069627060_1660639941_image5_M.jpeg', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (20, 86);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (20, 87);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (20, 88);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (20, 89);

INSERT INTO product_image_url_list(product_id, image_url_list_id)
VALUES (20, 90);

-- layout
INSERT INTO layout(layout_type, title, description, create_dt, update_dt)
VALUES ('LIST', '오늘은 이 상품 어때요?', null, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (1, 1);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (1, 2);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (1, 3);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (1, 4);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (1, 5);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (1, 6);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (1, 7);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (1, 8);

-- layout 2
INSERT INTO layout(layout_type, title, description, create_dt, update_dt)
VALUES ('LIST', 'TODAY 카테고리 베스트?', null, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (2, 9);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (2, 10);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (2, 11);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (2, 12);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (2, 13);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (2, 14);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (2, 15);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (2, 16);

-- layout 3
INSERT INTO layout(layout_type, title, description, create_dt, update_dt)
VALUES ('LIST', '신상 모아보기', null, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (3, 17);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (3, 18);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (3, 19);

INSERT INTO layout_product_list(layout_id, product_list_id)
VALUES (3, 20);

-- banner
INSERT INTO banner(banner_image_url, event_id, seller_id, activated, create_dt, update_dt)
VALUES ('https://image.brandi.me/home/banner/bannerImage_840553_1662083938.jpg', '1', 1, true,
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO banner(banner_image_url, event_id, seller_id, activated, create_dt, update_dt)
VALUES ('https://image.brandi.me/home/banner/bannerImage_5_1662081743.jpg', '2', 1, true,
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO banner(banner_image_url, event_id, seller_id, activated, create_dt, update_dt)
VALUES ('https://image.brandi.me/home/banner/bannerImage_840621_1662084449.jpg', '3', 1, true,
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- view
INSERT INTO view(view_type, hidden, create_dt, update_dt)
VALUES ('MAIN', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO view_banner_list(view_id, banner_list_id)
VALUES (1, 1);

INSERT INTO view_banner_list(view_id, banner_list_id)
VALUES (1, 2);

INSERT INTO view_banner_list(view_id, banner_list_id)
VALUES (1, 3);

INSERT INTO view_layout_list(view_id, layout_list_id)
VALUES (1, 1);

INSERT INTO view_layout_list(view_id, layout_list_id)
VALUES (1, 2);

INSERT INTO view_layout_list(view_id, layout_list_id)
VALUES (1, 3);
