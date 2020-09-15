import datetime
from urllib.request import urlopen
from bs4 import BeautifulSoup
import requests
import cx_Oracle


now=datetime.datetime.now()
nowDateTime=now.strftime('%Y-%m-%d %H:%M:%S')
nowDateFormat1=now.strftime('%Y-%m-%d')
nowDateFormat2=now.strftime('%Y%m%d')




# virable

url = "https://www.kebhana.com/cms/rate/wpfxd651_01i_01.do"
data={"ajax": "true", "curCd": "", "tmpInqStrDt": nowDateFormat1, "pbldDvCd": 3, "pbldSqn":"", "hid_key_data":"",
        "inqStrDt":nowDateFormat2,"inqKindCd":1 ,"hid_enc_data":"", "requestTarget":"searchContentDiv" }
#data에 tmpInqStrDt 랑 inqStrDt는 조회를 원하는 날짜로 수정하셔야합니다.


# request(POST)
res = requests.post(url, data)

# soup
soup = BeautifulSoup(res.content, "html.parser")

#print(soup)



title_data=soup.select('.txtAr')

array = [[0 for col in range(12)] for row in range(50)] # 49행12열 선언

myList=[]
moneyList=['USD','JPY','EUR','CNY','HKD','THB','TWD','PHP','SGD','AUD','VND','GBP','CAD',
        'MYR','RUB','ZAR','NOK','NZD','DKK','MXN','MNT','BHD','BDT','BRL','BND','SAR',
        'LKR','SEK','CHF','AED','DZD','OMR','JOD','ILS','EGP','INR','IDR','CZK','CLP',
        'KZT','QAR','KES','COP','KWD','TZS','TRY','PKR','PLN','HUF','dum']



for price in title_data:        # 복수의 가격 정보들에서 하나씩 꺼내어
    myList.append(price.text)       # 텍스트만 화면에 출력한다

for k in range(50):
    array[k][0]=moneyList.pop(0)


for i in range(49):
    for j in range(1,12):
        array[i][j]=myList.pop(0).replace(",","")

"""
for x in range(49):
    for y in range(12):
        print(array[x][y])
    print()"""



# user, password, service
db = cx_Oracle.connect("hr", "hr", "localhost:1521/xe")
#db = cx_Oracle.connect('user/password@localhost:port/SID')

# cursor 객체 가져오기
cursor = db.cursor()

# Oracle DB의 테이블 검색(select)
# SQL 문장 실행


for i in range(50):
    kk = array[i]
    print(kk)
    sql_query = 'update hs_t_currency_rate set CASHBUYRATE=:b, CASHBUYSPREAD=:c, CASHSELLRATE=:d, CASHSELLSPREAD=:e, REMITTANCE=:f, RECEIVE=:g, TCBUY=:h, FCSELL=:i, BASICRATE=:j, CONVERSION=:k,USDRATE=:l, REGDATE=:m  where CURRENCY=:a '
    cursor.execute(sql_query,  b=kk[1], c=kk[2] ,  d=kk[3], e=kk[4],f=kk[5],g=kk[6],h=kk[7],i=kk[8],j=kk[9],k=kk[10],l=kk[11], m=now , a=kk[0])

db.commit()



# cursor 객체 닫기
cursor.close()

# Oracle 서버와 연결 끊기
db.close()


