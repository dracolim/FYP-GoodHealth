def getProjectRows(projects):
    rows = []
    for i in projects:
        status = "Ongoing"
        if i.Date_of_QI_Certification != "":
            status = i.Date_of_QI_Certification 

        i_row = """<tr id="regtable">
                <td id="regtable">
                    <p>""" + i.Project_Title + """</p>
                </td>
                <td id="regtable" style="text-align:center">
                    <p>""" + i.Start_Date + """</p>
                </td>
                <td id="regtable" style="text-align:center">
                    <p>""" + i.End_Date + """</p>
                </td>
                <td id="regtable" style="text-align:center">
                    <p>""" + status + """</p>
                </td>
            </tr>"""
        rows.append(i_row)
    return " ".join(rows)

def getAwardsRows(awards):
    rows = []
    for i in awards:
        i_row = """<tr id="regtable">
                <td id="regtable">
                    <p>""" + i.Name_of_Award + """</p>
                </td>
                <td>
                    <p style="text-align: center;">""" \
                        + i.Date_of_Award_Received + \
                """</p>
                </td>
            </tr>"""
        rows.append(i_row)

    return " ".join(rows)

def getEducationalInvolvement(involvements):
    rows = []
    for i in involvements:
        if i.Involvement_Type == "Teaching":
            in_row = """
                        <tr id="regtable">
                <td id="regtable">
                    <p style="text-align: center;">""" + i.Role + """</p>
                </td>
                <td id="regtable">
                    <p>""" + i.Event + """</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">""" + i.End_Date + """</p>
                </td>
            </tr>"""
            rows.append(in_row)
    return " ".join(rows)

def getCommunityInvolvement(involvements):
    rows = []
    for i in involvements:
        if i.Involvement_Type == "Community":
            in_row = """"<tr id="regtable">
                <td id="regtable">
                    <p">""" + i.Event + """</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">""" + i.End_Date + """</p>
                </td>
            </tr>
            """
            rows.append(in_row)
    return " ".join(rows)

def getLeadershipInvolvment(involvements):
    rows = []
    for i in involvements:
        if i.Involvement_Type == "Leadership":
            in_row = """"<tr id="regtable">
                <td id="regtable">
                    <p>""" + i.Role + """</p>
                </td>
                <td id="regtable">
                    <p>""" + i.Event + """</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">""" + i.Start_Date \
                        + " - " + i.End_Date + """</p>
                </td>
            </tr>
            """
            rows.append(in_row)
    return " ".join(rows)

def getProcedureLogs(logs):
    rows = []
    for i in logs:
        if i.Observed == "":
            supervision = "Indirect Supervision" 
        else: 
            supervision = i.Observed
        i_row = """<tr id="regtable">
                <td id="regtable">
                    <p><b>""" + i.Procedure_Name + """</b></p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">""" + i.Total + """</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">""" + supervision + """</p>
                </td>
            </tr>"""
        rows.append(i_row)
    return " ".join(rows)

def getPostingRows(postings):
    rows = []
    for i in postings:
        i_row = """<tr>
                <td style="width: 75%;">
                    <p><strong>""" + i.Posting_Institution + """</strong></p>
                    <p><em>Resident, Dept of """ + i.Posting_Department + """</em></p><br>
                </td>
                
                <td style="width: 25%;">
                    <p>""" + i.Posting_StartDate + """ &ndash; """ + i.Posting_EndDate + """</p>
                </td>
            </tr>"""
        rows.append(i_row)
    return " ".join(rows)

def getEducationRows(education):
    rows = []
    for i in education:
        if i.Exam_Status == "Pass":
            i_row = """
            <tr>
                <td style="width: 75%;">
                    <p><strong>""" + i.Name_of_Exam + """</strong></p>
                </td>
                
                <td style="width: 25%;">
                    <p>""" + i.Date_of_Attempt + """</p>
                </td>
            </tr>
            """
            rows.append(i_row)
    return " ".join(rows)

def getPresentationRows(presentation):
    rows=[]
    for i in presentation:
        if i.Type!='Teaching' :
            i_row = """<tr id="regtable">
                <td id="regtable">
                    <p style="text-align: center;">""" + str(i.id) + """</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">""" + i.Title + """</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">""" + i.Country + """</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">""" + i.Conference_Name + """</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">""" + i.Presentation_Date + """</p>
                </td>
            </tr>
            """
            rows.append(i_row)
    if rows!=[]:
        return " ".join(rows)
    else:
        return "<i>No Records Found</i>"

def getTeachingPresentationRows(presentation):
    rows=[]

    for i in presentation:
        if i.Type=='Teaching' :
            i_row = """"<tr id="regtable">
                <td id="regtable">
                    <p >""" + i.Title + """</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">""" + i.Presentation_Date + """</p>
                </td>
            </tr>
            """
            rows.append(i_row)
    if rows!=[]:
        return " ".join(rows)
    else:
        return "<i>No Records Found</i>"
    
def getPublications(publications):
    rows=[]

    for i in publications:
        i_row = """<tr id="regtable">
            <td id="regtable">
                <p style="text-align: center;">""" + i.PMID + """</p>
            </td>
            <td id="regtable">
                <p style="text-align: center;">""" + i.Publication_Title + """</p>
            </td>
        </tr>
        """
        rows.append(i_row)
    if rows!=[]:
        return " ".join(rows)
    else:
        return "<i>No Records Found</i>"

def getQIPatientSafetyRows(projects):
    rows=[]

    for i in projects:
        i_row = """<tr id="regtable">
            <td id="regtable">
                <p style="text-align: center;">""" + i.Project_Title + """</p>
            </td>
            
             <td id="regtable">
                <p style="text-align: center;">""" + i.Start_Date + """</p>
            </td>
            <td id="regtable">
                <p style="text-align: center;">""" + i.End_Date + """</p>
            </td>"""
        if i.Project_Type.lower()=='qi':
            i_row+="""<td id="regtable">
                <p style="text-align: center;"> X </p>
            </td>
             <td id="regtable">
                <p style="text-align: center;"> </p>
            </td>
            <td id="regtable">
                <p style="text-align: center;"> </p>
            </td>"""
        elif i.Project_Type.lower()=='patient safety': # check with singhealth
            i_row+="""<td id="regtable">
                <p style="text-align: center;">  </p>
            </td>
             <td id="regtable">
                <p style="text-align: center;"> X </p>
            </td>
            <td id="regtable">
                <p style="text-align: center;"> </p>
            </td>"""
        else:
            i_row+="""<td id="regtable">
                <p style="text-align: center;"> X </p>
            </td>
             <td id="regtable">
                <p style="text-align: center;"> </p>
            </td>
            <td id="regtable">
                <p style="text-align: center;">  </p>
            </td>"""
        i_row+="""</tr>"""
        rows.append(i_row)
    if rows!=[]:
        return " ".join(rows)
    else:
        return "<i>No Records Found</i>"


import base64

def get_image_file_as_base64_data(profileimg_input):
    FILEPATH = "../profileimg/" + profileimg_input
    # FILEPATH = "./static/profile1.jpeg"

    # with open(FILEPATH, 'rb') as image_file:
    #     reading = str(base64.b64encode(image_file.read()))
    #     print(reading)
    #     return reading
    with open(FILEPATH, 'rb') as f:
        return base64.b64encode(f.read()).decode()

def getPage(name, mcrno, profileimg, awardsRows, projectRows, educationalInvolvements, communityInvolvements,
        leadershipInvolvements, procedureLogsRows, postingRows, educationRows,presentationRows,teachingPresentationRows,
        publicationRows,patientSafetyQIRows):

    page = """<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
            <style>
        #regtable {border: 1px solid;}
        </style>
    </head>
    
    <body style="justify-content: center;">

    <div id="main" style="width:850px">
    <p style="text-align: center;"><strong><span style="font-size: 24px;"><u><b>SingHealth Internal Medicine Residency Programme&nbsp;</b></u></span></strong></p>
    <p style="text-align: center;"><strong><span style="font-size: 24px;"><u><b>Professional Development Portfolio</b></u></span></strong></p>
    <div align="left" >

</div>
<hr>
<p><br></p>
<div style="display: flex; justify-content: space-between;">
    <div>
        <table>
            <tr>
                <td>
                    <p><span style="font-size: 24px;">Name&nbsp;</span></p>
                </td>
                <td>
                    <p><span style="font-size: 24px;">:&nbsp;""" + name + """&nbsp;</span></p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><span style="font-size: 24px;">MCR Number</span></p>
                </td>
                <td>
                    <p><span style="font-size: 24px;">: """ + mcrno + """</span></p>
                </td>
            </tr>
        </table>
    </div>
    <div style="text-align: center;">
        <img src="data:image/png;base64,""" +get_image_file_as_base64_data(profileimg)+ """" style="border: 2px solid black; width: 250px; height: 250px;">
    </div>
</div>
<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>EMPLOYMENT HISTORY</b></span></p>
<p><br></p>
<p style="text-align: center;width:100%;"><span style="font-size: 20px;"><u><strong>Core Postings</strong></u></span></p>
<div align="left" >
    <table style="width: 100%;" >
        <tbody>
            <tr>
                <td style="width: 75%;">
                    <p><strong><u>Posting</u></strong></p>
                    
                </td>
            
                <td style="width: 25%;">
                    <p><strong><u>Period</u></strong></p><br>
                </td>
            </tr>
            <tr>
                <td style="width: 75%;">
                    <p><strong>Singapore General Hospital</strong></p>
                    <p><em>Resident, Dept of Neurology</em></p><br>
                </td>
                
                <td style="width: 25%;">
                    <p>Jul 2018 &ndash; Sep 2018</p>
                </td>
            </tr>
            """ + postingRows + """
            


        </tbody>
    </table>
<p><br></p>

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>EDUCATION & QUALIFICATIONS</b></span></p>
<p><br></p>
<div align="left" >
    <table style="width: 100%;" >
        <tbody>
            <tr>
                <td style="width: 75%;">
                    <p><strong>Singapore General Hospital</strong></p>
                </td>
                
                <td style="width: 25%;">
                    <p>Sep 2018</p>
                </td>
            </tr>
            """ + educationRows + """
            


        </tbody>
    </table>

            <!-- Procedures Credentialing SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>PROCEDURES CREDENTIALING</b></span></p>
<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width: 50%" id="regtable">
                    <p style="text-align: center;"><b>Procedures</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width: 25%" id="regtable">
                    <p style="text-align: center;"><b>Number of Procedures Logged</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216);width: 25%" id="regtable">
                    <p style="text-align: center;"><b>Level of Supervision</b></p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p><b>Abdominal tap</b></p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">2</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">Indirect supervision</p>
                </td>
            </tr>
            """ + procedureLogsRows + """
        </tbody>
    </table>
</div>


        <!-- Leadership Involvement SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>LEADERSHIP INVOLVEMENT</b></span></p>
<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width: 25%;" id="regtable">
                    <p style="text-align: center;"><b>Role</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width: 50%;" id="regtable">
                    <p style="text-align: center;"><b>Communittee / Event</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width: 25%;" id="regtable">
                    <p style="text-align: center;"><b>Period</b></p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p>Chief Resident</p>
                </td>
                <td id="regtable">
                    <p>SingHealth Internal Medicine Residency Program</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">12 Jul 2014 - 12 Jun 2015</p>
                </td>
            </tr>
            """ + leadershipInvolvements + """
        </tbody>
    </table>
</div>


    <!-- Community Involvement SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>COMMUNITY INVOLVEMENT</b></span></p>
<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width: 75%;" id="regtable">
                    <p style="text-align: center;"><b>Activity / Event</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width: 25%;" id="regtable">
                    <p style="text-align: center;"><b>Date</b></p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p>Project HOPE</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">21 Feb 2015</p>
                </td>
            </tr>
            """ + communityInvolvements + """


        </tbody>
    </table>
</div>




    <!-- Educational Involvement SECTION: -->
    <p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>EDUCATIONAL INVOLVEMENT</b></span></p>
<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width: 25%;" id="regtable">
                    <p style="text-align: center;"><b>Role</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width:50%;" id="regtable">
                    <p style="text-align: center;"><b>Activity / Event</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width: 25%;" id="regtable">
                    <p style="text-align: center;"><b>Date</b></p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p style="text-align: center;">Tutor</p>
                </td>
                <td id="regtable">
                    <p>Student Internship Programme Boot Camp</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">12 Jun 2014</p>
                </td>
            </tr>
            """ + educationalInvolvements + """



            
            
        </tbody>
    </table>
</div>




    <!-- AWARD SECTION: -->

    <p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>AWARDS &amp; RECOGNITION&nbsp;</b></span></p>
<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;"><b>Name of Award</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;"><b>Date Received</b></p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p>RISE Awards &ndash; Outstanding Performance at 2013 ITE</p>
                </td>
                <td>
                    <p style="text-align: center;">25 Sep 2013</p>
                </td>
            </tr>
            """ + awardsRows + """
            
        </tbody>
    </table>
</div>


<!-- Projects SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%">RESEARCH PROJECTS</span></p>

<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width:50%" id="regtable">
                    <p style="text-align: center;">Details of Research</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Start Date</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">End Date</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Status (Completed/On-going)</p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p>Pemphigus and Pemphigoid comparison</p>
                </td>
                <td id="regtable" style="text-align:center">
                    <p>1 Jan 2015</p>
                </td>
                <td id="regtable" style="text-align:center">
                    <p>31 Apr 2016</p>
                </td>
                <td id="regtable" style="text-align:center">
                    <p>Completed</p>
                </td>
            </tr>
            """+ projectRows + """
            
        </tbody>
    </table>
</div>

<!-- Teaching Presentations SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%">TEACHING PRESENTATIONS</span></p>

<p><br></p>
<p>Examples: To list Lecture, or presentation (such as grand rounds or case presentations) of at least 30 minute duration within the sponsoring institution or program. Includes teaching presentations in the various postings (Journal Club, Resident Rounds etc)</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width:65%" id="regtable">
                    <p style="text-align: center;">Title of Presentation</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Date</p>
                </td>
               
            </tr>
        
           
            """+ teachingPresentationRows + """
            
            
        </tbody>
    </table>
</div>
<!-- Other Presentations SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%">ABSTRACT, POSTER & ORAL PRESENTATIONS</span></p>

<p><br></p>
<p>Includes Presentation given at international, national, or regional meetings</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width:10%" id="regtable">
                    <p style="text-align: center;">No.</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Name of Conference</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Country</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Title of Presentation</p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width:20%" id="regtable">
                    <p style="text-align: center;">Date of Presentation</p>
                </td>
            </tr>
            """+ presentationRows + """
            
            
        </tbody>
    </table>
</div>

<!-- Publications SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%">PUBLICATIONS (Articles)</span></p>

<p><br></p>
<p>Examples: To include articles that has been published. For articles published in PubMed, pls include PubMed ID (8 character numeric number). Publications not limited to PubMed.</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width:20%" id="regtable">
                    <p style="text-align: center;">PMID</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Details of Publication</p>
                </td>
                
            </tr>
            """+ publicationRows + """
            
            
        </tbody>
    </table>
</div>

<!-- QI and Patient Safety SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%">QUALITY IMPROVEMENT & PATIENT SAFETY PROJECTS</span></p>

<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
            <td rowspan="2" style="background-color: rgb(209, 213, 216); width:30%" id="regtable">
                <p style="text-align: center;">Project Title</p>
            </td>
            <td colspan="2" style="background-color: rgb(209, 213, 216);" id="regtable">
                <p style="text-align: center;">QI Project Status</p>
            </td>
            <td colspan="3" style="background-color: rgb(209, 213, 216); width:15%" id="regtable">
                <p style="text-align: center;">Please X the Appropriate Box</p>
            </td>
            
        </tr>
        <tr id="regtable">
            <td  style="background-color: rgb(209, 213, 216); width:20%" id="regtable">
                <p style="text-align: center;">Start Date</p>
            </td>
            <td  style="background-color: rgb(209, 213, 216); width:20%" id="regtable">
                <p style="text-align: center;">End Date</p>
            </td>
            <td  style="background-color: rgb(209, 213, 216); width:5%" id="regtable">
                <p style="text-align: center;">QI Project</p>
            </td>
            <td  style="background-color: rgb(209, 213, 216); width:5%" id="regtable">
                <p style="text-align: center;">Patient Safety Project</p>
            </td>
            <td  style="background-color: rgb(209, 213, 216); width:5%" id="regtable">
                <p style="text-align: center;">Both Qualified</p>
            </td>
          
            
        </tr>
            """+ patientSafetyQIRows + """
            
            
        </tbody>
    </table>
</div>






</div>

</div>
</body>
    </html>"""
    return page



def getPage2(name, mcrno, awardsRows, projectRows, educationalInvolvements, communityInvolvements,
leadershipInvolvements, procedureLogsRows, postingRows, educationRows,presentationRows,teachingPresentationRows,\
    publicationsRows,patientSafetyQIRows):

    page = """<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
            <style>
        #regtable {border: 1px solid;}
        </style>
    </head>
    
    <body style="justify-content: center;">

    <div id="main" style="width:850px">
    <p style="text-align: center;"><strong><span style="font-size: 24px;"><u><b>SingHealth Internal Medicine Residency Programme&nbsp;</b></u></span></strong></p>
    <p style="text-align: center;"><strong><span style="font-size: 24px;"><u><b>Professional Development Portfolio</b></u></span></strong></p>
    <div align="left" >

</div>
<hr>
<p><br></p>
<div align="left" >
    <table>
        <tbody>
            <tr>
                <td>
                    <p><span style="font-size: 24px;">Name&nbsp;</span></p>
                </td>
                <td>
                    <p><span style="font-size: 24px;">:&nbsp;""" + name + """&nbsp;</span></p>
                </td>
                <td rowspan="2"><span style="font-size: 24px;"><br></span></td>
            </tr>
            <tr>
                <td>
                    <p><span style="font-size: 24px;">MCR Number</span></p>
                </td>
                <td>
                    <p><span style="font-size: 24px;">: """ + mcrno + """</span></p>
                </td>
            </tr>
        </tbody>
    </table>
</div>
<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>EMPLOYMENT HISTORY</b></span></p>
<p><br></p>
<p style="text-align: center;width:100%;"><span style="font-size: 20px;"><u><strong>Core Postings</strong></u></span></p>
<div align="left" >
    <table style="width: 100%;" >
        <tbody>
            <tr>
                <td style="width: 75%;">
                    <p><strong><u>Posting</u></strong></p>
                    
                </td>
            
                <td style="width: 25%;">
                    <p><strong><u>Period</u></strong></p><br>
                </td>
            </tr>
            <tr>
                <td style="width: 75%;">
                    <p><strong>Singapore General Hospital</strong></p>
                    <p><em>Resident, Dept of Neurology</em></p><br>
                </td>
                
                <td style="width: 25%;">
                    <p>Jul 2018 &ndash; Sep 2018</p>
                </td>
            </tr>
            """ + postingRows + """
            


        </tbody>
    </table>
<p><br></p>

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>EDUCATION & QUALIFICATIONS</b></span></p>
<p><br></p>
<div align="left" >
    <table style="width: 100%;" >
        <tbody>
            <tr>
                <td style="width: 75%;">
                    <p><strong>Singapore General Hospital</strong></p>
                </td>
                
                <td style="width: 25%;">
                    <p>Sep 2018</p>
                </td>
            </tr>
            """ + educationRows + """
            


        </tbody>
    </table>

            <!-- Procedures Credentialing SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>PROCEDURES CREDENTIALING</b></span></p>
<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width: 50%" id="regtable">
                    <p style="text-align: center;"><b>Procedures</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width: 25%" id="regtable">
                    <p style="text-align: center;"><b>Number of Procedures Logged</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216);width: 25%" id="regtable">
                    <p style="text-align: center;"><b>Level of Supervision</b></p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p><b>Abdominal tap</b></p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">2</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">Indirect supervision</p>
                </td>
            </tr>
            """ + procedureLogsRows + """
        </tbody>
    </table>
</div>


        <!-- Leadership Involvement SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>LEADERSHIP INVOLVEMENT</b></span></p>
<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width: 25%;" id="regtable">
                    <p style="text-align: center;"><b>Role</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width: 50%;" id="regtable">
                    <p style="text-align: center;"><b>Communittee / Event</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width: 25%;" id="regtable">
                    <p style="text-align: center;"><b>Period</b></p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p>Chief Resident</p>
                </td>
                <td id="regtable">
                    <p>SingHealth Internal Medicine Residency Program</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">12 Jul 2014 - 12 Jun 2015</p>
                </td>
            </tr>
            """ + leadershipInvolvements + """
        </tbody>
    </table>
</div>


    <!-- Community Involvement SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>COMMUNITY INVOLVEMENT</b></span></p>
<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width: 75%;" id="regtable">
                    <p style="text-align: center;"><b>Activity / Event</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width: 25%;" id="regtable">
                    <p style="text-align: center;"><b>Date</b></p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p>Project HOPE</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">21 Feb 2015</p>
                </td>
            </tr>
            """ + communityInvolvements + """


        </tbody>
    </table>
</div>




    <!-- Educational Involvement SECTION: -->
    <p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>EDUCATIONAL INVOLVEMENT</b></span></p>
<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width: 25%;" id="regtable">
                    <p style="text-align: center;"><b>Role</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width:50%;" id="regtable">
                    <p style="text-align: center;"><b>Activity / Event</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width: 25%;" id="regtable">
                    <p style="text-align: center;"><b>Date</b></p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p style="text-align: center;">Tutor</p>
                </td>
                <td id="regtable">
                    <p>Student Internship Programme Boot Camp</p>
                </td>
                <td id="regtable">
                    <p style="text-align: center;">12 Jun 2014</p>
                </td>
            </tr>
            """ + educationalInvolvements + """



            
            
        </tbody>
    </table>
</div>




    <!-- AWARD SECTION: -->

    <p style="text-align: center; background-color: rgb(0, 0, 0); width:100%; font-family: Calibri, sans-serif; line-height: 1.5;"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%"><b>AWARDS &amp; RECOGNITION&nbsp;</b></span></p>
<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;"><b>Name of Award</b></p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;"><b>Date Received</b></p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p>RISE Awards &ndash; Outstanding Performance at 2013 ITE</p>
                </td>
                <td>
                    <p style="text-align: center;">25 Sep 2013</p>
                </td>
            </tr>
            """ + awardsRows + """
            
        </tbody>
    </table>
</div>


<!-- Projects SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%">RESEARCH PROJECTS</span></p>

<p><br></p>
<p>Examples: RISE Award, best HO/MO during a particular posting, best oral speaker</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width:50%" id="regtable">
                    <p style="text-align: center;">Details of Research</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Start Date</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">End Date</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Status (Completed/On-going)</p>
                </td>
            </tr>
            <tr id="regtable">
                <td id="regtable">
                    <p>Pemphigus and Pemphigoid comparison</p>
                </td>
                <td id="regtable" style="text-align:center">
                    <p>1 Jan 2015</p>
                </td>
                <td id="regtable" style="text-align:center">
                    <p>31 Apr 2016</p>
                </td>
                <td id="regtable" style="text-align:center">
                    <p>Completed</p>
                </td>
            </tr>
            """+ projectRows + """
            
        </tbody>
    </table>
</div>

<!-- Teaching Presentations SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%">TEACHING PRESENTATIONS</span></p>

<p><br></p>
<p>Examples: To list Lecture, or presentation (such as grand rounds or case presentations) of at least 30 minute duration within the sponsoring institution or program. Includes teaching presentations in the various postings (Journal Club, Resident Rounds etc)</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width:65%" id="regtable">
                    <p style="text-align: center;">Title of Presentation</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Date</p>
                </td>
               
            </tr>
        
           
            """+ teachingPresentationRows + """
            
            
        </tbody>
    </table>
</div>
<!-- Other Presentations SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%">ABSTRACT, POSTER & ORAL PRESENTATIONS</span></p>

<p><br></p>
<p>Includes Presentation given at international, national, or regional meetings</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width:10%" id="regtable">
                    <p style="text-align: center;">No.</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Name of Conference</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Country</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Title of Presentation</p>
                </td>
                <td style="background-color: rgb(209, 213, 216); width:20%" id="regtable">
                    <p style="text-align: center;">Date of Presentation</p>
                </td>
            </tr>
            """+ presentationRows + """
            
            
        </tbody>
    </table>
</div>

<!-- Publications SECTION: -->

<p style="text-align: center; background-color: rgb(0, 0, 0); width:100%"><span style="color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); width:100%">PUBLICATIONS (Articles)</span></p>

<p><br></p>
<p>Examples: To include articles that has been published. For articles published in PubMed, pls include PubMed ID (8 character numeric number). Publications not limited to PubMed.</p>
<p><br></p>
<div align="left">
    <table style="margin-right: calc(6%); width: 94%; border-color: black; width: 100%;border-collapse: collapse;">
        <tbody id="regtable">
            <tr id="regtable">
                <td style="background-color: rgb(209, 213, 216); width:20%" id="regtable">
                    <p style="text-align: center;">PMID</p>
                </td>
                <td style="background-color: rgb(209, 213, 216);" id="regtable">
                    <p style="text-align: center;">Details of Publication</p>
                </td>
                
            </tr>
            """+ publicationsRows + """
            
            
        </tbody>
    </table>
</div>






</div>

</div>
</body>
    </html>"""
    return page