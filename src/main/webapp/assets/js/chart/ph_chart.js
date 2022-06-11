/*==================== Ph 최고 최저 기온차트 ====================*/
const ph_chart=new Chart(document.getElementById("line-chart_ph"), {
    type: 'line',
    data: {
        //x축
        labels: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
        datasets: [{
            data: [23.5, 23.8, 24.9, 26.2, 26.7, 26.2, 25.8, 25.5, 25.5, 25.5, 24.9, 23.9],
            label: "최저 기온 (℃)",
            borderColor: "#3e95cd",
            fill: false
        }, {
            data: [29.5, 30.5, 32.1, 33.5, 33.2, 32.2, 31.1, 30.6, 30.9, 30.9, 30.7, 29.7],
            label: "최고기온 (℃)",
            borderColor: "#c45850",
            fill: false
        }]
    },
    options: {
        responsive:false,
        title: {
            display: true,
            text: '필리핀의 월 별 최고/최저 기온'
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