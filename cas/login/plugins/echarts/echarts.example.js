var myChart_pie = echarts.init(document.getElementById('echart_pie'));
var option_pie = {
    tooltip : {
        trigger: 'item',
        formatter: "{c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        right: 'right',
        top: 'center',
        data: ['实验一','实验二','实验三','实验四']
    },
    series : [
        {
            name: '实验',
            type: 'pie',
            radius : '55%',
            center: ['40%', '50%'],
            data:[
                {value:335, name:'实验一'},
                {value:310, name:'实验二'},
                {value:234, name:'实验三'},
                {value:1548, name:'实验四'}
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};
myChart_pie.setOption(option_pie);


var myChart_bar = echarts.init(document.getElementById('echart_bar'));
var option_bar = {
    xAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    },
    yAxis: {
        type: 'value'
    },
    series: [{
        data: [120, 200, 150, 80, 70, 110, 130],
        type: 'bar'
    }]
};
myChart_bar.setOption(option_bar);




