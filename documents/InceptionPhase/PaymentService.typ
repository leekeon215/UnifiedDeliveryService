#let PaymentService = [
    = 결제 서비스
    == Use Case
    #align(center, image("img/payment_system_usecase.svg", width: 100%)) 
    == Actor
    - 배민 서비스 (WoowaService)
        - 결제 요청, 결제 취소
    - 결제 서비스 (PaymentService) 
        - 결제 요청 처리, 결제 취소 처리
    == UseCase Brief Description 
    === UC1: 결제 처리하기 (Process Payment)
    - 결제 서비스는 결제 요청을 검증하고, 검증이 완료되면 결제 수단에 따라 결제를 진행한다.
    === UC2: 결제 취소하기 (Cancel Payment)
    - 결제 서비스는 결제 정보를 통해 결제를 취소하고 결제 정보의 상태를 '취소'로 변경한다.
    == UseCase Description
    === UC1: 결제 처리하기
    #table(align: left,
        columns: 2, 
        [*UseCase*], [*Description*],
        [이름], [결제 처리하기 (Process Payment)],
        [범위], [결제 서비스], 
        [수준], [시스템 수준], 
        [주요 액터], [배민 서비스, 결제 서비스], 
        [사전 조건], [배민 서비스로부터 결제 요청을 받는다.], 
        [사후 조건], [결제 정보가 저장된다.], 
        [기본 흐름], [
            1. 결제 서비스는 결제 요청 정보(결제 수단, 결제 금액 등)를 검증한다. 
            2. 결제 요청이 승인되면 결제 서비스는 결제 수단에 따라 결제를 진행한다.
            3. 결제가 성공적으로 완료되면 결제 서비스는 결제 정보를 저장하고 결제 완료 메세지를 배민 서비스에 전달한다.
        ], 
        [대체 흐름], [
            1. 결제 요청이 승인되지 않은 경우 \
                1.1 결제 서비스는 결제 요청 거부 메세지를 배민 서비스에 전달한다.
            2. 결제가 실패한 경우 \
                2.1 결제 서비스는 결제 실패 메세지를 배민 서비스에 전달한다.
                
        ],  
    )
    === UC2: 결제 취소하기
    #table(align: left,
        columns: 2, 
        [*UseCase*], [*Description*],
        [이름], [결제 취소하기 (Cancel Payment)],
        [범위], [결제 서비스], 
        [수준], [시스템 수준], 
        [주요 액터], [배민 서비스, 결제 서비스], 
        [사전 조건], [배민 서비스로부터 결제 취소 요청을 받는다.], 
        [사후 조건], [주문에 대한 결제 금액이 환불된다.], 
        [기본 흐름], [
            1. 결제 서비스는 주문에 대한 결제 정보가 저장되어 있는지 확인한다.
            2. 결제 정보가 있다면 결제 서비스는 지불된 금액을 환불하고 결제 정보의 상태를 '취소'로 변경한다.
            3. 결제 취소가 성공적으로 완료되면 결제 서비스는 결제 취소 완료 메세지를 배민 서비스에 전달한다.
        ], 
        [대체 흐름], [
            1. 결제 정보가 없는 경우 \
                1.1 결제 서비스는 결제 정보가 없다는 메세지를 배민 서비스에 전달한다.
            2. 결제 취소가 실패한 경우 \
                2.1 결제 서비스는 결제 취소 실패 메세지를 배민 서비스에 전달한다.
        ],  
    )
]