new Vue({
    el: "#app",
    vuetify: new Vuetify(),
    data() {
    return {
        year: 2022,
        programme: "Gastroenterology",
        mcr_no: "",
        nonCompliantResident: "",

        showDidacticTable: false,
        showIHITable: false,
        showProjectsTable: false,
        showProcedureLogsTable: false,

        nonCompliantResidentDidacticArray: [],
        nonCompliantResidentIHIArray: [],
        nonCompliantResidentProjectsArray: [],
        nonCompliantResidentProcedureLogsArray: [],
        showNonCompliantResidentsInput: false,

        showDutyTable: false,
        showScholarlyTable: false,
        showCaseTable: false,

        nonCompliantResidentDutyArray: [],
        nonCompliantResidentScholarlyArray: [],
        nonCompliantResidentCaseArray: [],

        programmes2: ["Gastroenterology", 'Renal Medicine', 'Internal Medicine'],

        charts: ['Didactic Attendance', 'Scholarly Activities', 'IHI', 'Projects', 'Duty Hour Logs', 'Case Logs', 'Procedure Logs'],

        // loaded: false,

        ihiLoaded:false,
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

        dutyLoaded:false,
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

        total: 0,
        scholarlyPassed: 0,
        scholarlyMissing: 0,
        // chartArray: [],
        mcr_arr: [],
        scholarlyChartData: "",
        scholarlyChartArray: [],
        scholarlyLoaded: false,
        mcr_no: null,
        scholarlyChartConfig: {
            labels: ["% of Completed", "% of Not Completed"],
            datasets: [{
                data: [],
                backgroundColor: ['#ff6b00', '#ffedd5'],
                borderColor: 'rgba(136,136,136,0.5)',
                label: ["Compliant", "Non-Compliant"]
            }]
        },
        scholarlyOptions: {
            responsive: true,
            maintainAspectRatio: false,
            title: {
                display: true,
                text: 'Scholarly Activity (Overview)'
            },
            tooltips: {
                mode: 'index',
                intersect: false,
            },
            hover: {
                mode: 'nearest',
                intersect: true
            },
            scales: {}
        },

        projectsLoaded:false,
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

        didacticLoaded:false,
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

        caseLoaded: false,
        caseChartData: "",
        casePassed: 0,
        caseChartArray: [],
        caseMcr_no: null,
        caseChartConfig: {
            labels: ["% of Completion", "% of Non-Completioin"],
            datasets: [{
                data: [],
                backgroundColor: ['#ff6b00','#ffedd5'],
                borderColor: 'rgba(136,136,136,0.5)',
                label: ["Compliant", "Non-Compliant"]
                }]
        },
        caseOptions: {
                responsive: true,
                maintainAspectRatio: false,
                title: {
                    display: true,
                    text: 'Case Logs (Overview)'
                },
                tooltips: {
                    mode: 'index',
                    intersect: false,
                },
                hover: {
                    mode: 'nearest',
                    intersect: true
                },
                scales: {}
        },

        procedureLoaded: false,
        procedureChartConfig: {
            labels: ["Jan-Jun", "Jul-Dec"],
            datasets: [
                {
                data: [],
                backgroundColor: '#ff6b00',
                borderColor: 'rgba(136,136,136,0.5)',
                label: "Compliance Level (%)"
                }
            ]
            },
        procedureOptions: {
            responsive: true,
            maintainAspectRatio: false,
            title: {
                display: true,
                text: 'Procedure Log (Overview)'
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
                ticks : {
                max : 100,    
                min : 0
                },
                display: true,
                categoryPercentage: 0.5,
                scaleLabel: {
                    display: true,
                    labelString: 'Percentage of Compliance'
                }
                }],
                yAxes: [{
                display: true,
                scaleLabel: {
                    display: true,
                    labelString: 'Procedure Name'
                    
                }
                }]
            }
        },

            
    }
    },
    mounted: function () {
        this.getIhiData();
        this.getDutyHourLogData()
        this.getProjectsData()
        this.getDidacticAttendanceData()
        this.getScholarlyActivitiesData();
        this.getCaseLogsData();
        this.getProcedureLogData();

        specificURL = "http://localhost:5011/personaldetail"
        axios.get(specificURL)
            .then(response => {
                this.total = response.data.data.length
                for (i = 0; i < response.data.data.length; i++) {
                    this.mcr_arr.push(response.data.data[i].MCR_No)
                }
                // this.getScholarlyActivitiesData();
                // this.getAllData()

            })
            .catch(function (error) {
                console.log(error);
                this.scholarlyMissing += 1
            });

            setTimeout(() => {
                this.getAllData();
            }, 500); // 5000 milliseconds (5 seconds)
        },
    methods: {
        getAllData: function(){
            this.reset()
            this.showNonCompliantResidentsInput = false
            this.showNonCompliantResidentsInput = true
            this.getIhiData();
            this.getDutyHourLogData()
            this.getProjectsData()
            this.getDidacticAttendanceData()
            this.getScholarlyActivitiesData();
            this.getCaseLogsData();
            this.getProcedureLogData();
        },
        reset: function (){
            this.didacticLoaded = false
            this.scholarlyLoaded = false
            this.ihiLoaded = false
            this.projectsLoaded = false
            this.dutyLoaded = false
            this.procedureLoaded = false
            this.caseLoaded = false
            this.dutyChartConfig.datasets[0].data.length = 0
            this.IHIchartConfig.datasets[0].data.length = 0
            this.scholarlyChartConfig.datasets[0].data.length = 0
            this.projectChartConfig.datasets[0].data.length = 0
            this.didacticChartConfig.datasets[0].data.length = 0
            this.caseChartConfig.datasets[0].data.length = 0
            this.scholarlyPassed = 0
            this.casePassed = 0
        },

        getCaseLogsData: async function () {
            // get all residents

            nonCompliantResidentsCase = []
            result1 = false
            for (each of this.mcr_arr) {
                // console.log(this.getResidentData(each))
                result1 = await this.getResidentCaseData(each)
                if ( result1 == true) {
                    this.casePassed += 1 // if compliant
                }
                else {
                    nonCompliantResidentsCase.push(each)
                }
            }

            this.nonCompliantResidentCaseArray = nonCompliantResidentsCase
            console.log("non-compliant resident case array:" + this.nonCompliantResidentCaseArray)

            console.log(this.casePassed)

            // need to wait for the getResidentData to add to the this.passed first before calling the this.getChartData
            this.caseChartArray = [this.casePassed, this.total, this
            .missing]; //getChartdata will use to show visualisation

            console.log('this is chartArray')
            console.log(this.caseChartArray)

            this.getCaseChartData(this.caseChartArray); // it works
            this.caseLoaded = true
        },

        getResidentCaseData: async function(mcr) {
            specificURL = "http://localhost:5011/profile/"  + mcr
            toAdd = false

            await axios.get(specificURL).then((response) => {
                this.caseChartData = response.data
                })
                .catch(function (error) {
                    console.log(error);
                    this.caseMissing += 0
                });

            // console.log('caseChartData' + this.caseChartData)

            // check compliance for resident
            percentageCompletion = 0
            // percentageNonCompletion = 1

            percentageCompletionI = 0
            percentageCompletionO = 0
            percentageCompletionB = 0

            countIntR = 0
            countIntI = 0
            countIntO = 0
            countIntB = 0

            console.log(this.caseChartData.data.case_logs.length)
            for(let i = 0; i < this.caseChartData.data.case_logs.length; i++){
                // 1. check programme under personal details
                // console.log(chartData.data.personaldetails['Programme'])
                // console.log(i)
                if(this.caseChartData.data.case_logs[i]['Date_of_Log'].substr(-4,4) == this.year){
                    if (this.caseChartData.data.personaldetails['Programme'] == 'Renal Medicine'){
                        // 2. if renal, check 10 transplant credit type by SR 2
                        console.log('renal')
                        if(this.caseChartData.data.case_logs[i]['Type_of_Case_Log'] == 'transplant credit'){
                            console.log('transplant credit')
                            countIntR = parseInt(this.caseChartData.data.case_logs[0]['Observed'])
                            if(countIntR > 0 && countIntR < 10){
                                percentageCompletion = countIntR / 10
                                percentageNonCompletion = 1 - percentageCompletion
                                }
                            else if (countIntR >= 10){
                                percentageCompletionInpatient = 1
                                percentageNonCompletionInpatient = 0
                                }
                            }
                        }
                    else if (this.caseChartData.data.personaldetails.Programme == 'Internal Medicine'){
                        // console.log('yes')
                        // 3. if internal medicine, check 3 inpatient and 3 outpatient each year
                        if(this.caseChartData.data.case_logs[i]['Type_of_Case_Log'] == 'inpatient'){
                            console.log('inpatient')
                            countIntI = parseInt(this.caseChartData.data.case_logs[0]['Observed'])
                            if(countIntI > 0 && countIntI < 3){
                                percentageCompletionI = countIntI / 9
                                }
                            else if (countIntI >= 3){
                                percentageCompletionI = 1/3
                                }
                            }
                        if(this.caseChartData.data.case_logs[i]['Type_of_Case_Log'] == 'outpatient'){
                            console.log('outpatient')
                            countIntO = parseInt(this.caseChartData.data.case_logs[0]['Observed'])
                            if(countIntO > 0 && countIntO < 3){
                                percentageCompletionO = countIntO / 9
                                }
                            else if (countIntO >= 3){
                                percentageCompletionO = 1/3
                                }
                            }
                        if(this.caseChartData.data.case_logs[i]['Type_of_Case_Log'] == 'blue letter'){
                            console.log('blue letter')
                            countIntB = parseInt(this.caseChartData.data.case_logs[0]['Observed'])
                            if(countIntR > 0 && countIntB < 3){
                                percentageCompletionB = countIntB / 9
                                }
                            else if (countIntB >= 3){
                                percentageCompletionB = 1/3
                                }
                            }
                        percentageCompletion = percentageCompletionI + percentageCompletionO + percentageCompletionB
                    // percentageNonCompletion = 1 - percentageCompletion
                        }
                    }
                }

            console.log('percentageCompletionResident')
            console.log(percentageCompletion)
            if (percentageCompletion == 1){
                toAdd = true
            }
            console.log("toAdd:" + toAdd)
            return toAdd    
        },

        getCaseChartData: function (chartData) {
            // console.log("This is chartData")
            // console.log(chartData);
            passedResident = 0
            totalResident = 0
            percentageCompletion = 0.0
            percentageNonCompletion = 0.0

            passedResident = chartData[0]
            totalResident = chartData[1]
            percentageCompletion = (passedResident/totalResident) * 100
            percentageNonCompletion = 100 - percentageCompletion
            this.caseChartConfig.datasets[0].data.push(percentageCompletion.toFixed(3))
            this.caseChartConfig.datasets[0].data.push(percentageNonCompletion.toFixed(3))
            this.caseLoaded = false
        },

        getScholarlyActivitiesData: async function () {
            // get all residents
            nonCompliantResidentsScholarly = []
            result2 = false
            console.log('mcr_arr length: ' + this.mcr_arr.length)
            for (each of this.mcr_arr) {
                // console.log(this.getResidentData(each))
                result2 = await this.getResidentScholarlyData(each)
                if (result2 == true) {
                    this.scholarlyPassed += 1 // if compliant
                }
                else{
                    nonCompliantResidentsScholarly.push(each)
                }
            }
            this.nonCompliantResidentScholarlyArray = nonCompliantResidentsScholarly


            // need to wait for the getResidentData to add to the this.scholarlyPassed first before calling the this.getScholarlyChartData
            this.scholarlyChartArray = [this.scholarlyPassed, this.total, this.missing]; //getScholarlyChartData will use to show visualisation

            console.log('this is chartArray')
            console.log(this.scholarlyChartArray)

            this.getScholarlyChartData(this.scholarlyChartArray); // it works
            this.scholarlyLoaded = true
        },

        getResidentScholarlyData: async function (mcr) {
            specificURL = "http://localhost:5011/profile/" + mcr
            console.log(specificURL)
            toAdd = false;

            await axios.get(specificURL).then((response) => {
                    this.scholarlyChartData = response.data
                })
                .catch(function (error) {
                    console.log(error);
                    this.scholarlyMissing += 0
                });
            
            // check compliance for resident
            percentageCompletion = 0
            count = 0
            hasTeachingPresentation = false
            hasAbstractPresentation = false
            hasPublication = false
            // const d = new Date();
            // let year = d.getFullYear();
            // var toAdd = false;

            if (this.scholarlyChartData.data.publications.length > 0) {
                publicationArray = this.scholarlyChartData.data.publications
                console.log(publicationArray,'==============')
                for (let i = 0; i < publicationArray.length; i++) {
                    year1 = parseInt(publicationArray[i]['Publication_Date'].slice(-2))
                    year2 = parseInt(this.year) - 2000
                    if ((year1 == year2 ) && hasPublication == false) {
                        count += 1
                        hasPublication = true
                        console.log('publication')
                    }
                }
            }
            if (this.scholarlyChartData.data.presentations.length > 0) {
                presentationArray = this.scholarlyChartData.data.presentations
                console.log("presentationArray" + presentationArray.data,'==============')
                // console.log(presentationArray)
                if (presentationArray.length == 1) {
                    if (parseInt(presentationArray[0]['Presentation_Date'].slice(-4)) ==
                        year2) {
                        count += 1

                    }
                } else {
                    for (let i = 0; i < presentationArray.length; i++) {
                        if (parseInt(presentationArray[i]['Presentation_Date'].slice(-
                                2)) == year2) {
                            if (presentationArray[i]['Type'].length == 0 &&
                                hasTeachingPresentation == false) {
                                count += 1
                                console.log('teaching')
                                hasTeachingPresentation = true
                            }
                            if (presentationArray[i]['Type'].length > 0 &&
                                hasAbstractPresentation == false) {
                                count += 1
                                console.log('abstract')
                                hasAbstractPresentation = true
                            }
                            if (hasAbstractPresentation == true &&
                                hasTeachingPresentation == true) {
                                break
                            }
                        }
                    }
                }
            }
            if (count != 0) {
                percentageCompletion = count / 3
                // console.log('percentageCompletion1')
                // console.log(percentageCompletion)
            }
            console.log('percentageCompletion2')
            console.log(percentageCompletion)
            if (percentageCompletion == 1) {
                console.log('true')
                toAdd = true;
            }
            return toAdd;
        },

        getScholarlyChartData: function (chartData) {
            
            passedResident = 0
            totalResident = 0
            percentageCompletion = 0.0
            percentageNonCompletion = 0.0

            passedResident = chartData[0]
            totalResident = chartData[1]
            percentageCompletion = (passedResident / totalResident) * 100
            percentageNonCompletion = 100 - percentageCompletion
            this.scholarlyChartConfig.datasets[0].data.push(percentageCompletion.toFixed(3))
            this.scholarlyChartConfig.datasets[0].data.push(percentageNonCompletion.toFixed(3))
            
        },

        getIhiData: async function () {

            this.status = "getting data...";

            await axios.get("http://localhost:5011/ihi").then((response) => {

            this.getIHIchartData(response.data);
            this.ihiLoaded = true
            })
            .catch(function (error) {
                console.log(error);
            });
        },

        getIHIchartData: function (chartData) {

            counterCompletionEmodules = 0
            numOfEntries = 0
            percentageCompleted = 0
            percentageNotCompleted = 0

            nonCompliantResidents = []

            for (var i = 0; i < chartData.data.length; i++) {
                if (chartData.data[i]['Date'].substr(-4,4) == this.year) {
                    numOfEntries++
                    if (chartData.data[i]['Completion_of_Emodules'] == 'Yes' ) {
                        counterCompletionEmodules++
                    }
                    else {
                        nonCompliantResidents.push(chartData.data[i])
                    }
                }
            }

            percentageCompleted = counterCompletionEmodules/numOfEntries
            percentageNotCompleted = 1 - percentageCompleted

            this.IHIchartConfig.datasets[0].data.push(percentageCompleted * 100)
            this.IHIchartConfig.datasets[0].data.push(percentageNotCompleted * 100)

            this.nonCompliantResidentIHIArray = nonCompliantResidents

        },

        getDutyHourLogData: async function () {

            this.status = "getting data...";

            await axios.get("http://localhost:5011/duty_hour_log").then((response) => {
            // console.log(response.data)
            this.getDutyHourChartData(response.data);
            this.dutyLoaded = true
            })
            .catch(function (error) {
                console.log(error);
            });
        },
        
        getDutyHourChartData: function (chartData) {
            // this.year = "2022"
            // console.log(this.year)
            console.log(chartData.data);
            // console.log('break1')
            nonCompliantResidents = []

            numLogsJan = 0.0
            countCompliantJan = 0.0
            percentCompliantJan = 0.0
            console.log('1')

            numLogsFeb = 0.0
            countCompliantFeb = 0.0
            percentCompliantFeb = 0.0
            console.log('2')

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

            // console.log('alsdjkf')

            for (let i = 0; i < chartData.data.length; i++) {
                // console.log('ye')
                // console.log(chartData.data[i])
                totalCount = 0.0
                if(this.year == chartData.data[i]['MMYYYY'].substr(3,7) ){
                    // console.log('yea')
                    if(('01'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                    numLogsJan = numLogsJan + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantJan += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('02'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsFeb = numLogsFeb + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantFeb += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('03'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsMar = numLogsMar + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantMar += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('04'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsApr = numLogsApr + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantApr += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('05'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsMay = numLogsMay + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantMay += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('06'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsJun = numLogsJun + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantJun += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('07'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsJul = numLogsJul + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantJul += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('08'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsAug = numLogsAug + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantAug += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('09'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsSep = numLogsSep + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantSep += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('10'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsOct = numLogsOct + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantOct += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('11'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsNov = numLogsNov + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantNov += 1.0
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                    else if (('12'.includes(chartData.data[i]['MMYYYY'].substr(0,2)))){
                        numLogsDec = numLogsDec + 1.0
                        if(chartData.data[i]['Submitted_Proportion'] == '1'){
                            countCompliantDec += 1.0
                            // console.log('yes')
                        }
                        else {                            
                            totalCount += 1.0
                        }
                    }
                }
                if (totalCount > 0.0){
                    nonCompliantResidents.push(chartData.data[i])
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

            this.nonCompliantResidentDutyArray = nonCompliantResidents
            console.log('noncompliant resident duty:' + this.nonCompliantResidentDutyArray)
            console.log('this is dutyChartConfig')
            console.log(this.dutyChartConfig);
        },

        getProjectsData: async function () {

            this.status = "getting data...";

            await axios.get("http://localhost:5011/project").then((response) => {

            this.getProjectChartData(response.data);
            this.projectsLoaded = true
            })
            .catch(function (error) {
                console.log(error);
            });
        },

        getProjectChartData: function (chartData) {

            counterCompletionQI = 0
            numOfEntries = 0
            percentageCompleted = 0
            percentageNotCompleted = 0

            nonCompliantResidents = []

            for (var i = 0; i < chartData.data.length; i++) {
                var currentData = chartData.data[i];
                if (currentData['Start_Date'].substr(-4,4) == this.year) {
                    if (currentData['End_Date'] === 'Ongoing') {
                        var mcrNo = currentData['MCR_No'];
                        var isMcrNoPresent = false;
                        for (var j = 0; j < nonCompliantResidents.length; j++) {
                            if (nonCompliantResidents[j]['MCR_No'] === mcrNo) {
                                isMcrNoPresent = true;
                                break;
                            }
                        }
                        if (!isMcrNoPresent) {
                            nonCompliantResidents.push(currentData);
                        }
                    }
                    numOfEntries++;
                    if (currentData['End_Date'] !== 'Ongoing') {
                        counterCompletionQI++;
                    }
                }

            }

            percentageCompleted = counterCompletionQI/numOfEntries
            percentageNotCompleted = 1 - percentageCompleted

            this.projectChartConfig.datasets[0].data.push((percentageCompleted * 100).toFixed(3))
            this.projectChartConfig.datasets[0].data.push((percentageNotCompleted * 100).toFixed(3))

            this.nonCompliantResidentProjectsArray = nonCompliantResidents

        },

        getDidacticAttendanceData: async function () {

            this.status = "getting data...";

            await axios.get("http://localhost:5011/didactic_attendance").then((response) => {

            this.getDidacticChartData(response);
            this.didacticLoaded = true
            })
            .catch(function (error) {
                console.log(error);
            });
        },
        
        getDidacticChartData: function (chartData) {
            console.log(this.year)

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

            this.didacticChartConfig.datasets[0].data.push((percentCompliantJulDec * 100).toFixed(3))
            this.didacticChartConfig.datasets[0].data.push((percentCompliantJanJune * 100).toFixed(3))

            this.nonCompliantResidentDidacticArray = nonCompliantResidents

        }, 

        getProcedureLogData: async function () {

            this.status = "getting data...";

            await axios.get("http://localhost:5011/procedure_log_data").then((response) => {

            this.getProcedureChartData(response);
            this.procedureLoaded = true
            
            })
            .catch(function (error) {
                console.log(error);
            });
        },

        getProcedureChartData: function (chartData) {      
            let array_of_logs = chartData.data.data

            let gastro_array = []
            let renal_array = []
            let internal_array = []

            // go through each and every procedure log
            // split them into 3 arrays (gastro, renal and internal)
            for (let i = 0; i < array_of_logs.length; i++) {

                if (array_of_logs[i]['Programme'] == "Gastroenterology") {
                    gastro_array.push(array_of_logs[i])
                }

                else if (array_of_logs[i]['Programme'] == "Renal Medicine") {
                    renal_array.push(array_of_logs[i])
                }

                else if (array_of_logs[i]['Programme'] == "Internal Medicine") {
                    internal_array.push(array_of_logs[i])
                }

            }

            // if user chose Gastroenterology 
            if (this.programme == "Gastroenterology") {

                console.log("reached here")
                const Gastro = ["Gastroscopy (OGD)", "Gastroscopy (OGD) with biopsy", "Gastroscopy (OGD) with non-variceal hemostasis; not actively bleeding","Gastroscopy (OGD) with non-variceal hemostasis; actively bleeding", "Colonoscopy with non-variceal hemostasis; not actively bleeding", "Colonoscopy with non-variceal hemostasis; actively bleeding","Colonoscopy", "Colonoscopy with biopsy", "Colonoscopy with polypectomy","Abdominal paracentesis", "Capsule endoscopy", "Percutaneous Endoscopic Gastrostomy (PEG)","Gastroscopy with variceal hemostasis; active bleeding", "Gastroscopy with variceal hemostasis; not actively bleeding", "Gastroscopy with variceal ligation; elective eradication","Liver biopsy", "Esophageal dilatation", "Luminal Stenting","Endoscopic mucosal resection (EMR) / Endoscopic submucosal dissection (ESD)", "Endoscopic Retrograde and Cholangiocpancreatography (ERCP)", "Endoscopic ultrasound", "Esophageal motility / pH studies"]
                this.procedureChartConfig.labels = Gastro
                this.procedureOptions.title.text = "Procedure Log (Gastro Programme)"

                nonCompliantResidentsGastro = []

                GastroOGDPlusGastroOGDWithBiopsy = []
                TotalDoneGastroOGDPlusGastroOGDWithBiopsy = 0
                CountGastroOGDPlusGastroOGDWithBiopsy = 0
                NumComplianceGastroOGDPlusGastroOGDWithBiopsy = 0
        
                GastroOGDPlusColon = []
                TotalDoneGastroOGDPlusColon = 0
                CountGastroOGDPlusColon = 0
                NumComplianceGastroOGDPlusColon = 0
                GastroOGDPlusColonAdditionalReqNum = 0

                ColonoscopyPlusColonoscopyWithBiopsy = []
                TotalDoneColonoscopyPlusColonoscopyWithBiopsy = 0
                CountColonoscopyPlusColonoscopyWithBiopsy = 0
                NumComplianceColonoscopyPlusColonoscopyWithBiopsy = 0

                ColonoscopyWithPolypectomy = []
                TotalDoneColonoscopyWithPolypectomy = 0
                CountColonoscopyWithPolypectomy = 0
                NumComplianceColonoscopyWithPolypectomy = 0

                AbdominalParacentesis = []
                TotalDoneAbdominalParacentesis = 0
                CountAbdominalParacentesis = 0
                NumComplianceAbdominalParacentesis = 0

                CapsuleEndoscopy = []
                TotalDoneCapsuleEndoscopy = 0
                CountCapsuleEndoscopy = 0
                NumComplianceCapsuleEndoscopy = 0

                Peg = []
                TotalDonePeg = 0
                CountPeg = 0
                NumCompliancePeg = 0

                GastroVaricealHemoPlusLigation = []
                TotalDoneGastroVaricealHemoPlusLigation = 0
                CountGastroVaricealHemoPlusLigation = 0
                NumComplianceGastroVaricealHemoPlusLigation = 0
                GastroVaricealHemoPlusLigationAdditionalReqNum = 0

                LiverBiopsy = []
                TotalDoneLiverBiopsy = 0
                CountLiverBiopsy = 0
                NumComplianceLiverBiopsy = 0

                EsophagealDilatationPlusLuminalStenting = []
                TotalDoneEsophagealDilatationPlusLuminalStenting = 0
                CountEsophagealDilatationPlusLuminalStenting = 0
                NumComplianceEsophagealDilatationPlusLuminalStenting = 0

                EmrPlusEsd = []
                TotalDoneEmrPlusEsd = 0
                CountEmrPlusEsd = 0
                NumComplianceEmrPlusEsd = 0

                Ercp = []
                TotalDoneErcp = 0
                CountErcp = 0
                NumComplianceErcp = 0

                EndoscopicUltrasound = []
                TotalDoneEndoscopicUltrasound = 0
                CountEndoscopicUltrasound = 0
                NumComplianceEndoscopicUltrasound = 0

                EsophagealMotilityPlusPh = []
                TotalDoneEsophagealMotilityPlusPh = 0
                CountEsophagealMotilityPlusPh = 0
                NumComplianceEsophagealMotilityPlusPh = 0

                const groups = []

                // go through each Gastro log
                for (let j = 0; j < gastro_array.length; j++) {

                    gastro_array[j] //each gastro log
                    let procedure_name = gastro_array[j]['Procedure_Name'] // each gastro log's procedure name
                    // if name matches, push into respective procedure array
                    if (procedure_name == Gastro[0] || procedure_name == Gastro[1]) {
                        GastroOGDPlusGastroOGDWithBiopsy.push(gastro_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Gastro[2] || procedure_name == Gastro[3] || procedure_name == Gastro[4] || procedure_name == Gastro[5]) {
                        GastroOGDPlusColon.push(gastro_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Gastro[6] || procedure_name == Gastro[7]) {
                        ColonoscopyPlusColonoscopyWithBiopsy.push(gastro_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Gastro[8]) {
                        ColonoscopyWithPolypectomy.push(gastro_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Gastro[9]) {
                        AbdominalParacentesis.push(gastro_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Gastro[10]) {
                        CapsuleEndoscopy.push(gastro_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Gastro[11]) {
                        Peg.push(gastro_array[j])
                    }

                    else if (procedure_name == Gastro[12] || procedure_name == Gastro[13] || procedure_name == Gastro[14]) {
                        GastroVaricealHemoPlusLigation.push(gastro_array[j])
                    }

                    else if (procedure_name == Gastro[15]) {
                        LiverBiopsy.push(gastro_array[j])
                    }

                    else if (procedure_name == Gastro[16] || procedure_name == Gastro[17]) {
                        EsophagealDilatationPlusLuminalStenting.push(gastro_array[j])
                    }

                    else if (procedure_name == Gastro[18]) {
                        EmrPlusEsd.push(gastro_array[j])
                    }

                    else if (procedure_name == Gastro[19]) {
                        Ercp.push(gastro_array[j])
                    }

                    else if (procedure_name == Gastro[20]) {
                        EndoscopicUltrasound.push(gastro_array[j])
                    }
                    
                    else if (procedure_name == Gastro[21]) {
                        EsophagealMotilityPlusPh.push(gastro_array[j])
                    }

                }
                
                // grouped1 contains GastroOGD plus GastroOGDWithBiopsy records, split into different residents
                let grouped1 = {};
                for (let i=0; i<GastroOGDPlusGastroOGDWithBiopsy.length; i++) {
                    let p = GastroOGDPlusGastroOGDWithBiopsy[i]['MCR_No'];
                    if (!grouped1[p]) { grouped1[p] = []; }
                    grouped1[p].push(GastroOGDPlusGastroOGDWithBiopsy[i]);
                }

                CountGastroOGDPlusGastroOGDWithBiopsy = Object.keys(grouped1).length

                // for each resident in grouped1,
                for (const key in grouped1) {
                    const value = grouped1[key] // the [?]array containing the resident's procedure info

                    TotalDoneGastroOGDPlusGastroOGDWithBiopsy = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneGastroOGDPlusGastroOGDWithBiopsy = TotalDoneGastroOGDPlusGastroOGDWithBiopsy + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneGastroOGDPlusGastroOGDWithBiopsy >= 300) { // if comply
                            NumComplianceGastroOGDPlusGastroOGDWithBiopsy++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceGastroOGDPlusGastroOGDWithBiopsy != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceGastroOGDPlusGastroOGDWithBiopsy/CountGastroOGDPlusGastroOGDWithBiopsy*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceGastroOGDPlusGastroOGDWithBiopsy/CountGastroOGDPlusGastroOGDWithBiopsy*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }
                

                // grouped2 contains GastroOGD plus Colon records, split into different residents
                let grouped2 = {};
                for (let i=0; i<GastroOGDPlusColon.length; i++) {
                    let p = GastroOGDPlusColon[i]['MCR_No'];
                    if (!grouped2[p]) { grouped2[p] = []; }
                    grouped2[p].push(GastroOGDPlusColon[i]);
                }

                CountGastroOGDPlusColon = Object.keys(grouped2).length

                // for each resident in grouped2,
                for (const key in grouped2) {
                    const value = grouped2[key] // the [?]array containing the resident's procedure info
                    console.log(value)

                    TotalDoneGastroOGDPlusColon = 0 //continue from below here
                    GastroOGDPlusColonAdditionalReqNum = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneGastroOGDPlusColon = TotalDoneGastroOGDPlusColon + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    for (let i = 0; i < value.length; i++) { // preparation for checking additional requirement
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        if (value[i]['Procedure_Name'] == "Gastroscopy (OGD) with non-variceal hemostasis; actively bleeding" || value[i]['Procedure_Name'] == "Colonoscopy with non-variceal hemostasis; actively bleeding") {
                            GastroOGDPlusColonAdditionalReqNum = GastroOGDPlusColonAdditionalReqNum + parseInt(procedure_obj['Performed'])
                        }
                    }

                    if (TotalDoneGastroOGDPlusColon >= 20 && GastroOGDPlusColonAdditionalReqNum >= 10) { // if comply
                            console.log("triggered here")
                            NumComplianceGastroOGDPlusColon++
                    }

                    else {
                        nonCompliantResidentsGastro.push(value)
                    }

                }      
                
                if (NumComplianceGastroOGDPlusColon != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceGastroOGDPlusColon/CountGastroOGDPlusColon*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceGastroOGDPlusColon/CountGastroOGDPlusColon*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceGastroOGDPlusColon/CountGastroOGDPlusColon*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceGastroOGDPlusColon/CountGastroOGDPlusColon*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }
                

                // grouped3 contains Colonoscopy plus ColonoscopyWithBiopsy records, split into different residents
                let grouped3 = {};
                for (let i=0; i<ColonoscopyPlusColonoscopyWithBiopsy.length; i++) {
                    let p = ColonoscopyPlusColonoscopyWithBiopsy[i]['MCR_No'];
                    if (!grouped3[p]) { grouped3[p] = []; }
                    grouped3[p].push(ColonoscopyPlusColonoscopyWithBiopsy[i]);
                }

                CountColonoscopyPlusColonoscopyWithBiopsy = Object.keys(grouped3).length

                // for each resident in grouped3,
                for (const key in grouped3) {
                    const value = grouped3[key] // the [?]array containing the resident's procedure info

                    TotalDoneColonoscopyPlusColonoscopyWithBiopsy = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneColonoscopyPlusColonoscopyWithBiopsy = TotalDoneColonoscopyPlusColonoscopyWithBiopsy + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneColonoscopyPlusColonoscopyWithBiopsy >= 180) { // if comply
                        NumComplianceColonoscopyPlusColonoscopyWithBiopsy++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceColonoscopyPlusColonoscopyWithBiopsy != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceColonoscopyPlusColonoscopyWithBiopsy/CountColonoscopyPlusColonoscopyWithBiopsy*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceColonoscopyPlusColonoscopyWithBiopsy/CountColonoscopyPlusColonoscopyWithBiopsy*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped4 contains Colonoscopy with Polypectomy records, split into different residents
                let grouped4 = {};
                for (let i=0; i<ColonoscopyWithPolypectomy.length; i++) {
                    let p = ColonoscopyWithPolypectomy[i]['MCR_No'];
                    if (!grouped4[p]) { grouped4[p] = []; }
                    grouped4[p].push(ColonoscopyWithPolypectomy[i]);
                }

                CountColonoscopyWithPolypectomy = Object.keys(grouped4).length

                // for each resident in grouped4,
                for (const key in grouped4) {
                    const value = grouped4[key] // the [?]array containing the resident's procedure info

                    TotalDoneColonoscopyWithPolypectomy = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneColonoscopyWithPolypectomy = TotalDoneColonoscopyWithPolypectomy + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneColonoscopyWithPolypectomy >= 20) { // if comply
                        NumComplianceColonoscopyWithPolypectomy++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceColonoscopyWithPolypectomy != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceColonoscopyWithPolypectomy/CountColonoscopyWithPolypectomy*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped5 contains Abdominal Paracentesis records, split into different residents
                let grouped5 = {};
                for (let i=0; i<AbdominalParacentesis.length; i++) {
                    let p = AbdominalParacentesis[i]['MCR_No'];
                    if (!grouped5[p]) { grouped5[p] = []; }
                    grouped5[p].push(AbdominalParacentesis[i]);
                }

                CountAbdominalParacentesis = Object.keys(grouped5).length

                // for each resident in grouped5,
                for (const key in grouped5) {
                    const value = grouped5[key] // the [?]array containing the resident's procedure info

                    TotalDoneAbdominalParacentesis = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneAbdominalParacentesis = TotalDoneAbdominalParacentesis + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneAbdominalParacentesis >= 10) { // if comply
                        NumComplianceAbdominalParacentesis++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceAbdominalParacentesis != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceAbdominalParacentesis/CountAbdominalParacentesis*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped6 contains Capsule Endoscopy records, split into different residents
                let grouped6 = {};
                for (let i=0; i<CapsuleEndoscopy.length; i++) {
                    let p = CapsuleEndoscopy[i]['MCR_No'];
                    if (!grouped6[p]) { grouped6[p] = []; }
                    grouped6[p].push(CapsuleEndoscopy[i]);
                }

                CountCapsuleEndoscopy = Object.keys(grouped6).length

                // for each resident in grouped6,
                for (const key in grouped6) {
                    const value = grouped6[key] // the [?]array containing the resident's procedure info

                    TotalDoneCapsuleEndoscopy = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneCapsuleEndoscopy = TotalDoneCapsuleEndoscopy + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneCapsuleEndoscopy >= 10) { // if comply
                        NumComplianceCapsuleEndoscopy++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceCapsuleEndoscopy != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceCapsuleEndoscopy/CountCapsuleEndoscopy*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }                        


                // grouped7 contains Peg records, split into different residents
                let grouped7 = {};
                for (let i=0; i<Peg.length; i++) {
                    let p = Peg[i]['MCR_No'];
                    if (!grouped7[p]) { grouped7[p] = []; }
                    grouped7[p].push(Peg[i]);
                }

                CountPeg = Object.keys(grouped7).length

                // for each resident in grouped7,
                for (const key in grouped7) {
                    const value = grouped7[key] // the [?]array containing the resident's procedure info

                    TotalDonePeg = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDonePeg = TotalDonePeg + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDonePeg >= 5) { // if comply
                        NumCompliancePeg++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumCompliancePeg != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumCompliancePeg/CountPeg*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }                           


                // grouped8 contains Gastro Variceal Hemo plus Ligation records, split into different residents
                let grouped8 = {};
                for (let i=0; i<GastroVaricealHemoPlusLigation.length; i++) {
                    let p = GastroVaricealHemoPlusLigation[i]['MCR_No'];
                    if (!grouped8[p]) { grouped8[p] = []; }
                    grouped8[p].push(GastroVaricealHemoPlusLigation[i]);
                }

                CountGastroVaricealHemoPlusLigation = Object.keys(grouped8).length

                // for each resident in grouped8,
                for (const key in grouped8) {
                    const value = grouped8[key] // the [?]array containing the resident's procedure info

                    TotalDoneGastroVaricealHemoPlusLigation = 0
                    GastroVaricealHemoPlusLigationAdditionalReqNum = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneGastroVaricealHemoPlusLigation = TotalDoneGastroVaricealHemoPlusLigation + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    for (let i = 0; i < value.length; i++) { // preparation for checking additional requirement
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        if (value[i]['Procedure_Name'] == "Gastroscopy with variceal hemostasis; active bleeding") {
                            GastroVaricealHemoPlusLigationAdditionalReqNum = GastroVaricealHemoPlusLigationAdditionalReqNum + parseInt(procedure_obj['Performed'])
                        }
                    }

                    if (TotalDoneGastroVaricealHemoPlusLigation >= 20 && GastroVaricealHemoPlusLigationAdditionalReqNum >= 5) { // if comply
                        NumComplianceGastroVaricealHemoPlusLigation++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceGastroVaricealHemoPlusLigation != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceGastroVaricealHemoPlusLigation/CountGastroVaricealHemoPlusLigation*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceGastroVaricealHemoPlusLigation/CountGastroVaricealHemoPlusLigation*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceGastroVaricealHemoPlusLigation/CountGastroVaricealHemoPlusLigation*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))                            
                }


                // grouped9 contains Liver Biopsy records, split into different residents
                let grouped9 = {};
                for (let i=0; i<LiverBiopsy.length; i++) {
                    let p = LiverBiopsy[i]['MCR_No'];
                    if (!grouped9[p]) { grouped9[p] = []; }
                    grouped9[p].push(LiverBiopsy[i]);
                }

                CountLiverBiopsy = Object.keys(grouped9).length

                // for each resident in grouped9,
                for (const key in grouped9) {
                    const value = grouped9[key] // the [?]array containing the resident's procedure info

                    TotalDoneLiverBiopsy = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneLiverBiopsy = TotalDoneLiverBiopsy + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneLiverBiopsy >= 5) { // if comply
                        NumComplianceLiverBiopsy++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceLiverBiopsy != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceLiverBiopsy/CountLiverBiopsy*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }                          
                

                // grouped10 contains Esophageal Dilatation plus Luminal Stenting records, split into different residents
                let grouped10 = {};
                for (let i=0; i<EsophagealDilatationPlusLuminalStenting.length; i++) {
                    let p = EsophagealDilatationPlusLuminalStenting[i]['MCR_No'];
                    if (!grouped10[p]) { grouped10[p] = []; }
                    grouped10[p].push(EsophagealDilatationPlusLuminalStenting[i]);
                }

                CountEsophagealDilatationPlusLuminalStenting = Object.keys(grouped10).length

                // for each resident in grouped10,
                for (const key in grouped10) {
                    const value = grouped10[key] // the [?]array containing the resident's procedure info

                    TotalDoneEsophagealDilatationPlusLuminalStenting = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneEsophagealDilatationPlusLuminalStenting = TotalDoneEsophagealDilatationPlusLuminalStenting + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneEsophagealDilatationPlusLuminalStenting >= 5) { // if comply
                        NumComplianceEsophagealDilatationPlusLuminalStenting++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceEsophagealDilatationPlusLuminalStenting != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceEsophagealDilatationPlusLuminalStenting/CountEsophagealDilatationPlusLuminalStenting*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceEsophagealDilatationPlusLuminalStenting/CountEsophagealDilatationPlusLuminalStenting*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }                             
                

                // grouped11 contains Emr plus Esd records, split into different residents
                let grouped11 = {};
                for (let i=0; i<EmrPlusEsd.length; i++) {
                    let p = EmrPlusEsd[i]['MCR_No'];
                    if (!grouped11[p]) { grouped11[p] = []; }
                    grouped11[p].push(EmrPlusEsd[i]);
                }

                CountEmrPlusEsd = Object.keys(grouped11).length

                // for each resident in grouped11,
                for (const key in grouped11) {
                    const value = grouped11[key] // the [?]array containing the resident's procedure info

                    TotalDoneEmrPlusEsd = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneEmrPlusEsd = TotalDoneEmrPlusEsd + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneEmrPlusEsd >= 5) { // if comply
                        NumComplianceEmrPlusEsd++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceEmrPlusEsd != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceEmrPlusEsd/CountEmrPlusEsd*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }                             


                // grouped12 contains Ercp records, split into different residents
                let grouped12 = {};
                for (let i=0; i<Ercp.length; i++) {
                    let p = Ercp[i]['MCR_No'];
                    if (!grouped12[p]) { grouped12[p] = []; }
                    grouped12[p].push(Ercp[i]);
                }

                CountErcp = Object.keys(grouped12).length

                // for each resident in grouped12,
                for (const key in grouped12) {
                    const value = grouped12[key] // the [?]array containing the resident's procedure info

                    TotalDoneErcp = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneErcp = TotalDoneErcp + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneErcp >= 5) { // if comply
                        NumComplianceErcp++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceErcp != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceErcp/CountErcp*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }                           


                // grouped13 contains EndoscopicUltrasound records, split into different residents
                let grouped13 = {};
                for (let i=0; i<EndoscopicUltrasound.length; i++) {
                    let p = EndoscopicUltrasound[i]['MCR_No'];
                    if (!grouped13[p]) { grouped13[p] = []; }
                    grouped13[p].push(EndoscopicUltrasound[i]);
                }

                CountEndoscopicUltrasound = Object.keys(grouped13).length

                // for each resident in grouped13,
                for (const key in grouped13) {
                    const value = grouped13[key] // the [?]array containing the resident's procedure info

                    TotalDoneEndoscopicUltrasound = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneEndoscopicUltrasound = TotalDoneEndoscopicUltrasound + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneEndoscopicUltrasound >= 5) { // if comply
                        NumComplianceEndoscopicUltrasound++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceEndoscopicUltrasound != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceEndoscopicUltrasound/CountEndoscopicUltrasound*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                } 

                
                // grouped14 contains EsophagealMotility plus Ph records, split into different residents
                let grouped14 = {};
                for (let i=0; i<EsophagealMotilityPlusPh.length; i++) {
                    let p = EsophagealMotilityPlusPh[i]['MCR_No'];
                    if (!grouped14[p]) { grouped14[p] = []; }
                    grouped14[p].push(EsophagealMotilityPlusPh[i]);
                }

                CountEsophagealMotilityPlusPh = Object.keys(grouped14).length

                // for each resident in grouped14,
                for (const key in grouped14) {
                    const value = grouped14[key] // the [?]array containing the resident's procedure info

                    TotalDoneEsophagealMotilityPlusPh = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneEsophagealMotilityPlusPh = TotalDoneEsophagealMotilityPlusPh + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneEsophagealMotilityPlusPh >= 5) { // if comply
                        NumComplianceEsophagealMotilityPlusPh++
                    }

                    else { 
                        nonCompliantResidentsGastro.push(value)
                    }

                }

                if (NumComplianceEsophagealMotilityPlusPh != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceEsophagealMotilityPlusPh/CountEsophagealMotilityPlusPh*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                } 

                this.nonCompliantResidentProcedureLogsArray = nonCompliantResidentsGastro

            }

            // if user chose Renal Medicine 
            else if (this.programme == "Renal Medicine") {
                
                const Renal = ["Insertion of non-tunneled haemodialysis catheter - Femoral (C)", "Insertion of non-tunneled haemodialysis catheter - Internal Jugular (C)", "Insertion of non-tunneled haemodialysis catheter - Femoral", "Insertion of non-tunneled haemodialysis catheter - Internal Jugular", "Native Kidney Biopsy (C)", "Transplant Kidney Biopsy (C)", "Native Kidney Biopsy", "Transplant Kidney Biopsy"]
                this.procedureChartConfig.labels = Renal
                this.procedureOptions.title.text = "Procedure Log (Renal Programme)"

                nonCompliantResidentsRenal = []

                InsertionFemoralC = []
                TotalDoneInsertionFemoralC = 0
                CountInsertionFemoralC = 0
                NumComplianceInsertionFemoralC = 0

                InsertionJugularC = []
                TotalDoneInsertionJugularC = 0
                CountInsertionJugularC = 0
                NumComplianceInsertionJugularC = 0

                InsertionFemoral = []
                TotalDoneInsertionFemoral = 0 
                CountInsertionFemoral = 0
                NumComplianceInsertionFemoral = 0

                InsertionJugular = []
                TotalDoneInsertionJugular = 0
                CountInsertionJugular = 0 
                NumComplianceInsertionJugular = 0

                NativeKidneyBiopsyC = []
                TotalDoneNativeKidneyBiopsyC = 0 
                CountNativeKidneyBiopsyC = 0
                NumComplianceNativeKidneyBiopsyC = 0

                TransplantKidneyBiopsyC = []
                TotalDoneTransplantKidneyBiopsyC = 0
                CountTransplantKidneyBiopsyC = 0 
                NumComplianceTransplantKidneyBiopsyC = 0

                NativeKidneyBiopsy = []
                TotalDoneNativeKidneyBiopsy = 0 
                CountNativeKidneyBiopsy = 0 
                NumComplianceNativeKidneyBiopsy = 0

                TransplantKidneyBiopsy = []
                TotalDoneTransplantKidneyBiopsy = 0
                CountTransplantKidneyBiopsy = 0
                NumComplianceTransplantKidneyBiopsy = 0

                const groups = []

                // go through each Renal log
                for (let j = 0; j < renal_array.length; j++) {

                    renal_array[j] //each renal log
                    let procedure_name = renal_array[j]['Procedure_Name'] // each renal log's procedure name
                    // if name matches, push into respective procedure array
                    if (procedure_name == Renal[0]) {
                        InsertionFemoralC.push(renal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Renal[1]) {
                        InsertionJugularC.push(renal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Renal[2]) {
                        InsertionFemoral.push(renal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Renal[3]) {
                        InsertionJugular.push(renal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Renal[4]) {
                        NativeKidneyBiopsyC.push(renal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Renal[5]) {
                        TransplantKidneyBiopsyC.push(renal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Renal[6]) {
                        NativeKidneyBiopsy.push(renal_array[j])
                    }

                    else if (procedure_name == Renal[7]) {
                        TransplantKidneyBiopsy.push(renal_array[j])
                    }

                }    
                
                // grouped1 contains InsertionFemoralC records, split into different residents
                let grouped1 = {};
                for (let i=0; i<InsertionFemoralC.length; i++) {
                    let p = InsertionFemoralC[i]['MCR_No'];
                    if (!grouped1[p]) { grouped1[p] = []; }
                    grouped1[p].push(InsertionFemoralC[i]);
                }

                CountInsertionFemoralC = Object.keys(grouped1).length

                // for each resident in grouped1,
                for (const key in grouped1) {
                    const value = grouped1[key] // the [?]array containing the resident's procedure info

                    TotalDoneInsertionFemoralC = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneInsertionFemoralC = TotalDoneInsertionFemoralC + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneInsertionFemoralC >= 5) { // if comply
                        NumComplianceInsertionFemoralC++
                    }

                    else { 
                        nonCompliantResidentsRenal.push(value)
                    }

                }

                if (NumComplianceInsertionFemoralC != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceInsertionFemoralC/CountInsertionFemoralC*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped2 contains InsertionJugularC records, split into different residents
                let grouped2 = {};
                for (let i=0; i<InsertionJugularC.length; i++) {
                    let p = InsertionJugularC[i]['MCR_No'];
                    if (!grouped2[p]) { grouped2[p] = []; }
                    grouped2[p].push(InsertionJugularC[i]);
                }

                CountInsertionJugularC = Object.keys(grouped2).length

                // for each resident in grouped2,
                for (const key in grouped2) {
                    const value = grouped2[key] // the [?]array containing the resident's procedure info

                    TotalDoneInsertionJugularC = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneInsertionJugularC = TotalDoneInsertionJugularC + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneInsertionJugularC >= 5) { // if comply
                        NumComplianceInsertionJugularC++
                    }

                    else { 
                        nonCompliantResidentsRenal.push(value)
                    }

                }

                if (NumComplianceInsertionJugularC != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceInsertionJugularC/CountInsertionJugularC*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped3 contains InsertionFemoral records, split into different residents
                let grouped3 = {};
                for (let i=0; i<InsertionFemoral.length; i++) {
                    let p = InsertionFemoral[i]['MCR_No'];
                    if (!grouped3[p]) { grouped3[p] = []; }
                    grouped3[p].push(InsertionFemoral[i]);
                }

                CountInsertionFemoral = Object.keys(grouped3).length

                // for each resident in grouped3,
                for (const key in grouped3) {
                    const value = grouped3[key] // the [?]array containing the resident's procedure info

                    TotalDoneInsertionFemoral = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneInsertionFemoral = TotalDoneInsertionFemoral + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneInsertionFemoral >= 5) { // if comply
                        NumComplianceInsertionFemoral++
                    }

                    else {
                        nonCompliantResidentsRenal.push(value)
                    }

                }

                if (NumComplianceInsertionFemoral != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceInsertionFemoral/CountInsertionFemoral*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped4 contains InsertionJugular records, split into different residents
                let grouped4 = {};
                for (let i=0; i<InsertionJugular.length; i++) {
                    let p = InsertionJugular[i]['MCR_No'];
                    if (!grouped4[p]) { grouped4[p] = []; }
                    grouped4[p].push(InsertionJugular[i]);
                }

                CountInsertionJugular = Object.keys(grouped4).length

                // for each resident in grouped4,
                for (const key in grouped4) {
                    const value = grouped4[key] // the [?]array containing the resident's procedure info

                    TotalDoneInsertionJugular = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneInsertionJugular = TotalDoneInsertionJugular + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneInsertionJugular >= 5) { // if comply
                        NumComplianceInsertionJugular++
                    }

                    else { 
                        nonCompliantResidentsRenal.push(value)
                    }

                }

                if (NumComplianceInsertionJugular != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceInsertionJugular/CountInsertionJugular*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }

                // grouped5 contains NativeKidneyBiopsyC records, split into different residents
                let grouped5 = {};
                for (let i=0; i<NativeKidneyBiopsyC.length; i++) {
                    let p = NativeKidneyBiopsyC[i]['MCR_No'];
                    if (!grouped5[p]) { grouped5[p] = []; }
                    grouped5[p].push(NativeKidneyBiopsyC[i]);
                }

                CountNativeKidneyBiopsyC = Object.keys(grouped5).length

                // for each resident in grouped5,
                for (const key in grouped5) {
                    const value = grouped5[key] // the [?]array containing the resident's procedure info

                    TotalDoneNativeKidneyBiopsyC = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneNativeKidneyBiopsyC = TotalDoneNativeKidneyBiopsyC + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneNativeKidneyBiopsyC >= 10) { // if comply
                        NumComplianceNativeKidneyBiopsyC++
                    }

                    else { 
                        nonCompliantResidentsRenal.push(value)
                    }

                }

                if (NumComplianceNativeKidneyBiopsyC != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceNativeKidneyBiopsyC/CountNativeKidneyBiopsyC*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }           


                // grouped6 contains TransplantKidneyBiopsyC records, split into different residents
                let grouped6 = {};
                for (let i=0; i<TransplantKidneyBiopsyC.length; i++) {
                    let p = TransplantKidneyBiopsyC[i]['MCR_No'];
                    if (!grouped6[p]) { grouped6[p] = []; }
                    grouped6[p].push(TransplantKidneyBiopsyC[i]);
                }

                CountTransplantKidneyBiopsyC = Object.keys(grouped6).length

                // for each resident in grouped6,
                for (const key in grouped6) {
                    const value = grouped6[key] // the [?]array containing the resident's procedure info

                    TotalDoneTransplantKidneyBiopsyC = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneTransplantKidneyBiopsyC = TotalDoneTransplantKidneyBiopsyC + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneTransplantKidneyBiopsyC >= 3) { // if comply
                        NumComplianceTransplantKidneyBiopsyC++
                    }

                    else { 
                        nonCompliantResidentsRenal.push(value)
                    }

                }

                if (NumComplianceTransplantKidneyBiopsyC != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceTransplantKidneyBiopsyC/CountTransplantKidneyBiopsyC*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }         


                // grouped7 contains NativeKidneyBiopsy records, split into different residents
                let grouped7 = {};
                for (let i=0; i<NativeKidneyBiopsy.length; i++) {
                    let p = NativeKidneyBiopsy[i]['MCR_No'];
                    if (!grouped7[p]) { grouped7[p] = []; }
                    grouped7[p].push(NativeKidneyBiopsy[i]);
                }

                CountNativeKidneyBiopsy = Object.keys(grouped7).length

                // for each resident in grouped7,
                for (const key in grouped7) {
                    const value = grouped7[key] // the [?]array containing the resident's procedure info

                    TotalDoneNativeKidneyBiopsy = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneNativeKidneyBiopsy = TotalDoneNativeKidneyBiopsy + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneNativeKidneyBiopsy >= 5) { // if comply
                        NumComplianceNativeKidneyBiopsy++
                    }

                    else { 
                        nonCompliantResidentsRenal.push(value)
                    }

                }

                if (NumComplianceNativeKidneyBiopsy != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceNativeKidneyBiopsy/CountNativeKidneyBiopsy*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }  


                // grouped8 contains TransplantKidneyBiopsy records, split into different residents
                let grouped8 = {};
                for (let i=0; i<TransplantKidneyBiopsy.length; i++) {
                    let p = TransplantKidneyBiopsy[i]['MCR_No'];
                    if (!grouped8[p]) { grouped8[p] = []; }
                    grouped8[p].push(TransplantKidneyBiopsy[i]);
                }

                CountTransplantKidneyBiopsy = Object.keys(grouped8).length

                // for each resident in grouped8,
                for (const key in grouped8) {
                    const value = grouped8[key] // the [?]array containing the resident's procedure info

                    TotalDoneTransplantKidneyBiopsy = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneTransplantKidneyBiopsy = TotalDoneTransplantKidneyBiopsy + parseInt(procedure_obj['Performed']) // total done for specific resident
                    }

                    if (TotalDoneTransplantKidneyBiopsy >= 2) { // if comply
                        NumComplianceTransplantKidneyBiopsy++
                    }

                    else { 
                        nonCompliantResidentsRenal.push(value)
                    }

                }

                if (NumComplianceTransplantKidneyBiopsy != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceTransplantKidneyBiopsy/CountTransplantKidneyBiopsy*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }  

                this.nonCompliantResidentProcedureLogsArray = nonCompliantResidentsRenal

            }

            // if user chose Internal Medicine 
            else if (this.programme == "Internal Medicine") {

                const Internal = ["Abdominal Tap", "Arterial Line Placement", "Central Line Placement", "Thoracentesis / Chest tube", "Lumbar Puncture", "Endotracheal Intubation", "Ventilator Management", "Arthrocentesis", "Hemodialysis Catheter Insertion", "ABG", "Vene", "IV Plug", "Ecg"]
                this.procedureChartConfig.labels = Internal
                this.procedureOptions.title.text = "Procedure Log (Internal Programme)"

                nonCompliantResidentsInternal = []

                AbdominalTap = []
                TotalDoneAbdominalTap = 0 
                CountAbdominalTap = 0 
                NumComplianceAbdominalTap = 0

                ArterialLinePlacement = []
                TotalDoneArterialLinePlacement = 0 
                CountArterialLinePlacement = 0 
                NumComplianceArterialLinePlacement = 0

                CentralLinePlacement = []
                TotalDoneCentralLinePlacement = 0 
                CountCentralLinePlacement = 0 
                NumComplianceCentralLinePlacement = 0

                ThoracentesisChestTube = []
                TotalDoneThoracentesisChestTube = 0 
                CountThoracentesisChestTube = 0 
                NumComplianceThoracentesisChestTube = 0

                LumbarPuncture = []
                TotalDoneLumbarPuncture = 0 
                CountLumbarPuncture = 0 
                NumComplianceLumbarPuncture = 0

                EndotrachealIntubation = []
                TotalDoneEndotrachealIntubation = 0 
                CountEndotrachealIntubation = 0 
                NumComplianceEndotrachealIntubation = 0

                VentilatorManagement = []
                TotalDoneVentilatorManagement = 0 
                CountVentilatorManagement = 0 
                NumComplianceVentilatorManagement = 0

                Arthrocentesis = []
                TotalDoneArthrocentesis = 0 
                CountArthrocentesis = 0 
                NumComplianceArthrocentesis = 0

                HemodialysisCatheterInsertion = []
                TotalDoneHemodialysisCatheterInsertion = 0
                CountHemodialysisCatheterInsertion = 0 
                NumComplianceHemodialysisCatheterInsertion = 0

                Abg = []
                TotalDoneAbg = 0 
                CountAbg = 0 
                NumComplianceAbg = 0

                Vene = []
                TotalDoneVene = 0 
                CountVene = 0 
                NumComplianceVene = 0

                IVPlug = []
                TotalDoneIVPlug = 0 
                CountIVPlug = 0 
                NumComplianceIVPlug = 0

                Ecg = []
                TotalDoneEcg = 0 
                CountEcg = 0 
                NumComplianceEcg = 0

                const groups = []

                // go through each Internal log
                for (let j = 0; j < internal_array.length; j++) {

                    internal_array[j] //each internal log
                    let procedure_name = internal_array[j]['Procedure_Name'] // each internal log's procedure name
                    // if name matches, push into respective procedure array
                    if (procedure_name == Internal[0]) {
                        AbdominalTap.push(internal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Internal[1]) {
                        ArterialLinePlacement.push(internal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Internal[2]) {
                        CentralLinePlacement.push(internal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Internal[3]) {
                        ThoracentesisChestTube.push(internal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Internal[4]) {
                        LumbarPuncture.push(internal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Internal[5]) {
                        EndotrachealIntubation.push(internal_array[j]) // could have multiple residents in this array
                    }

                    else if (procedure_name == Internal[6]) {
                        VentilatorManagement.push(internal_array[j])
                    }

                    else if (procedure_name == Internal[7]) {
                        Arthrocentesis.push(internal_array[j])
                    }

                    else if (procedure_name == Internal[8]) {
                        HemodialysisCatheterInsertion.push(internal_array[j])
                    }

                    else if (procedure_name == Internal[9]) {
                        Abg.push(internal_array[j])
                    }

                    else if (procedure_name == Internal[10]) {
                        Vene.push(internal_array[j])
                    }

                    else if (procedure_name == Internal[11]) {
                        IVPlug.push(internal_array[j])
                    }

                    else if (procedure_name == Internal[12]) {
                        Ecg.push(internal_array[j])
                    }

                }    

                // grouped1 contains AbdominalTap records, split into different residents
                let grouped1 = {};
                for (let i=0; i<AbdominalTap.length; i++) {
                    let p = AbdominalTap[i]['MCR_No'];
                    if (!grouped1[p]) { grouped1[p] = []; }
                    grouped1[p].push(AbdominalTap[i]);
                }

                CountAbdominalTap = Object.keys(grouped1).length

                // for each resident in grouped1,
                for (const key in grouped1) {
                    const value = grouped1[key] // the [?]array containing the resident's procedure info

                    TotalDoneAbdominalTap = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneAbdominalTap = TotalDoneAbdominalTap + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneAbdominalTap >= 3) { // if comply
                        NumComplianceAbdominalTap++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceAbdominalTap != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceAbdominalTap/CountAbdominalTap*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped2 contains ArterialLinePlacement records, split into different residents
                let grouped2 = {};
                for (let i=0; i<ArterialLinePlacement.length; i++) {
                    let p = ArterialLinePlacement[i]['MCR_No'];
                    if (!grouped2[p]) { grouped2[p] = []; }
                    grouped2[p].push(ArterialLinePlacement[i]);
                }

                CountArterialLinePlacement = Object.keys(grouped2).length

                // for each resident in grouped2,
                for (const key in grouped2) {
                    const value = grouped2[key] // the [?]array containing the resident's procedure info

                    TotalDoneArterialLinePlacement = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneArterialLinePlacement = TotalDoneArterialLinePlacement + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneArterialLinePlacement >= 5) { // if comply
                        NumComplianceArterialLinePlacement++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceArterialLinePlacement != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceArterialLinePlacement/CountArterialLinePlacement*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped3 contains CentralLinePlacement records, split into different residents
                let grouped3 = {};
                for (let i=0; i<CentralLinePlacement.length; i++) {
                    let p = CentralLinePlacement[i]['MCR_No'];
                    if (!grouped3[p]) { grouped3[p] = []; }
                    grouped3[p].push(CentralLinePlacement[i]);
                }

                CountCentralLinePlacement = Object.keys(grouped3).length

                // for each resident in grouped3,
                for (const key in grouped3) {
                    const value = grouped3[key] // the [?]array containing the resident's procedure info

                    TotalDoneCentralLinePlacement = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneCentralLinePlacement = TotalDoneCentralLinePlacement + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneCentralLinePlacement >= 5) { // if comply
                        NumComplianceCentralLinePlacement++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceCentralLinePlacement != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceCentralLinePlacement/CountCentralLinePlacement*100).toFixed(3))
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped4 contains ThoracentesisChestTube records, split into different residents
                let grouped4 = {};
                for (let i=0; i<ThoracentesisChestTube.length; i++) {
                    let p = ThoracentesisChestTube[i]['MCR_No'];
                    if (!grouped4[p]) { grouped4[p] = []; }
                    grouped4[p].push(ThoracentesisChestTube[i]);
                }

                CountThoracentesisChestTube = Object.keys(grouped4).length

                // for each resident in grouped4,
                for (const key in grouped4) {
                    const value = grouped4[key] // the [?]array containing the resident's procedure info

                    TotalDoneThoracentesisChestTube = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneThoracentesisChestTube = TotalDoneThoracentesisChestTube + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneThoracentesisChestTube >= 3) { // if comply
                        NumComplianceThoracentesisChestTube++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceThoracentesisChestTube != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceThoracentesisChestTube/CountThoracentesisChestTube*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped5 contains LumbarPuncture records, split into different residents
                let grouped5 = {};
                for (let i=0; i<LumbarPuncture.length; i++) {
                    let p = LumbarPuncture[i]['MCR_No'];
                    if (!grouped5[p]) { grouped5[p] = []; }
                    grouped5[p].push(LumbarPuncture[i]);
                }

                CountLumbarPuncture = Object.keys(grouped5).length

                // for each resident in grouped5,
                for (const key in grouped5) {
                    const value = grouped5[key] // the [?]array containing the resident's procedure info

                    TotalDoneLumbarPuncture = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneLumbarPuncture = TotalDoneLumbarPuncture + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneLumbarPuncture >= 5) { // if comply
                        NumComplianceLumbarPuncture++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceLumbarPuncture != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceLumbarPuncture/CountLumbarPuncture*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped6 contains EndotrachealIntubation records, split into different residents
                let grouped6 = {};
                for (let i=0; i<EndotrachealIntubation.length; i++) {
                    let p = EndotrachealIntubation[i]['MCR_No'];
                    if (!grouped6[p]) { grouped6[p] = []; }
                    grouped6[p].push(EndotrachealIntubation[i]);
                }

                CountEndotrachealIntubation = Object.keys(grouped6).length

                // for each resident in grouped6,
                for (const key in grouped6) {
                    const value = grouped6[key] // the [?]array containing the resident's procedure info

                    TotalDoneEndotrachealIntubation = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneEndotrachealIntubation = TotalDoneEndotrachealIntubation + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneEndotrachealIntubation >= 5) { // if comply
                        NumComplianceEndotrachealIntubation++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceEndotrachealIntubation != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceEndotrachealIntubation/CountEndotrachealIntubation*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped7 contains VentilatorManagement records, split into different residents
                let grouped7 = {};
                for (let i=0; i<VentilatorManagement.length; i++) {
                    let p = VentilatorManagement[i]['MCR_No'];
                    if (!grouped7[p]) { grouped7[p] = []; }
                    grouped7[p].push(VentilatorManagement[i]);
                }

                CountVentilatorManagement = Object.keys(grouped7).length

                // for each resident in grouped7,
                for (const key in grouped7) {
                    const value = grouped7[key] // the [?]array containing the resident's procedure info

                    TotalDoneVentilatorManagement = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneVentilatorManagement = TotalDoneVentilatorManagement + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneVentilatorManagement >= 5) { // if comply
                        NumComplianceVentilatorManagement++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceVentilatorManagement != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceVentilatorManagement/CountVentilatorManagement*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped8 contains Arthrocentesis records, split into different residents
                let grouped8 = {};
                for (let i=0; i<Arthrocentesis.length; i++) {
                    let p = Arthrocentesis[i]['MCR_No'];
                    if (!grouped8[p]) { grouped8[p] = []; }
                    grouped8[p].push(Arthrocentesis[i]);
                }

                CountArthrocentesis = Object.keys(grouped8).length

                // for each resident in grouped8,
                for (const key in grouped8) {
                    const value = grouped8[key] // the [?]array containing the resident's procedure info

                    TotalDoneArthrocentesis = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneArthrocentesis = TotalDoneArthrocentesis + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneArthrocentesis >= 2) { // if comply
                        NumComplianceArthrocentesis++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceArthrocentesis != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceArthrocentesis/CountArthrocentesis*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped9 contains HemodialysisCatheterInsertion records, split into different residents
                let grouped9 = {};
                for (let i=0; i<HemodialysisCatheterInsertion.length; i++) {
                    let p = HemodialysisCatheterInsertion[i]['MCR_No'];
                    if (!grouped9[p]) { grouped9[p] = []; }
                    grouped9[p].push(HemodialysisCatheterInsertion[i]);
                }

                CountHemodialysisCatheterInsertion = Object.keys(grouped9).length

                // for each resident in grouped9,
                for (const key in grouped9) {
                    const value = grouped9[key] // the [?]array containing the resident's procedure info

                    TotalDoneHemodialysisCatheterInsertion = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneHemodialysisCatheterInsertion = TotalDoneHemodialysisCatheterInsertion + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneHemodialysisCatheterInsertion >= 3) { // if comply
                        NumComplianceHemodialysisCatheterInsertion++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceHemodialysisCatheterInsertion != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceHemodialysisCatheterInsertion/CountHemodialysisCatheterInsertion*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped10 contains Abg records, split into different residents
                let grouped10 = {};
                for (let i=0; i<Abg.length; i++) {
                    let p = Abg[i]['MCR_No'];
                    if (!grouped10[p]) { grouped10[p] = []; }
                    grouped10[p].push(Abg[i]);
                }

                CountAbg = Object.keys(grouped10).length

                // for each resident in grouped10,
                for (const key in grouped10) {
                    const value = grouped10[key] // the [?]array containing the resident's procedure info

                    TotalDoneAbg = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneAbg = TotalDoneAbg + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneAbg >= 1) { // if comply
                        NumComplianceAbg++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceAbg != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceAbg/CountAbg*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped11 contains Vene records, split into different residents
                let grouped11 = {};
                for (let i=0; i<Vene.length; i++) {
                    let p = Vene[i]['MCR_No'];
                    if (!grouped11[p]) { grouped11[p] = []; }
                    grouped11[p].push(Vene[i]);
                }

                CountVene = Object.keys(grouped11).length

                // for each resident in grouped11,
                for (const key in grouped11) {
                    const value = grouped11[key] // the [?]array containing the resident's procedure info

                    TotalDoneVene = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneVene = TotalDoneVene + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneVene >= 1) { // if comply
                        NumComplianceVene++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceVene != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceVene/CountVene*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped12 contains IVPlug records, split into different residents
                let grouped12 = {};
                for (let i=0; i<IVPlug.length; i++) {
                    let p = IVPlug[i]['MCR_No'];
                    if (!grouped12[p]) { grouped12[p] = []; }
                    grouped12[p].push(IVPlug[i]);
                }

                CountIVPlug = Object.keys(grouped12).length

                // for each resident in grouped12,
                for (const key in grouped12) {
                    const value = grouped12[key] // the [?]array containing the resident's procedure info

                    TotalDoneIVPlug = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneIVPlug = TotalDoneIVPlug + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneIVPlug >= 1) { // if comply
                        NumComplianceIVPlug++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceIVPlug != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceIVPlug/CountIVPlug*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }


                // grouped13 contains Ecg records, split into different residents
                let grouped13 = {};
                for (let i=0; i<Ecg.length; i++) {
                    let p = Ecg[i]['MCR_No'];
                    if (!grouped13[p]) { grouped13[p] = []; }
                    grouped13[p].push(Ecg[i]);
                }

                CountEcg = Object.keys(grouped13).length

                // for each resident in grouped13,
                for (const key in grouped13) {
                    const value = grouped13[key] // the [?]array containing the resident's procedure info

                    TotalDoneEcg = 0

                    for (let i = 0; i < value.length; i++) {
                        let procedure_obj = value[i] // the object containing the resident's procedure info
                        TotalDoneEcg = TotalDoneEcg + parseInt(procedure_obj['Verified']) // total done for specific resident
                    }

                    if (TotalDoneEcg >= 1) { // if comply
                        NumComplianceEcg++
                    }

                    else { 
                        nonCompliantResidentsInternal.push(value)
                    }

                }

                if (NumComplianceEcg != 0) {
                    this.procedureChartConfig.datasets[0].data.push((NumComplianceEcg/CountEcg*100).toFixed(3))
                }
                else { 
                    this.procedureChartConfig.datasets[0].data.push((0).toFixed(3))
                }

            }

        },

        getNonCompliantTable: function () {
            this.showDidacticTable = false
            this.showIHITable = false
            this.showProjectsTable = false
            this.showProcedureLogsTable = false

            this.showDutyTable = false
            this.showScholarlyTable = false
            this.showCaseTable = false

            if (this.nonCompliantResident == "Didactic Attendance") {

                this.showDidacticTable = true

            }

            else if (this.nonCompliantResident == "IHI") {

                this.showIHITable = true

            }

            else if (this.nonCompliantResident == "Projects") {

                this.showProjectsTable = true

            }

            else if (this.nonCompliantResident == "Procedure Logs") {

                this.showProcedureLogsTable = true

            }

            else if (this.nonCompliantResident == "Duty Hour Logs") {

                this.showDutyTable = true

            }

            else if (this.nonCompliantResident == "Case Logs") {

                this.showCaseTable = true

            }

            else if (this.nonCompliantResident == "Scholarly Activities") {

                this.showScholarlyTable = true

            }

        }
        
    }
});