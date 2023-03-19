new Vue({
    el: "#app",
    vuetify: new Vuetify(),
    data() {
    return {
        year: 2023,
        mcr_no: "",
        loaded: false,


        IHIchartConfig: {
            labels: ["Completed (%)", "Not Completed (%)"],
            datasets: [
                {
                data: [],
                backgroundColor: ['#ff6b00','#ffedd5'],
                borderColor: 'rgba(136,136,136,0.5)',
                label: "Compliant"
                }
            ]
            },
            IHIoptions: {
            responsive: true,
            maintainAspectRatio: false,
            title: {
                display: true,
                text: 'IHI (Overview)'
            },
            tooltips: {
                mode: 'index',
                intersect: false,
            },
            hover: {
                mode: 'nearest',
                intersect: true
            },
            scales: {
            }
            },




            dutyChartConfig: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                datasets: [
                    {
                    data: [],
                    fill: false,
                    backgroundColor: ['#ff6b00'],
                    borderColor: 'rgba(136,136,136,0.5)',
                    label: "Compliant"
                    }
                ]
                },
                dutyHourOptions: {
                responsive: true,
                maintainAspectRatio: false,
                title: {
                    display: true,
                    text: 'Duty Hours Logs (Overview)'
                },
                tooltips: {
                    mode: 'index',
                    intersect: false,
                },
                hover: {
                    mode: 'nearest',
                    intersect: true
                },
                scales: {
                    xAxes: [{
                    display: true,
                    categoryPercentage: 0.5,
                    scaleLabel: {
                        display: true,
                        labelString: 'Month'
                    }
                    }],
                    yAxes: [{
                    ticks : {
                    max : 1,    
                    min : 0
                    },
                    display: true,
                    scaleLabel: {
                        display: true,
                        labelString: '% Residents Submitted'
                    }
                    }]
                }
                },



        scholarlyChartConfig: {
            labels: ["% of Completion", "% of Non-Completioin"],
            datasets: [
                {
                data: [],
                backgroundColor: ['#ff6b00','#ffedd5'],
                borderColor: 'rgba(136,136,136,0.5)',
                label: ["Compliant", "Non-Compliant"]
                }
            ]
            },
            scholarlyOptions: {
                responsive: true,
                maintainAspectRatio: false,
                title: {
                    display: true,
                    text: 'Scholarly Activity (Resident)'
                },
                tooltips: {
                    mode: 'index',
                    intersect: false,
                },
                hover: {
                    mode: 'nearest',
                    intersect: true
                },
                scales: {
                }
            },


            projectChartConfig: {
                labels: ["Completed (%)", "Not Completed (%)"],
                datasets: [
                    {
                    data: [],
                    backgroundColor: ['#ff6b00','#ffedd5'],
                    borderColor: 'rgba(136,136,136,0.5)',
                    label: "Compliant"
                    }
                ]
            },
            projectOptions: {
                responsive: true,
                maintainAspectRatio: false,
                title: {
                    display: true,
                    text: 'Projects (Overview)'
                },
                tooltips: {
                    mode: 'index',
                    intersect: false,
                },
                hover: {
                    mode: 'nearest',
                    intersect: true
                },
                scales: {
                }
            },




            didacticChartConfig: {
                labels: ["Jul-Dec", "Jan-Jun"],
                datasets: [
                    {
                    data: [],
                    backgroundColor: '#ff6b00',
                    borderColor: 'rgba(136,136,136,0.5)',
                    label: "Compliant (%)"
                    }
                ]
            },
            didacticOptions: {
                responsive: true,
                maintainAspectRatio: false,
                title: {
                    display: true,
                    text: 'Didactic Attendance (Overview)'
                },
                tooltips: {
                    mode: 'index',
                    intersect: false,
                },
                hover: {
                    mode: 'nearest',
                    intersect: true
                },
                scales: {
                    xAxes: [{
                    display: true,
                    categoryPercentage: 0.5,
                    scaleLabel: {
                        display: true,
                        labelString: 'Month'
                    }
                    }],
                    yAxes: [{
                    ticks : {
                    max : 100,    
                    min : 0
                    },
                    display: true,
                    scaleLabel: {
                        display: true,
                        labelString: 'Percentage'
                        
                    }
                    }]
                }
            },
    }
    },
    mounted: function () {
        this.loaded = false
        // this.getSpecificDidacticAttendanceData();
        this.getIhiData();
        this.getDutyHourLogData()
        this.getProjectsData()
        },
    methods: {
        getIhiData: async function () {

            this.status = "getting data...";

            await axios.get("http://localhost:5011/ihi").then((response) => {
            // console.log("This is responseData")
            // console.log(response.data)

            this.getIHIchartData(response.data);
            this.loaded = true
            })
            .catch(function (error) {
                console.log(error);
            });
        },
        getIHIchartData: function (chartData) {
            // console.log("This is chartData")
            // console.log(chartData);

            counterCompletionEmodules = 0
            numOfEntries = 0
            percentageCompleted = 0
            percentageNotCompleted = 0

            for (var i = 0; i < chartData.data.length; i++) {
                numOfEntries++
                if (chartData.data[i]['Completion_of_Emodules'] == 'Yes') {
                    counterCompletionEmodules++
                }
            }

            // console.log(counterCompletionEmodules)
            // console.log(numOfEntries)

            percentageCompleted = counterCompletionEmodules/numOfEntries
            percentageNotCompleted = 1 - percentageCompleted

            this.IHIchartConfig.datasets[0].data.push(percentageCompleted * 100)
            this.IHIchartConfig.datasets[0].data.push(percentageNotCompleted * 100)

        },
        getDutyHourLogData: async function () {

            this.status = "getting data...";

            await axios.get("http://localhost:5011/duty_hour_log").then((response) => {
            // console.log(response.data)
            this.getDutyHourChartData(response.data);
            this.loaded = true
            })
            .catch(function (error) {
                console.log(error);
            });
            },
        getDutyHourChartData: function (chartData) {
            console.log(chartData.data);
            console.log('break1')

            numLogsJan = 0.0
            countCompliantJan = 0.0
            percentCompliantJan = 0.0

            numLogsFeb = 0.0
            countCompliantFeb = 0.0
            percentCompliantFeb = 0.0

            numLogsMar = 0.0
            countCompliantMar = 0.0
            percentCompliantMar = 0.0

            numLogsApr = 0.0
            countCompliantApr = 0.0
            percentCompliantApr = 0.0

            numLogsMay = 0.0
            countCompliantMay = 0.0
            percentCompliantMay = 0.0

            numLogsJun = 0.0
            countCompliantJun = 0.0
            percentCompliantJun = 0.0

            numLogsJul = 0.0
            countCompliantJul = 0.0
            percentCompliantJul = 0.0

            numLogsAug = 0.0
            countCompliantAug = 0.0
            percentCompliantAug = 0.0

            numLogsSep = 0.0
            countCompliantSep = 0.0
            percentCompliantSep = 0.0

            numLogsOct = 0.0
            countCompliantOct = 0.0
            percentCompliantOct = 0.0

            numLogsNov = 0.0
            countCompliantNov = 0.0
            percentCompliantNov = 0.0

            numLogsDec = 0.0
            countCompliantDec = 0.0
            percentCompliantDec = 0.0

            // NEED TO CALCULATE % OF RESIDENTS WITH FULL SUBMISSION FOR EACH MONTH
            // 
            // console.log(this.year.substr(2,4))
            // console.log(chartData.data.length)
            for (let i = 0; i < chartData.data.length; i++) {
                // console.log('ye')
                // console.log(chartData.data[i])
                if(this.year == chartData.data[i]['MMYYYY'].substr(3,7) ){
                    // console.log('yea')
                    if(('01'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                    numLogsJan = numLogsJan + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantJan += 1.0
                        }
                    }
                    else if (('02'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsFeb = numLogsFeb + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantFeb += 1.0
                        }
                    }
                    else if (('03'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsMar = numLogsMar + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantMar += 1.0
                        }
                    }
                    else if (('04'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsApr = numLogsApr + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantApr += 1.0
                        }
                    }
                    else if (('05'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsMay = numLogsMay + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantMay += 1.0
                        }
                    }
                    else if (('06'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsJun = numLogsJun + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantJun += 1.0
                        }
                    }
                    else if (('07'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsJul = numLogsJul + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantJul += 1.0
                        }
                    }
                    else if (('08'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsAug = numLogsAug + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantAug += 1.0
                        }
                    }
                    else if (('09'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsSep = numLogsSep + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantSep += 1.0
                        }
                    }
                    else if (('10'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsOct = numLogsOct + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantOct += 1.0
                        }
                    }
                    else if (('11'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsNov = numLogsNov + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantNov += 1.0
                        }
                    }
                    else if (('12'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsDec = numLogsDec + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantDec += 1.0
                            console.log('yes')
                        }
                    }
                }
            }
                

            if(countCompliantJan != 0 && numLogsJan != 0){
                percentCompliantJan = countCompliantJan/numLogsJan}
            // console.log(percentCompliantJan)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantJan)

            if(countCompliantFeb != 0 && numLogsFeb != 0){
                percentCompliantFeb = countCompliantFeb/numLogsFeb}
            // console.log(percentCompliantFeb)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantFeb)
            
            if(countCompliantMar != 0 && numLogsMar != 0){
                percentCompliantMar = countCompliantMar/numLogsMar}
            // console.log(percentCompliantJan)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantMar)

            if(countCompliantApr != 0 && numLogsApr != 0){
                percentCompliantApr = countCompliantApr/numLogsApr}
            // console.log(percentCompliantApr)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantApr)

            if(countCompliantMay != 0 && numLogsMay != 0){
                percentCompliantMay = countCompliantMay/numLogsMay}
            // console.log(percentCompliantMay)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantMay)

            if(countCompliantJun != 0 && numLogsJun != 0){
                percentCompliantJun = countCompliantJun/numLogsJun}
            // console.log(percentCompliantJun)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantJun)

            if(countCompliantJul != 0 && numLogsJul != 0){
                percentCompliantJul = countCompliantJul/numLogsJul}
            // console.log(percentCompliantJul)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantJul)

            if(countCompliantAug != 0 && numLogsAug != 0){
                percentCompliantAug = countCompliantAug/numLogsAug}
            // console.log(percentCompliantAug)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantAug)

            if(countCompliantSep != 0 && numLogsSep != 0){
                percentCompliantSep = countCompliantSep/numLogsSep}
            // console.log(percentCompliantSep)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantSep)

            if(countCompliantOct != 0 && numLogsOct != 0){
                percentCompliantOct = countCompliantOct/numLogsOct}
            // console.log(percentCompliantOct)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantOct)

            if(countCompliantNov != 0 && numLogsNov != 0){
                percentCompliantNov = countCompliantNov/numLogsNov}
            // console.log(percentCompliantNov)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantNov)

            if(countCompliantDec!= 0 && numLogsDec != 0){
                percentCompliantDec = countCompliantDec/numLogsDec}
            // console.log(percentCompliantDec)
            this.dutyChartConfig.datasets[0].data.push(percentCompliantDec)

            console.log(this.dutyChartConfig);
        },
        getProjectsData: async function () {

            this.status = "getting data...";

            await axios.get("http://localhost:5011/project").then((response) => {
            // console.log("This is responseData")
            // console.log(response.data)

            this.getProjectChartData(response.data);
            this.loaded = true
            })
            .catch(function (error) {
                console.log(error);
            });
        },
        getProjectChartData: function (chartData) {
            // console.log("This is chartData")
            // console.log(chartData)

            counterCompletionQI = 0
            numOfEntries = 0
            percentageCompleted = 0
            percentageNotCompleted = 0

            for (var i = 0; i < chartData.data.length; i++) {
                numOfEntries++
                if (chartData.data[i]['End_Date'] != 'Ongoing') {
                    counterCompletionQI++
                }
            }

            // console.log(counterCompletionQI)
            // console.log(numOfEntries)

            percentageCompleted = counterCompletionQI/numOfEntries
            percentageNotCompleted = 1 - percentageCompleted

            this.projectChartConfig.datasets[0].data.push((percentageCompleted * 100).toFixed(3))
            this.projectChartConfig.datasets[0].data.push((percentageNotCompleted * 100).toFixed(3))

        },






        getDidacticAttendanceData: async function () {

            this.status = "getting data...";

            await axios.get("http://localhost:5011/didactic_attendance").then((response) => {
            // console.log("This is responseData")
            // console.log(response.data)
        
            this.getDidacticChartData(response);
            this.loaded = false
            this.loaded = true
            })
            .catch(function (error) {
                console.log(error);
            });
        },
        getDidacticChartData: function (chartData) {
            // console.log("This is chartData")
            // console.log(chartData);

            counterCompliantJulDec = 0
            counterCompliantJanJune = 0
            percentCompliantJulDec = 0
            percentCompliantJanJune = 0

            numofJulDecEntries = 0
            numOfJanJuneEntries = 0

            nonCompliantResidents = []

            arrayOfDidacticAttendanceObjects = chartData.data.data

            for (var i = 0; i < arrayOfDidacticAttendanceObjects.length; i++) {

                if (('JulyAugustSeptemberOctoberNovemberDecember'.includes(arrayOfDidacticAttendanceObjects[i]['Month'])) && ((arrayOfDidacticAttendanceObjects[i]['MmYyyy'].substr(-4)) == this.year)) {
                    numofJulDecEntries++
                    if (arrayOfDidacticAttendanceObjects[i]['Compliance_or_Not'] == 'Yes') {
                        counterCompliantJulDec = counterCompliantJulDec + 1;
                    }
                    else if (arrayOfDidacticAttendanceObjects[i]['Compliance_or_Not'] == 'No') {
                        nonCompliantResidents.push(arrayOfDidacticAttendanceObjects[i])
                    }
                }

                else if (('JanuaryFebruaryMarchAprilMayJune'.includes(arrayOfDidacticAttendanceObjects[i]['Month'])) && ((arrayOfDidacticAttendanceObjects[i]['MmYyyy'].substr(-4)) == parseInt(this.year) + 1)) {
                    numOfJanJuneEntries++
                    if (arrayOfDidacticAttendanceObjects[i]['Compliance_or_Not'] == 'Yes') {
                        counterCompliantJanJune = counterCompliantJanJune + 1;
                    }
                    else if (arrayOfDidacticAttendanceObjects[i]['Compliance_or_Not'] == 'No') {
                        nonCompliantResidents.push(arrayOfDidacticAttendanceObjects[i])
                    }
                }

            }
            
            if (counterCompliantJulDec == 0) {
                percentCompliantJulDec = 0
            }
            else {
                percentCompliantJulDec = counterCompliantJulDec/numofJulDecEntries 
            }

            if (counterCompliantJanJune == 0) {
                percentCompliantJanJune = 0
            }
            else {
                percentCompliantJanJune = counterCompliantJanJune/numOfJanJuneEntries 
            }

            // console.log("counter compliant")
            // console.log(counterCompliantJulDec)
            // console.log(counterCompliantJanJune)

            // console.log("num entries")
            // console.log(numofJulDecEntries)
            // console.log(numOfJanJuneEntries)

            // console.log("percentages")
            // console.log(percentCompliantJulDec)
            // console.log(percentCompliantJanJune)

            this.didacticChartConfig.datasets[0].data.push((percentCompliantJulDec * 100).toFixed(3))
            this.didacticChartConfig.datasets[0].data.push((percentCompliantJanJune * 100).toFixed(3))

        }
        
    }
});