# html <h1> 동일
## <h2> 동일 크기
### <h3> 크기 보자
---
# 제목1
## 제목2
### 제목4
###### 제목6

글자 그냥 치면

####### 제목7


# 목록 문법
1. 순서목록
2. 순서목록
   1. 순서 2단계 목록
   2. 순서 2단계 목록
3. 순서목록

- 정의
- 용어
  - 자바란?
  - 파이썬

- 정의4
+ 용어 
* 용어6
* *길울임*
* _기울임_
**굵게**
~~취소선~~

\%
\*


File note = new File("C:/Users/user/Desktop/js/note.txt");
		try{
		        BufferedReader br = new BufferedReader(new FileReader(note));
		        String str = br.readLine();
                
                	System.out.println(str);
		        
		        br.close();
		} catch (NullPointerException e){ // null이 있을 경우
			e.getStackTrace();
		} catch (FileNotFoundException e){ // 파일을 찾을 수 없는 경우
			e.getStackTrace();
		} catch (IOException e){ // 파일 읽기 중 에러가 발생한 경우
			e.getStackTrace();
		}


```python```# 라이브러리 준비하기
import csv
import requests
from bs4 import BeautifulSoup

url ="https://comic.naver.com/webtoon/weekday"

# 엑셀 파일로 저장하기
filename = "네이버 웹툰 인기 순위.csv"
f = open(filename, "w", encoding="utf-8-sig", newline="")
writer = csv.writer(f)

columns_name = ["순위", "웹툰명"] # 컬럼 속성명 만들기

writer.writerow(columns_name)

# 웹 서버에 요청하기
res = requests.get(url)
res.raise_for_status()

# soup 객체 만들기
soup = BeautifulSoup(res.text, "lxml")
cartoonsBox = soup.find('ol', attrs={"class": "asideBoxRank"}) # 전체 영역에서 'a' 태그를 찾지 않고 인기 급상승 영역으로 범위 제한
cartoons = cartoonsBox.find_all('a') # 인기 급상승 영역에서 'a'태그 모두 찾아 변수 cartoons에 할당

i = 1

# 반복문으로 제목 가져오기(터미널 창 출력 및 엑셀 저장)
for cartoon in cartoons: 
  title = cartoon.get("title") 
  print(f"{str(i)}위: {title}")
  data = [str(i), title]
  writer.writerow(data)
  i += 1

  ```python
  #define _WINSOCK_DEPRECATED_NO_WARNINGS
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h> 
#include <WinSock2.h>
#include <process.h>
#include <string.h> 
 
int client_init(char* ip, int port);
unsigned int WINAPI do_chat_service(void* param);
 
int main(int argc, char* argv[])
 
{
    char ip_addr[256] = "";
    int port_number = 9999;
    char nickname[50] = "";
    unsigned int tid;
    int sock;
    char input[MAXBYTE] = "";
    char message[MAXBYTE] = "";
    char* pexit=NULL;
    HANDLE mainthread;
 
    if (argc < 3)
    {
        printf("\n사용법 : mcodes_client [서버주소] [포트번호] [닉네임]\n\n");
        printf("        ex) mcodes_client.exe 192.168.100.100 9999 mainCodes\n");
        exit(0);
    }
 
    if (argv[1] != NULL && argv[2] != NULL && argv[3] != NULL)
    {
        strcpy_s(ip_addr, argv[1]);  //서버 주소
        port_number = atoi(argv[2]); //포트 번호
        strcpy_s(nickname, argv[3]); //별명
    }
 
    sock = client_init(ip_addr, port_number);
    if (sock < 0)
    {
        printf("sock_init 에러\n");
        exit(0);
    }
 
    mainthread = (HANDLE)_beginthreadex(NULL, 0, do_chat_service, (void*)sock, 0, &tid);
    if (mainthread)
    {
        while (1)
        {
            gets_s(input, MAXBYTE);
            sprintf_s(message, "[%s] %s", nickname, input);
            send(sock, message, sizeof(message), 0);
            pexit = strrchr(message, '/');
            if (pexit)
                if (strcmp(pexit, "/x") == 0)
                    break;
        }
 
        closesocket(sock);
        WSACleanup();
        CloseHandle(mainthread);
    }
 
    return 0;
 
}
 
int client_init(char* ip, int port)
{
    SOCKET server_socket;
    WSADATA wsadata;
    SOCKADDR_IN server_address = { 0 };
 
    if (WSAStartup(MAKEWORD(2, 2), &wsadata) != 0)
    {
        printf("WSAStartup 에러\n");
        return -1;
    }
 
    if ((server_socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0)
    {
        puts("socket 에러.");
        return -1;
    }
 
    memset(&server_address, 0, sizeof(server_address));
    server_address.sin_family = AF_INET;
    server_address.sin_addr.s_addr = inet_addr(ip);
    server_address.sin_port = htons(port);
 
    if ((connect(server_socket, (struct sockaddr*)&server_address, sizeof(server_address))) < 0)
    {
        puts("connect 에러.");
        return -1;
    }
 
    return server_socket;
}
 
unsigned int WINAPI do_chat_service(void* params)
{
    SOCKET s = (SOCKET)params;
    char recv_message[MAXBYTE];
    int len = 0;
    int index = 0;
    WSANETWORKEVENTS ev;
    HANDLE event = WSACreateEvent();
 
    WSAEventSelect(s, event, FD_READ | FD_CLOSE);
    while (1)
    {
        index = WSAWaitForMultipleEvents(1, &event, false, INFINITE, false);
        if ((index != WSA_WAIT_FAILED) && (index != WSA_WAIT_TIMEOUT))
        {
            WSAEnumNetworkEvents(s, event, &ev);
            if (ev.lNetworkEvents == FD_READ)
            {
                int len = recv(s, recv_message, MAXBYTE, 0);
                if (len > 0)
                    printf("%s\n", recv_message);
            }
            else if (ev.lNetworkEvents == FD_CLOSE)
            {
                printf(" >> 서버 서비스가 중단되었습니다.(종료: \"/x\")\n");
                closesocket(s);
                break;
            }
        }
    }
    WSACleanup();
    _endthreadex(0);
    
    return 0;
}
 
 


출처: https://maincodes.tistory.com/73 [mainCodes:: 메인코즈:티스토리]
  
  
  
  
  ```


# 링크
[깃 w3 공부하는곳](https://www.w3schools.com/git/default.asp
)
[자바 3w 공부하는곳](https://www.w3schools.com/java/default.asp)

[Html 3w 공부하는곳](https://www.w3schools.com/html/default.asp)

[CSS 3W 공부하는곳](https://www.w3schools.com/css/default.asp)

```PYTHON
# 라이브러리 준비하기
import csv
import requests
from bs4 import BeautifulSoup

url ="https://comic.naver.com/webtoon/weekday"

# 엑셀 파일로 저장하기
filename = "네이버 웹툰 인기 순위.csv"
f = open(filename, "w", encoding="utf-8-sig", newline="")
writer = csv.writer(f)

columns_name = ["순위", "웹툰명"] # 컬럼 속성명 만들기

writer.writerow(columns_name)

# 웹 서버에 요청하기
res = requests.get(url)
res.raise_for_status()

# soup 객체 만들기
soup = BeautifulSoup(res.text, "lxml")
cartoonsBox = soup.find('ol', attrs={"class": "asideBoxRank"}) # 전체 영역에서 'a' 태그를 찾지 않고 인기 급상승 영역으로 범위 제한
cartoons = cartoonsBox.find_all('a') # 인기 급상승 영역에서 'a'태그 모두 찾아 변수 cartoons에 할당

i = 1

# 반복문으로 제목 가져오기(터미널 창 출력 및 엑셀 저장)
for cartoon in cartoons: 
  title = cartoon.get("title") 
  print(f"{str(i)}위: {title}")
  data = [str(i), title]
  writer.writerow(data)
  i += 1

```
```python
# 라이브러리 준비하기
import csv
import requests
from bs4 import BeautifulSoup

url ="https://comic.naver.com/webtoon/weekday"

# 엑셀 파일로 저장하기
filename = "네이버 웹툰 인기 순위.csv"
f = open(filename, "w", encoding="utf-8-sig", newline="")
writer = csv.writer(f)

columns_name = ["순위", "웹툰명"] # 컬럼 속성명 만들기

writer.writerow(columns_name)

# 웹 서버에 요청하기
res = requests.get(url)
res.raise_for_status()

# soup 객체 만들기
soup = BeautifulSoup(res.text, "lxml")
cartoonsBox = soup.find('ol', attrs={"class": "asideBoxRank"}) # 전체 영역에서 'a' 태그를 찾지 않고 인기 급상승 영역으로 범위 제한
cartoons = cartoonsBox.find_all('a') # 인기 급상승 영역에서 'a'태그 모두 찾아 변수 cartoons에 할당

i = 1

# 반복문으로 제목 가져오기(터미널 창 출력 및 엑셀 저장)
for cartoon in cartoons: 
  title = cartoon.get("title") 
  print(f"{str(i)}위: {title}")
  data = [str(i), title]
  writer.writerow(data)
  i += 1
```


# 이미지
![건축기계설계 김윤정강사](https://ch.kjacademy.co.kr/upload/academy/teacher/2020/2020011713320518285531887.png)


![깃 이미지](https://git-scm.com/images/logo@2x.png)

# 이미지를 링크로 만들기
[![깃 이미지](https://git-scm.com/images/logo@2x.png
)](https://git-scm.com/)

# 위에 선생님 누르면
국제 컴퓨터 학원으로 링크되게 만들기

[![건축기계설계 김윤정강사](https://ch.kjacademy.co.kr/upload/academy/teacher/2020/2020011713320518285531887.png)](https://ch.kjacademy.co.kr/)

> 인용1
> > 인용2
> >>인용3
---


---
***

# 표
|제목| 내용1 | 비고 |
|:---|----|----|
|자바|객체지향언어|12월달|
|:---|----|----|









