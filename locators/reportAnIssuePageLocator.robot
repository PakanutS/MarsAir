*** Variables ***
${report_an_issue_btn}    xpath=//a[@href='/pakanut_sunantaraks/report']
${new_issue_report_lbl}    xpath=//h2[text()='New issue report']
${title_txt}             id=title
${description_txt}        id=description
${create_btn}             xpath=//input[@value='Create']
${open_issues_lbl}        xpath=//h2[text()='Open Issues']
${first_issue_title}      xpath=//table//tr[2]/td[2]
${first_issue_severity}   xpath=//table//tr[2]/td[3]
${delete_btn}             xpath=//table//tr[2]//a[text()='Delete']
${delete_success_lbl}     xpath=//div[contains(text(),'The issue has been deleted.')]