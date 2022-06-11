/*==================== Aus 최고 최저 기온차트 ====================*/
const aus_chart=new Chart(document.getElementById("line-chart_aus"), {
    type: 'line',
    data: {
        //x축
        labels: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
        datasets: [{
            data: [18.6, 18.7, 17.5, 14.6, 11.5, 9.2, 8.0, 8.9, 11.0, 13.5, 15.5, 17.5],
            label: "최저 기온 (℃)",
            borderColor: "#3e95cd",
            fill: false
        }, {
            data: [25.8, 25.7, 24.7, 22.3, 19.3, 16.8, 16.2, 17.7, 19.8, 22.0, 23.5, 25.1],
            label: "최고기온 (℃)",
            borderColor: "#c45850",
            fill: false
        }]
    },
    options: {
        responsive:false,
        title: {
            display: true,
            text: '호주의 월 별 최고/최저 기온'
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