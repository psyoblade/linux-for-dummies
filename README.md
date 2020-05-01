# 리눅스 시스템에 대한 이해

## 1. 데이터엔지니어에게 유용한 리눅스 커맨드라인 도구
> 복잡하고 성능이 뛰어난 오픈소스를 활용하여 데이터 처리를 하는 것도 좋겠지만 항상 그러한 도구들을 사용할 수 있는 환경이 주어지는 것은 아닙니다. 예를 들어 내가 구성하지 않은 리눅스 장비 혹은 EC2 컨테이너에 구성된 최소 도구들만 설치된 환경에서도 빠르게 데이터 처리나 분석이 필요한 경우도 있을 수 있습니다
> 이러한 상황에서 python 이라든가 오픈소스 도구를 설치하기 어려울 뿐더러 권한이 없거나 혹은 여러가지 이유로 허용이 되지 않을 수도 있습니다.

### 문서의 일부 혹은 전체를 출력 - cat, more, head, tail
* 패스워드 정보와 라인 번호를 출력
```bash
cat -n /etc/passwd
```
### 파일의 단어, 라인 수를 계산 및 변환 - wc, nl, tr
* [OPEN API 를 통해 에볼라바이러스 병에 대한 문서](https://www.cdc.go.kr/npt/biz/npp/api/nppOpenApiUrlView.do) 에서 '에볼라' 단어 개수 찾기
```bash
curl http://www.cdc.go.kr/npt/biz/npp/rest/getLwcrContent.do\?key\=HAB85cC%2F%2F0JCqFVnoe3h%2Bg%3D%3D\&icdgrpCd\=01\&icdCd\=NA0001\&isTxt\=1\&updtDt\= | tr ' ' '\n' | sed 's/[\t\na-zA-Z",_0-9:]//g' | grep '에볼라' | wc -l
```

### 파일의 라인의 정렬, 중복제거 - sort, uniq
* [코로나19(COVID-19) 실시간 상황판](https://coronaboard.kr/) 데이터를 이용하여 정렬 테스트
```bash
# 확진자 DESC
$ cat data/corona.body.tsv | sed 's/,//g' | cut --output-delimiter=',' -f1,2,3 | sort -t, -k2,2nr | head
미국🇺🇸,1100313,64018
이탈리아🇮🇹,205463,27967
영국🇬🇧,171253,26771
스페인🇪🇸,239639,24824
프랑스🇫🇷,129581,24376
벨기에🇧🇪,49032,7703
독일🇩🇪,163331,6632
이란🇮🇷,95646,6091
브라질🇧🇷,87187,6006
네덜란드🇳🇱,39791,4893
# 사망자 DESC
cat data/corona.body.tsv | sed 's/,//g' | cut --output-delimiter=',' -f1,2,3 | sort -t, -k1,1nr | head
미국🇺🇸,1100313,64018
스페인🇪🇸,239639,24824
이탈리아🇮🇹,205463,27967
영국🇬🇧,171253,26771
독일🇩🇪,163331,6632
프랑스🇫🇷,129581,24376
터키🇹🇷,120204,3174
러시아🇷🇺,114431,1169
이란🇮🇷,95646,6091
브라질🇧🇷,87187,6006
```

### 텍스트를 변환 필터 하는 스트림 편집기 - awk, sed
* [주소 기준 동네별 공적 마스크 판매 약국의 이름](https://8oi9s0nnth.apigw.ntruss.com/corona19-masks/v1/storesByAddr/json) 가져오기
  * [SMARBEAR SwggerHub](https://app.swaggerhub.com/apis-docs/Promptech/public-mask-info/20200307-oas3#/v1/get_storesByAddr_json)
```bash
curl https://8oi9s0nnth.apigw.ntruss.com/corona19-masks/v1/storesByAddr/json | awk -F : '/name/ { print $2 }' | sed 's/[",]//g' 
```

