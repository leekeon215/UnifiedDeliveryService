#import "utils.typ": *
#let Intro = [
= 팀원 구성
#table(align: left, 
    columns: (auto, 1fr), 
    [*이름*], [*학번*],
    [곽유나], [202011252],
    [윤찬규], [202211328],
    [이건], [202211329],
)
= 프로젝트 소개
== 배민 통합 서비스
배민 통합 서비스는 고객이 음식점을 조회하고 주문하는 ‘배민 서비스’, 주문을 결제하는 ‘결제 서비스’, 주문한 음식의 배달을 담당하는 ‘배달 대행 서비스’로 구성되어 있다. 고객이 음식을 주문하고 배달 받기까지의 간단한 프로세스는 아래와 같다. 
#align(center, image("img/project_design.png", width: 100%))
]