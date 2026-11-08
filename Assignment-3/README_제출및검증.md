# (VHDL) Assignment-3 — 업로드 안내 및 검증 현황

전희주 / 로봇공학과 / 2022028340
마감: 2026-11-13 23:59 (공지 기준)

## 파일 구성
- vhd/: 문제 1~5 VHDL 소스 5개
- circ/: 문제 1~5 Logisim 기본 게이트 직접 구현 5개
- testbench/: VHDL 시험 코드 5개 (보조 자료, 실제 실행 확인 전)
- screenshots/: 학생이 촬영한 대표 Logisim 사진 7개 (원본 그대로)
- Assignment-3_Report_전희주_사진반영_초안.pdf: 사진이 반영된 PDF. 검증 전 초안이며 최종 검증 통과 보고서는 아님.

## 과제 조건 대조
1. RS Latch: NOR, Set/Reset/Hold/Forbidden
2. D Latch: NAND, en=1 투명 / en=0 유지
3. D Flip-Flop: 마스터-슬레이브 D Latch 2개+인버터, rising_edge(clk)
4. JK Flip-Flop: NAND+피드백, Hold/Set/Reset/Toggle
5. D FF 비동기 Set/Clear: clr 우선 / 일반 상승 에지 D FF
모든 문제에 (a) 게이트 직접 구현과 (b) VHDL 구현이 필요합니다.

## 제출 전 남은 실험 (아직 완료 확인 안 됨)
- circ 파일 5개를 Logisim-evolution 5.0.0에서 열고 입력 변화와 출력 검증. E 오류가 없는지 확인.
- VHDL 파일 5개 실제 컴파일과 시뮬레이션.
- 'Compile and Synthesize' 요구에 따라 VHDL 합성 도구 결과 확보.
- 필요시 실험 사진·결과를 추가하고 PDF를 최종 확정/교체.
- RS Latch는 Forbidden 입력 해제 직후 물리 NOR 회로와 행동 수준 VHDL의 상태가 완전히 일치하지 않을 수 있음.

## GitHub 올리는 법 (웹 브라우저)
1. https://github.com/heeju0904/DIGITAL_LOGIC_CIRCUIT 방문.
2. Add file > Upload files 클릭.
3. 압축파일 자체를 올리지 말고 ZIP을 먼저 압축해제.
4. 압축해제된 Assignment-3_GitHub_업로드준비 폴더 전체를 업로드 영역에 드래그하여 하위 폴더 구조가 유지되는지 확인. 이때 저장소에 Assignment-3/ 경로가 생성되도록 업로드 위치를 확인.
5. Commit changes 클릭 후 Assignment-3 폴더 내 vhd/, circ/, PDF 존재 확인.
6. 과제 지시대로 LMS에 GitHub 저장소 URL 제출.

참고: 시뮬레이터 작동 메시지는 실제 합성/시험 성공 증거가 아닙니다.
