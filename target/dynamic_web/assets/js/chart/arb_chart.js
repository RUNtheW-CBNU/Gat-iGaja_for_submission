/*==================== Arab 최고 최저 기온차트 ====================*/
const arb_chart=new Chart(document.getElementById("line-chart_arb"), {
    type: 'line',
    data: {
        //x축
        labels: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
        datasets: [{
            data: [13.7, 14.5, 17.0, 20.1, 23.5, 26.1, 28.9, 29.3, 26.3, 22.7, 18.3, 15.4],
            label: "최저 기온 (℃)",
            borderColor: "#3e95cd",
            fill: false
        }, {
            data: [24.0, 24.6, 27.9, 32.4, 36.8, 38.8, 40.6, 40.4, 38.7, 35.1, 30.5, 26.2],
            label: "최고기온 (℃)",
            borderColor: "#c45850",
            fill: false
        }]
    },
    options: {
        responsive:false,
        title: {
            display: true,
            text: '아랍 에미리트의 월 별 최고/최저 기온'
        },
        legend:{
            labels:{
                fontsize: 15
            }
        },
        hover: {
            mode: 'nearest',
            intersect: true
        }
    }
});