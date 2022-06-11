/*==================== Us 최고 최저 기온차트 ====================*/
const us_chart=new Chart(document.getElementById("line-chart_us"), {
    type: 'line',
    data: {
        //x축
        labels: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
        datasets: [{
            data: [-3.9, -3.2, 1.1, 6.0, 11.3, 16.6, 20.1, 19.6, 15.6, 9.6, 4.7, -0.8],
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
            text: '미국의 월 별 최고/최저 기온'
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