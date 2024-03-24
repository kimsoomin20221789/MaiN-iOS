//
//  AgreeView.swift
//  MaiN
//
//  Created by 김수민 on 1/17/24.
//

import SwiftUI

struct AgreeView: View {

    @State private var shouldNavigateToHome = false
    @State private var showWebView = false
    let termsOfServiceText = """
    이용약관 및 개인정보취급방침

    이용약관

    공개일: 2024년 01월 17일

    수정일: 2024년 01월 17일

    제1조 (목적)

    본 약관은 "MaiN"(이하 "회사")가 제공하는 공지사항 확인 및 학부시설 예약 서비스"(이하 서비스")의 이용 조건 및 절차에 관한 기본적인 사항을 규정합니다.

    제2조 (이용자의 의무)

    1. 이용자는 본 약관에 따라 회사의 서비스를 이용함에 있어서 관련 법령 및 약관을 준수해야 합니다.
    2. 이용자는 본 서비스를 통해 게시되는 공지사항 및 안내사항을 주기적으로 확인하여야 합니다.

    제3조 (서비스의 제공 및 변경)

    1. 회사는 이용자에게 공지사항 확인 및 학부시설 예약 서비스를 제공합니다.
    2. 회사는 필요한 경우 사전 공지 후 서비스의 일부 혹은 전체 내용을 변경할 수 있습니다.

    제4조 (이용계약의 성립)

    1. 서비스 이용을 희망하는 자는 회사의 신청서 양식에 따라 정보를 제공하여야 합니다.
    2. 회사는 이용 신청 정보의 정확성 및 확인을 위해 필요한 조치를 취할 수 있습니다.

    제5조 (서비스의 제한 및 중단)

    1. 이용자가 약관 또는 관련 법령을 위반하거나, 서비스 이용에 지장을 초래하는 경우, 회사는 해당 이 용자의 서비스 이용을 제한하거나 중단할 수 있습니다.
    2. 회사는 서비스 제공 중단 및 중단 예정에 대한 사항을 공지사항을 통해 사전에 알립니다.

    제6조 (면책 조항)

    1. 회사는 천재지변, 정전, 시스템 오류 등 부득이한 사유로 인한 서비스 중단에 대해서는 책임을 지지 않습니다.
    2. 이용자의 귀책사유로 인한 서비스 이용의 어려움이나 손해에 대해서도 회사는 책임을 지지 않습니다.

    제7조 (분쟁해결)

    본 약관에서 정하지 않은 사항 및 본 약관의 해석에 관하여는 대한민국의 관련 법령 및 상관례에 따릅니다.

    제8조 (약관의 변경)

    회사는 필요한 경우 약관을 변경할 수 있으며, 변경된 약관은 공지사항을 통해 이용자에게 공지됩니다.

    제 9조 (기타)

    본 약관에 명시되지 않은 사항은 관련 법령 및 회사의 정책에 따릅니다.
    본 약관은 2023년 01월 17일부터 적용됩니다.

    개인정보취급방침

    공개일: 2024년 01월 17일

    수정일: 2024년 01월 17일

    제1조 (개인정보의 처리 목적)

    "MaiN"(이하 "회사")는 다음의 목적을 위하여 개인정보를 처리하고 있으며, 다음의 목적 이외의 용도로는 이용하지 않습니다.
    • 이용자 가입의사 확인, 이용자 식별
    • 푸시 알림 발송

    제2조 (개인정보의 처리 및 보유 기간)

    회사는 정보주체로부터 개인정보를 수집할 때 수집을 동의받은 개인정보만 보유합니다.
    수집된 개인정보는 최대 5년간 보관될 수 있습니다.

    제3조 (정보주체의 권리 및 행사 방법)

    이용자는 개인정보주체로서 다음과 같은 권리를 행사할 수 있습니다.

    1. 개인정보 열람 요구
    2. 오류 등이 있을 경우 정정 요구
    3. 삭제 요구
    4. 처리정지 요구

    제4조 (처리하는 개인정보의 항목 작성)

    회사는 다음의 개인정보 항목을 처리하고 있습니다.
    • 필수 항목 : 학번, 성명, 소속
    • 선택 항목 : 푸시 토큰

    제5조 (개인정보의 제공 및 위탁)

    회사는 이용자의 사전 동의 없이 개인정보를 제3자에게 제공하지 않습니다.

    제6조 (개인정보의 파기)

    회사는 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 개인정보를 파기합니다. 파기의 절 차 및 방법은 다음과 같습니다.
    • 파기 절차 : 데이터베이스에 수집된 개인정보 삭제
    • 파기 기한 : 즉시

    제7조 (개인정보 보호 책임자 작성)

    회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호 책임자를 지정하고 있습니다.
    • 개인정보 보호 책임자
    성명: 김수민
    소속: 숭실대학교 AI융합학부 학부생
    이메일: skno1381@gmail.com

    MaiN을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만 처리, 피해구제 등에 관한 사항을 개인정보 보호 책임자에게 문의하실 수 있습니다.
    또한, 정보주체의 문의에 대해 지체 없이 답변 및 처리해드리겠습니다.
    
    """
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
            NavigationView {
                VStack(alignment: .leading) {
                    HStack(){
                        Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
                            Image("ic_back")
                        })
                        Spacer()
                    }
                    VStack(alignment: .leading, spacing: 0){
                        Text("메인을 이용하기 위해").font(.bold(size: 20)).foregroundColor(.black)
                        Text("이용약관 및 개인정보 \n취급방침에 동의해주세요.").font(.bold(size: 20)).foregroundColor(.blue02)
                    }.padding()
                    ScrollView {
                        Text(termsOfServiceText).foregroundColor(.black)
                    }.padding()
                    
                    NavigationLink(destination: WebView(url: URL(string: "https://smartid.ssu.ac.kr/Symtra_sso/smln.asp?apiReturnUrl=https%3A%2F%2Fsaint.ssu.ac.kr%2FwebSSO%2Fsso.jsp")!,shouldNavigateToHome: $shouldNavigateToHome).navigationBarBackButtonHidden(true).navigationBarItems(leading: Button(action: {
                        self.presentationMode.wrappedValue.dismiss() // 현재 뷰 닫기
                    }) {
                        Image("ic_back")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }) ) {
                            Text("동의 하기")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, maxHeight: 59)
                                .font(.system(size: 20, weight: .bold))
                                .background(Color.black)
                                .cornerRadius(25)
                                .padding()
                    }
                }.padding().background(.white)
            }.onChange(of: shouldNavigateToHome) { newValue in
                if newValue {
                    UserDefaults.standard.set("success", forKey: "isLogIn")
                }
            }
            
    }
}
