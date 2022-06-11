/*==================== UK 최고 최저 기온차트 ====================*/
const uk_chart=new Chart(document.getElementById("line-chart_uk"), {
    type: 'line',
    data: {
        //x축
        labels: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
        datasets: [{
            data: [2.4, 2.5, 3.8, 5.6, 8.7, 11.6, 13.7, 13.4, 11.4, 8.9, 5.1, 3.4 ],
            label: "최저 기온 (℃)",
            borderColor: "#3e95cd",
            fill: false
        }, {
            data: [7.2, 7.6, 10.3, 13.0, 17.0, 20.3, 22.3, 21.9, 19.1, 15.2, 10.4, 8.2],
            label: "최고기온 (℃)",
            borderColor: "#c45850",
            fill: false
        }]
    },
    options: {
        responsive:false,
        title: {
            display: true,
            text: '영국의 월 별 최고/최저 기온'
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
