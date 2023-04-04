new Vue({
    el: "#app",
    vuetify: new Vuetify(),
    data() {
    return {
        year: null,
        mcr_no: "",
        loaded: false,

        IHIchartConfig: {
            labels: ["% of Completion"],
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
                text: 'IHI (Resident)'
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
                backgroundColor: ['#ff6b00','#ffedd5'],
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
                text: 'Duty Hours Logs (Resident)'
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
                    labelString: '% Submitted'
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
            labels: ["% of Completion"],
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
                text: 'Project (Resident)'
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
                    label: "Average Compliance (%)"
                    }
                ]
        },

        didacticOptions: {
                responsive: true,
                maintainAspectRatio: false,
                title: {
                    display: true,
                    text: 'Didactic Attendance (Resident)'
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

        var query = window.location.search.substring(4);
        this.mcr_no = query;
    },

    methods: {
        goToSinglePage(){
            window.location.assign("../tab_pages/personal_details.html")
        },
        getData: async function () {

            this.reset()
            this.status = "getting data...";

            specificURL = "http://localhost:5011/profile/" + this.mcr_no
            await axios.get(specificURL).then((response) => {
            this.getIHIchartData(response.data);
            this.getDutyHourData(response.data);
            this.getScholarlyChartData(response.data);
            this.getProjectData(response.data);
            this.getDidacticData(response.data);
            this.loaded = true
            })
            .catch(function (error) {
                console.log(error);
            });
        },
        
        reset: function (){
            this.dutyChartConfig.datasets[0].data.length = 0
            this.IHIchartConfig.datasets[0].data.length = 0
            this.scholarlyChartConfig.datasets[0].data.length = 0
            this.projectChartConfig.datasets[0].data.length = 0
            this.didacticChartConfig.datasets[0].data.length = 0
            this.loaded = false
        },

        getIHIchartData: function (chartData) {
            didResidentComplete = chartData.data.ihis[0]['Completion_of_Emodules']
            percentageCompletion = 0

            if (chartData.data.ihis[0]['Completion_of_Emodules'] == 'Yes') {
                percentageCompletion = 100
            }
            else {
                percentageCompletion = 0
            }
        
            this.IHIchartConfig.datasets[0].data.push(percentageCompletion)
            percentageCompletion = 0
            this.loaded = false
        },
        
        getDutyHourData: function (chartData) {
            percentCompliantJan = ''

            percentCompliantFeb = ''

            percentCompliantMar = ''

            percentCompliantApr = ''

            percentCompliantMay = ''

            percentCompliantJun = ''

            percentCompliantJul = ''

            percentCompliantAug = ''

            percentCompliantSep = ''

            percentCompliantOct = ''

            percentCompliantNov = ''

            percentCompliantDec = ''
            for (var i = 0; i < chartData.data.duty_hour_logs.length; i++) {

                if(('01'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantJan = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('02'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantFeb = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('03'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantMar = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('04'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantApr = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('05'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantMay = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('06'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantJun = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('07'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantJul = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('08'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantAug = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('09'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantSep = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('10'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantOct = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('11'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantNov = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
                else if (('12'.includes(chartData.data.duty_hour_logs[i]['MMYYYY'].substr(0,2)))){
                    percentCompliantDec = chartData.data.duty_hour_logs[i]['Submitted_Proportion']
                }
            }

            this.dutyChartConfig.datasets[0].data.push(percentCompliantJan)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantFeb)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantMar)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantApr)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantMay)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantJun)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantJul)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantAug)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantSep)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantOct)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantNov)

            this.dutyChartConfig.datasets[0].data.push(percentCompliantDec)
        },

        getScholarlyChartData: function (chartData) {
            percentageCompletion = 0
            percentageNonCompletion = 1
            count = 0
            hasTeachingPresentation = false
            hasAbstractPresentation = false
            const d = new Date();
            let year = d.getFullYear();

            if (chartData.data.publications.length > 0) {
                publicationArray = chartData.data.publications
                for (let i = 0; i < publicationArray.length; i++){
                    year1 = publicationArray[i]['Publication_Date'].slice(-2)
                    if (year1 == year - 2000){
                        count += 1
                    }
                }
            }

            if (chartData.data.presentations.length > 0){
                presentationArray = chartData.data.presentations
                if (presentationArray.length == 1){
                    if (presentationArray[0]['Presentation_Date'].slice(-4) == year){
                        count += 1
                    }
                }
                else {
                    for (let i = 0; i < presentationArray.length; i++){
                        if (presentationArray[i]['Presentation_Date'].slice(-4) == year){
                            if (presentationArray[i]['Type'].length == 0 && hasTeachingPresentation == false){
                                count += 1
                                hasTeachingPresentation = true
                            } 
                            if (presentationArray[i]['Type'].length > 0 && hasAbstractPresentation == false) {
                                count += 1
                                hasAbstractPresentation = true
                            }
                            if (hasAbstractPresentation == true && hasTeachingPresentation == true){
                                break
                            }
                        }   
                    }
                }
            }

            if (count != 0){
                percentageCompletion = count/3
                percentageNonCompletion = 1 - percentageCompletion
            }

            this.scholarlyChartConfig.datasets[0].data.push(percentageCompletion.toFixed(3))
            this.scholarlyChartConfig.datasets[0].data.push(percentageNonCompletion.toFixed(3))
            percentageCompletion = 0
            count = 0
            hasAbstractPresentation = false
            hasTeachingPresentation = false
            this.loaded = false
        },

        getProjectData: function (chartData) {
            didResidentComplete = null;
            percentageCompletion = 0

            if (chartData.data.projects[0]['End_Date'] == "Ongoing") {
                didResidentComplete = "No";
            }
            else {
                didResidentComplete = "Yes";
            }

            if (didResidentComplete == 'Yes') {
                percentageCompletion = 100
            }
            else {
                percentageCompletion = 0
            }
        
            this.projectChartConfig.datasets[0].data.push(percentageCompletion)
            percentageCompletion = 0
            this.loaded = false
        },

        getDidacticData: function (chartData) {
            this.didacticChartConfig.datasets[0].data = []

            counterCompliantJulDec = 0
            counterCompliantJanJune = 0
            percentCompliantJulDec = 0
            percentCompliantJanJune = 0

            totalPercentAttendedJulDec = 0
            totalPercentAttendedJanJune = 0

            numofJulDecEntries = 0
            numOfJanJuneEntries = 0

            specificResidentDidacticInformation = chartData.data.didactic_attendance

            for (var i = 0; i < specificResidentDidacticInformation.length; i++) {

                if (('JulyAugustSeptemberOctoberNovemberDecember'.includes(specificResidentDidacticInformation[i]['Month'])) && ((specificResidentDidacticInformation[i]['MmYyyy'].substr(-4)) == this.year)) {
                    numofJulDecEntries++
                    totalPercentAttendedJulDec =  totalPercentAttendedJulDec + parseFloat(specificResidentDidacticInformation[i]['Percentage_of_sessions_attended'])
                }

                else if (('JanuaryFebruaryMarchAprilMayJune'.includes(specificResidentDidacticInformation[i]['Month'])) && ((specificResidentDidacticInformation[i]['MmYyyy'].substr(-4)) == parseInt(this.year) + 1)) {
                    numOfJanJuneEntries++
                    totalPercentAttendedJanJune =  totalPercentAttendedJanJune + parseFloat(specificResidentDidacticInformation[i]['Percentage_of_sessions_attended'])
                }

            }

            percentCompliantJulDec = (totalPercentAttendedJulDec/numofJulDecEntries)
            percentCompliantJanJune = (totalPercentAttendedJanJune/numOfJanJuneEntries)

            this.didacticChartConfig.datasets[0].data.push((percentCompliantJulDec * 100).toFixed(3))
            this.didacticChartConfig.datasets[0].data.push((percentCompliantJanJune * 100).toFixed(3))
        },
    }
});