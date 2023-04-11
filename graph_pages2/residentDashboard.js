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
                text: 'Procedure Log (Resident)'
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

        caseChartConfig: {
            labels: ["% of Completion", "% of Non-Completion"],
            datasets: [
                {
                data: [],
                backgroundColor: ['#ff6b00','#ffedd5'],
                borderColor: 'rgba(136,136,136,0.5)'
                }
            ]
            },

        caseOptions: {
            responsive: true,
            maintainAspectRatio: false,
            title: {
                display: true,
                text: 'Case Logs (Resident)'
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
            this.getProcedureLogsData(response.data);
            this.getCaseLogsData(response.data)
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
            this.caseChartConfig.datasets[0].data.length = 0
            //add for procedure logs here
            this.loaded = false
        },

        getCaseLogsData: async function(chartData){
            percentageCompletion = 0
            percentageNonCompletion = 1

            percentageCompletionI = 0
            percentageCompletionO = 0
            percentageCompletionB = 0

            countIntR = 0
            countIntI = 0
            countIntO = 0
            countIntB = 0

            for(let i = 0; i < chartData.data.case_logs.length; i++){
                // 1. check programme under personal details
                // console.log(chartData.data.case_logs[i]['Date_of_Log'].substr(-4,4))
                if(chartData.data.case_logs[i]['Date_of_Log'].substr(-4,4) == this.year){

                    if (chartData.data.personaldetails['Programme'] == 'Renal Medicine'){
                        // 2. if renal, check 10 transplant credit type by SR 2
                        console.log('renal')
                        if(chartData.data.case_logs[i]['Type_of_Case_Log'] == 'transplant credit'){
                            console.log('transplant credit')
                            countIntR = parseInt(chartData.data.case_logs[0]['Observed'])
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
                    else if (chartData.data.personaldetails.Programme == 'Internal Medicine'){
                        // console.log('yes')
                        // 3. if internal medicine, check 3 inpatient and 3 outpatient each year
                        if(chartData.data.case_logs[i]['Type_of_Case_Log'] == 'inpatient'){
                            console.log('inpatient')
                            countIntI = parseInt(chartData.data.case_logs[0]['Observed'])
                            if(countIntI > 0 && countIntI < 3){
                                percentageCompletionI = countIntI / 9
                                // percentageNonCompletion = 1 - percentageCompletion
                            }
                            else if (countIntI >= 3){
                                percentageCompletionI = 1/3
                                // percentageNonCompletionInpatient = 0
                            }
                        }
                        if(chartData.data.case_logs[i]['Type_of_Case_Log'] == 'outpatient'){
                            console.log('outpatient')
                            countIntO = parseInt(chartData.data.case_logs[0]['Observed'])
                            if(countIntO > 0 && countIntO < 3){
                                percentageCompletionO = countIntO / 9
                                // percentageNonCompletion = 1 - percentageCompletion
                            }
                            else if (countIntO >= 3){
                                percentageCompletionO = 1/3
                                // percentageNonCompletionInpatient = 0
                            }
                        }
                        if(chartData.data.case_logs[i]['Type_of_Case_Log'] == 'blue letter'){
                            console.log('blue letter')
                            countIntB = parseInt(chartData.data.case_logs[0]['Observed'])
                            if(countIntR > 0 && countIntB < 3){
                                percentageCompletionB = countIntB / 9
                                // percentageNonCompletion = 1 - percentageCompletion
                            }
                            else if (countIntB >= 3){
                                percentageCompletionB = 1/3
                                // percentageNonCompletionInpatient = 0
                            }
                        }
                    }
                    percentageCompletion = percentageCompletionI + percentageCompletionO + percentageCompletionB
                    percentageNonCompletion = 1 - percentageCompletion
                }
            }


            this.caseChartConfig.datasets[0].data.push(percentageCompletion)
            this.caseChartConfig.datasets[0].data.push(percentageNonCompletion)
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
            // const d = new Date();
            // let year = d.getFullYear();

            if (chartData.data.publications.length > 0) {
                publicationArray = chartData.data.publications
                for (let i = 0; i < publicationArray.length; i++){
                    year1 = publicationArray[i]['Publication_Date'].slice(-2)
                    if (year1 == this.year - 2000){
                        count += 1
                    }
                }
            }

            if (chartData.data.presentations.length > 0){
                presentationArray = chartData.data.presentations
                if (presentationArray.length == 1){
                    if (presentationArray[0]['Presentation_Date'].slice(-4) == this.year){
                        count += 1
                    }
                }
                else {
                    for (let i = 0; i < presentationArray.length; i++){
                        if (presentationArray[i]['Presentation_Date'].slice(-4) == this.year){
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

        getProcedureLogsData: function (chartData) {
            console.log("This is PROCEDURE LOGS DATA")
            // console.log(chartData.data['procedure_logs']); //array of objects of that particular resident

            year_of_training = chartData.data['personaldetails']['Year_of_Training'] // somehow need to make use of this to mark resident as compliant or not to reflect on front end if needed

            if (chartData.data['personaldetails']['Programme'] == "Gastroenterology") {
                console.log("Reached Gastro")
                const Gastro = ["Gastroscopy (OGD)", "Gastroscopy (OGD) with biopsy", "Gastroscopy (OGD) with non-variceal hemostasis; not actively bleeding","Gastroscopy (OGD) with non-variceal hemostasis; actively bleeding", "Colonoscopy with non-variceal hemostasis; not actively bleeding", "Colonoscopy with non-variceal hemostasis; actively bleeding","Colonoscopy", "Colonoscopy with biopsy", "Colonoscopy with polypectomy","Abdominal paracentesis", "Capsule endoscopy", "Percutaneous Endoscopic Gastrostomy (PEG)","Gastroscopy with variceal hemostasis; active bleeding", "Gastroscopy with variceal hemostasis; not actively bleeding", "Gastroscopy with variceal ligation; elective eradication","Liver biopsy", "Esophageal dilatation", "Luminal Stenting","Endoscopic mucosal resection (EMR) / Endoscopic submucosal dissection (ESD)", "Endoscopic Retrograde and Cholangiocpancreatography (ERCP)", "Endoscopic ultrasound", "Esophageal motility / pH studies"]
                this.procedureChartConfig.labels = Gastro
                this.procedureOptions.title.text = "Procedure Log (Gastro Resident)"

                GastroOGDPlusGastroOGDWithBiopsy = 0
                GastroOGDPlusColon = 0
                ColonoscopyPlusColonoscopyWithBiopsy = 0
                ColonoscopyWithPolypectomy = 0
                AbdominalParacentesis = 0
                CapsuleEndoscopy = 0
                Peg = 0
                GastroVaricealHemoPlusLigation = 0
                LiverBiopsy = 0
                EsophagealDilatationPlusLuminalStenting = 0
                EmrPlusEsd = 0
                Ercp = 0
                EndoscopicUltrasound = 0
                EsophagealMotilityPlusPh = 0

                chartData.data['procedure_logs']

            // POPULATING VARIABLES USING INFO FROM DATABASE

                // for every procedure log entry
                for (var i = 0; i < chartData.data['procedure_logs'].length; i++) {
                    procedure_name = chartData.data['procedure_logs'][i]['Procedure_Name']
                    if (procedure_name == Gastro[0] || procedure_name == Gastro[1]) {
                        GastroOGDPlusGastroOGDWithBiopsy = GastroOGDPlusGastroOGDWithBiopsy + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[2] || procedure_name == Gastro[3] || procedure_name == Gastro[4] || procedure_name == Gastro[5]) {
                        GastroOGDPlusColon = GastroOGDPlusColon + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[6] || procedure_name == Gastro[7]) {
                        ColonoscopyPlusColonoscopyWithBiopsy = ColonoscopyPlusColonoscopyWithBiopsy + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[8]) {
                        ColonoscopyWithPolypectomy = ColonoscopyWithPolypectomy + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[9]) {
                        AbdominalParacentesis = AbdominalParacentesis + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[10]) {
                        CapsuleEndoscopy = CapsuleEndoscopy + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[11]) {
                        Peg = Peg + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[12] || procedure_name == Gastro[13] || procedure_name == Gastro[14]) {
                        GastroVaricealHemoPlusLigation = GastroVaricealHemoPlusLigation + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[15]) {
                        LiverBiopsy = LiverBiopsy + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[16] || procedure_name == Gastro[17]) {
                        EsophagealDilatationPlusLuminalStenting = EsophagealDilatationPlusLuminalStenting + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[18]) {
                        EmrPlusEsd = EmrPlusEsd + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[19]) {
                        Ercp = Ercp + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[20]) {
                        EndoscopicUltrasound = EndoscopicUltrasound + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Gastro[21]) {
                        EsophagealMotilityPlusPh = EsophagealMotilityPlusPh + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                }

            // GASTRO COMPLIANCE CHECK

                // check GastroOGDPlusGastroOGDWithBiopsy compliance
                if (GastroOGDPlusGastroOGDWithBiopsy >= 300) { 
                    GastroOGDPlusGastroOGDWithBiopsy = true
                }

                // check GastroOGDPlusColon compliance
                additionalCheckGastroOGDPlusColon = 0
                for (var i = 0; i < chartData.data['procedure_logs'].length; i++) {
                    procedure_name = chartData.data['procedure_logs'][i]['Procedure_Name']
                    if (procedure_name == Gastro[3] || procedure_name == Gastro[5]) {
                        additionalCheckGastroOGDPlusColon = additionalCheckGastroOGDPlusColon + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                }
                //check GastroOGDPlusColon's additional requirement
                if (additionalCheckGastroOGDPlusColon >= 10 && GastroOGDPlusColon >= 20) {
                    GastroOGDPlusColon = true
                }
                
                // check ColonoscopyPlusColonoscopyWithBiopsy compliance
                if (ColonoscopyPlusColonoscopyWithBiopsy >= 180) { 
                    ColonoscopyPlusColonoscopyWithBiopsy = true
                }

                // check ColonoscopyWithPolypectomy compliance
                if (ColonoscopyWithPolypectomy >= 20) { 
                    ColonoscopyWithPolypectomy = true
                }                    

                // check AbdominalParacentesis compliance
                if (AbdominalParacentesis >= 10) { 
                    AbdominalParacentesis = true
                }   
                
                // check CapsuleEndoscopy compliance
                if (CapsuleEndoscopy >= 10) { 
                    CapsuleEndoscopy = true
                }              

                // check Peg compliance
                if (Peg >= 5) { 
                    Peg = true
                }         

                // check GastroVaricealHemoPlusLigation compliance
                additionalCheckGastroVaricealHemoPlusLigation = 0
                for (var i = 0; i < chartData.data['procedure_logs'].length; i++) {
                    procedure_name = chartData.data['procedure_logs'][i]['Procedure_Name']
                    if (procedure_name == Gastro[12]) {
                        additionalCheckGastroVaricealHemoPlusLigation = additionalCheckGastroVaricealHemoPlusLigation + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                }
                //check GastroVaricealHemoPlusLigation's additional requirement
                if (additionalCheckGastroVaricealHemoPlusLigation >= 5 && GastroVaricealHemoPlusLigation >= 20) {
                    GastroVaricealHemoPlusLigation = true
                }
                
                // check LiverBiopsy compliance
                if (LiverBiopsy >= 5) { 
                    LiverBiopsy = true
                }    
                
                // check EsophagealDilatationPlusLuminalStenting compliance
                if (EsophagealDilatationPlusLuminalStenting >= 5) { 
                    EsophagealDilatationPlusLuminalStenting = true
                }       
                
                // check EmrPlusEsd compliance
                if (EmrPlusEsd >= 5) { 
                    EmrPlusEsd = true
                }  
                
                // check Ercp compliance
                if (Ercp >= 5) { 
                    Ercp = true
                }       

                // check EndoscopicUltrasound compliance
                if (EndoscopicUltrasound >= 5) { 
                    EndoscopicUltrasound = true
                }       
                
                // check EsophagealMotilityPlusPh compliance
                if (EsophagealMotilityPlusPh >= 5) { 
                    EsophagealMotilityPlusPh = true
                }            

                
            // PUSHING DATA INTO CHART

                // push GastroOGDPlusGastroOGDWithBiopsy data into chart
                if (GastroOGDPlusGastroOGDWithBiopsy == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((GastroOGDPlusGastroOGDWithBiopsy/300*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((GastroOGDPlusGastroOGDWithBiopsy/300*100).toFixed(3))
                }

                // push GastroOGDPlusColon data into chart
                if (GastroOGDPlusColon == true) {

                    this.procedureChartConfig.datasets[0].data.push(100)
                    this.procedureChartConfig.datasets[0].data.push(100)
                    this.procedureChartConfig.datasets[0].data.push(100)
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    // if not compliant due to active bleeders
                    if (additionalCheckGastroOGDPlusColon < 10 && GastroOGDPlusColon >= 20) {
                        this.procedureChartConfig.datasets[0].data.push(100)  
                        this.procedureChartConfig.datasets[0].data.push((additionalCheckGastroOGDPlusColon/10*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push(100)  
                        this.procedureChartConfig.datasets[0].data.push((additionalCheckGastroOGDPlusColon/10*100).toFixed(3))  
                    }
                    // if not compliant due to total number required
                    else if (additionalCheckGastroOGDPlusColon >= 10 && GastroOGDPlusColon < 20) {
                        this.procedureChartConfig.datasets[0].data.push((GastroOGDPlusColon/20*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push(100)  
                        this.procedureChartConfig.datasets[0].data.push((GastroOGDPlusColon/20*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push(100)   
                    }
                    // if not compliant due to both
                    else if (additionalCheckGastroOGDPlusColon < 10 && GastroOGDPlusColon < 20) {                                
                        this.procedureChartConfig.datasets[0].data.push((GastroOGDPlusColon/20*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push((additionalCheckGastroOGDPlusColon/10*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push((GastroOGDPlusColon/20*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push((additionalCheckGastroOGDPlusColon/10*100).toFixed(3))   
                    }
                }

                // push ColonoscopyPlusColonoscopyWithBiopsy data into chart
                if (ColonoscopyPlusColonoscopyWithBiopsy == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {                           
                    this.procedureChartConfig.datasets[0].data.push((ColonoscopyPlusColonoscopyWithBiopsy/180*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((ColonoscopyPlusColonoscopyWithBiopsy/180*100).toFixed(3))
                }

                // push ColonoscopyWithPolypectomy data into chart
                if (ColonoscopyWithPolypectomy == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {                            
                    this.procedureChartConfig.datasets[0].data.push((ColonoscopyWithPolypectomy/20*100).toFixed(3))
                }

                // push AbdominalParacentesis data into chart
                if (AbdominalParacentesis == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {                           
                    this.procedureChartConfig.datasets[0].data.push((AbdominalParacentesis/10*100).toFixed(3))
                }     

                // push CapsuleEndoscopy data into chart
                if (CapsuleEndoscopy == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {                           
                    this.procedureChartConfig.datasets[0].data.push((CapsuleEndoscopy/10*100).toFixed(3))
                }   
        
                // push Peg data into chart
                if (Peg == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {                            
                    this.procedureChartConfig.datasets[0].data.push((Peg/5*100).toFixed(3))
                }   
                
                // push GastroVaricealHemoPlusLigation data into chart
                if (GastroVaricealHemoPlusLigation == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                    this.procedureChartConfig.datasets[0].data.push(100)
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    // if not compliant due to active bleeders
                    if (additionalCheckGastroVaricealHemoPlusLigation < 5 && GastroVaricealHemoPlusLigation >= 20) {                                
                        this.procedureChartConfig.datasets[0].data.push(100)  
                        this.procedureChartConfig.datasets[0].data.push((additionalCheckGastroVaricealHemoPlusLigation/5*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push(100)  
                        this.procedureChartConfig.datasets[0].data.push((additionalCheckGastroVaricealHemoPlusLigation/5*100).toFixed(3))  
                    }
                    // if not compliant due to total number required
                    else if (additionalCheckGastroVaricealHemoPlusLigation >= 5 && GastroVaricealHemoPlusLigation < 20) {                                
                        this.procedureChartConfig.datasets[0].data.push((GastroVaricealHemoPlusLigation/20*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push(100)  
                        this.procedureChartConfig.datasets[0].data.push((GastroVaricealHemoPlusLigation/20*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push(100)   
                    }
                    // if not compliant due to both
                    else if (additionalCheckGastroVaricealHemoPlusLigation < 5 && GastroVaricealHemoPlusLigation < 20) {                               
                        this.procedureChartConfig.datasets[0].data.push((GastroVaricealHemoPlusLigation/20*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push((additionalCheckGastroVaricealHemoPlusLigation/5*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push((GastroVaricealHemoPlusLigation/20*100).toFixed(3))  
                        this.procedureChartConfig.datasets[0].data.push((additionalCheckGastroVaricealHemoPlusLigation/5*100).toFixed(3))   
                    }
                }
                
                // push Peg data into chart
                if (LiverBiopsy == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {                           
                    this.procedureChartConfig.datasets[0].data.push((LiverBiopsy/5*100).toFixed(3))
                }   
                
                // push EsophagealDilatationPlusLuminalStenting data into chart
                if (EsophagealDilatationPlusLuminalStenting == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {                           
                    this.procedureChartConfig.datasets[0].data.push((EsophagealDilatationPlusLuminalStenting/5*100).toFixed(3))
                    this.procedureChartConfig.datasets[0].data.push((EsophagealDilatationPlusLuminalStenting/5*100).toFixed(3))
                }
                
                // push EmrPlusEsd data into chart
                if (EmrPlusEsd == true) {
                    this.procedureChartConfig.datasets[0].data.push(1100)
                }
                else {                            
                    this.procedureChartConfig.datasets[0].data.push((EmrPlusEsd/5*100).toFixed(3))
                }   
                
                // push Ercp data into chart
                if (Ercp == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {                            
                    this.procedureChartConfig.datasets[0].data.push((Ercp/5*100).toFixed(3))
                }         
                
                // push EndoscopicUltrasound data into chart
                if (EndoscopicUltrasound == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {                           
                    this.procedureChartConfig.datasets[0].data.push((EndoscopicUltrasound/5*100).toFixed(3))
                }     
                
                // push EsophagealMotilityPlusPh data into chart
                if (EsophagealMotilityPlusPh == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {                           
                    this.procedureChartConfig.datasets[0].data.push((EsophagealMotilityPlusPh/5*100).toFixed(3))
                }      

            }

            if (chartData.data['personaldetails']['Programme'] == "Renal Medicine") {
                const Renal = ["Insertion of non-tunneled haemodialysis catheter - Femoral (C)", "Insertion of non-tunneled haemodialysis catheter - Internal Jugular (C)", "Insertion of non-tunneled haemodialysis catheter - Femoral", "Insertion of non-tunneled haemodialysis catheter - Internal Jugular", "Native Kidney Biopsy (C)", "Transplant Kidney Biopsy (C)", "Native Kidney Biopsy", "Transplant Kidney Biopsy"]
                this.procedureChartConfig.labels = Renal
                this.procedureOptions.title.text = "Procedure Log (Renal Resident)"

                InsertionFemoralC = 0
                InsertionJugularC = 0
                InsertionFemoral = 0
                InsertionJugular = 0
                NativeKidneyBiopsyC = 0
                TransplantKidneyBiopsyC = 0
                NativeKidneyBiopsy = 0
                TransplantKidneyBiopsy = 0

            // POPULATING VARIABLES USING INFO FROM DATABASE

                // for every procedure log entry
                for (var i = 0; i < chartData.data['procedure_logs'].length; i++) {
                    procedure_name = chartData.data['procedure_logs'][i]['Procedure_Name']
                    if (procedure_name == Renal[0]) {
                        InsertionFemoralC = InsertionFemoralC + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Renal[1]) {
                        InsertionJugularC = InsertionJugularC + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Renal[2]) {
                        InsertionFemoral = InsertionFemoral + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Renal[3]) {
                        InsertionJugular = InsertionJugular + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Renal[4]) {
                        NativeKidneyBiopsyC = NativeKidneyBiopsyC + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Renal[5]) {
                        TransplantKidneyBiopsyC = TransplantKidneyBiopsyC + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Renal[6]) {
                        NativeKidneyBiopsy = NativeKidneyBiopsy + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                    if (procedure_name == Renal[7]) {
                        TransplantKidneyBiopsy = TransplantKidneyBiopsy + parseInt(chartData.data['procedure_logs'][i]['Performed'])
                    }
                }    
            
            // CHECK RENAL COMPLIANCE

                // check InsertionFemoralC compliance
                if (InsertionFemoralC >= 5) { 
                    InsertionFemoralC = true
                }

                // check InsertionJugularC compliance
                if (InsertionJugularC >= 5) { 
                    InsertionJugularC = true
                }                    

                // check InsertionFemoral compliance
                if (InsertionFemoral >= 5) { 
                    InsertionFemoral = true
                }   
                
                // check InsertionJugular compliance
                if (InsertionJugular >= 5) { 
                    InsertionJugular = true
                }              

                // check NativeKidneyBiopsyC compliance
                if (NativeKidneyBiopsyC >= 10) { 
                    NativeKidneyBiopsyC = true
                }         

                // check TransplantKidneyBiopsyC compliance
                if (TransplantKidneyBiopsyC >= 3) { 
                    TransplantKidneyBiopsyC = true
                }   

                // check NativeKidneyBiopsy compliance
                if (NativeKidneyBiopsy >= 5) { 
                    NativeKidneyBiopsy = true
                }   

                // check TransplantKidneyBiopsy compliance
                if (TransplantKidneyBiopsy >= 2) { 
                    TransplantKidneyBiopsy = true
                }   
            
            // PUSHING DATA INTO CHART

                // push InsertionFemoralC data into chart
                if (InsertionFemoralC == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((InsertionFemoralC/5*100).toFixed(3))
                }

                // push InsertionJugularC data into chart
                if (InsertionJugularC == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((InsertionJugularC/5*100).toFixed(3))
                }

                // push InsertionFemoral data into chart
                if (InsertionFemoral == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((InsertionFemoral/5*100).toFixed(3))
                }

                // push InsertionJugular data into chart
                if (InsertionJugular == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((InsertionJugular/5*100).toFixed(3))
                }

                // push NativeKidneyBiopsyC data into chart
                if (NativeKidneyBiopsyC == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((NativeKidneyBiopsyC/10*100).toFixed(3))
                }

                // push TransplantKidneyBiopsyC data into chart
                if (TransplantKidneyBiopsyC == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((TransplantKidneyBiopsyC/3*100).toFixed(3))
                }

                // push NativeKidneyBiopsy data into chart
                if (NativeKidneyBiopsy == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((NativeKidneyBiopsy/5*100).toFixed(3))
                }

                // push TransplantKidneyBiopsy data into chart
                if (TransplantKidneyBiopsy == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((TransplantKidneyBiopsy/2*100).toFixed(3))
                }
            
            }

            if (chartData.data['personaldetails']['Programme'] == "Internal Medicine") {

                const Internal = ["Abdominal Tap", "Arterial Line Placement", "Central Line Placement", "Thoracentesis / Chest tube", "Lumbar Puncture", "Endotracheal Intubation", "Ventilator Management", "Arthrocentesis", "Hemodialysis Catheter Insertion", "ABG", "Vene", "IV Plug", "Ecg"]
                this.procedureChartConfig.labels = Internal
                this.procedureOptions.title.text = "Procedure Log (Internal Resident)"

                AbdominalTap = 0
                ArterialLinePlacement = 0
                CentralLinePlacement = 0
                ThoracentesisChestTube = 0
                LumbarPuncture = 0
                EndotrachealIntubation = 0
                VentilatorManagement = 0
                Arthrocentesis = 0
                HemodialysisCatheterInsertion = 0
                Abg = 0
                Vene = 0
                IVPlug = 0
                Ecg = 0

                // to be used to check requirements regarding R1:30%, R2:50% and R3:100% in the future
                totalNumOfProceduresRequirements = 40
                totalNumOfProceduresDoneByResident = 0

                chartData.data['procedure_logs']

            // POPULATING VARIABLES USING INFO FROM DATABASE

                // for every procedure log entry
                for (var i = 0; i < chartData.data['procedure_logs'].length; i++) {
                    procedure_name = chartData.data['procedure_logs'][i]['Procedure_Name']
                    if (procedure_name == Internal[0]) {
                        AbdominalTap = AbdominalTap + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[1]) {
                        ArterialLinePlacement = ArterialLinePlacement + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[2]) {
                        CentralLinePlacement = CentralLinePlacement + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[3]) {
                        ThoracentesisChestTube = ThoracentesisChestTube + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[4]) {
                        LumbarPuncture = LumbarPuncture + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[5]) {
                        EndotrachealIntubation = EndotrachealIntubation + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[6]) {
                        VentilatorManagement = VentilatorManagement + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[7]) {
                        Arthrocentesis = Arthrocentesis + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[8]) {
                        HemodialysisCatheterInsertion = HemodialysisCatheterInsertion + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[9]) {
                        Abg = Abg + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[10]) {
                        Vene = Vene + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[11]) {
                        IVPlug = IVPlug + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                    if (procedure_name == Internal[12]) {
                        Ecg = Ecg + parseInt(chartData.data['procedure_logs'][i]['Verified'])
                    }
                }

                totalNumOfProceduresDoneByResident = AbdominalTap + ArterialLinePlacement + CentralLinePlacement + ThoracentesisChestTube + LumbarPuncture + EndotrachealIntubation + VentilatorManagement + Arthrocentesis + HemodialysisCatheterInsertion + Abg + Vene + IVPlug + Ecg

            // CHECK INTERNAL COMPLIANCE

                // check AbdominalTap compliance
                if (AbdominalTap >= 3) { 
                    AbdominalTap = true
                }

                // check ArterialLinePlacement compliance
                if (ArterialLinePlacement >= 5) { 
                    ArterialLinePlacement = true
                }                    

                // check CentralLinePlacement compliance
                if (CentralLinePlacement >= 5) { 
                    CentralLinePlacement = true
                }   
                
                // check ThoracentesisChestTube compliance
                if (ThoracentesisChestTube >= 3) { 
                    ThoracentesisChestTube = true
                }              

                // check LumbarPuncture compliance
                if (LumbarPuncture >= 5) { 
                    LumbarPuncture = true
                }         

                // check EndotrachealIntubation compliance
                if (EndotrachealIntubation >= 5) { 
                    EndotrachealIntubation = true
                }   

                // check VentilatorManagement compliance
                if (VentilatorManagement >= 5) { 
                    VentilatorManagement = true
                }   

                // check Arthrocentesis compliance
                if (Arthrocentesis >= 2) { 
                    Arthrocentesis = true
                }   

                // check HemodialysisCatheterInsertion compliance
                if (HemodialysisCatheterInsertion >= 3) { 
                    HemodialysisCatheterInsertion = true
                }   

                // check Abg compliance
                if (Abg >= 1) { 
                    Abg = true
                }   

                // check Vene compliance
                if (Vene >= 1) { 
                    Vene = true
                } 
    
                // check IVPlug compliance
                if (IVPlug >= 1) { 
                    IVPlug = true
                }   

                // check Ecg compliance
                if (Ecg >= 1) { 
                    Ecg = true
                }                           

            // PUSHING DATA INTO CHART

                // push AbdominalTap data into chart
                if (AbdominalTap == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((AbdominalTap/3*100).toFixed(3))
                }

                // push ArterialLinePlacement data into chart
                if (ArterialLinePlacement == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((ArterialLinePlacement/5*100).toFixed(3))
                }

                // push CentralLinePlacement data into chart
                if (CentralLinePlacement == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((CentralLinePlacement/5*100).toFixed(3))
                }

                // push ThoracentesisChestTube data into chart
                if (ThoracentesisChestTube == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((ThoracentesisChestTube/3*100).toFixed(3))
                }

                // push LumbarPuncture data into chart
                if (LumbarPuncture == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((LumbarPuncture/5*100).toFixed(3))
                }

                // push EndotrachealIntubation data into chart
                if (EndotrachealIntubation == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((EndotrachealIntubation/5*100).toFixed(3))
                }

                // push VentilatorManagement data into chart
                if (VentilatorManagement == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((VentilatorManagement/5*100).toFixed(3))
                }

                // push Arthrocentesis data into chart
                if (Arthrocentesis == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((Arthrocentesis/2*100).toFixed(3))
                }

                // push HemodialysisCatheterInsertion data into chart
                if (HemodialysisCatheterInsertion == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push((HemodialysisCatheterInsertion/3*100).toFixed(3))
                }

                // push Abg data into chart
                if (Abg == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push(0)
                }

                // push Vene data into chart
                if (Vene == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push(0)
                }

                // push IVPlug data into chart
                if (IVPlug == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push(0)
                }

                // push Ecg data into chart
                if (Ecg == true) {
                    this.procedureChartConfig.datasets[0].data.push(100)
                }
                else {
                    this.procedureChartConfig.datasets[0].data.push(0)
                }

            }

                    
        }

    }
});