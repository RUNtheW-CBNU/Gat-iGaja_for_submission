/*==================== france 최고 최저 기온차트 ====================*/
const f_chart=new Chart(document.getElementById("line-chart_f"), {
    type: 'line',
    data: {
        //x축
        labels: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
        datasets: [{
            data: [2.5,2.8,5.1,6.8,10.5,13.3,15.5,15.4,12.5,9.2,5.3,3.6],
            label: "최저 기온 (℃)",
            borderColor: "#3e95cd",
            fill: false
        }, {
            data: [6.9,8.2,11.8,14.7,19.0,21.8,24.4,24.6,20.8,15.8,10.4,7.8],
            label: "최고기온 (℃)",
            borderColor: "#c45850",
            fill: false
        }]
    },
    options: {
        responsive:false,
        title: {
            display: true,
            text: '프랑스의 월 별 최고/최저 기온'
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