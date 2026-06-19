## Prerequisites
- Python 3.10+
- Chrome browser + ChromeDriver

## Install dependencies
pip install -r requirements.txt

## Run tests
robot -d results testCases/TC_welcome.robot
robot -d results testCases/TC_reportAnIssue.robot

## Run all tests
robot -d results testCases/

## View results
results/report.html
results/log.html

project/
├── Data/
│   └── envData.robot
├── keywords/
│   ├── commonKeyword.robot
│   ├── welcomePageKeyword.robot
│   └── reportAnIssueKeyword.robot
├── locators/
│   ├── welcomePageLocator.robot
│   └── reportAnIssueLocator.robot
└── testCases/
    ├── TC_WelcomePage.robot
    └── TC_ReportAnIssue.robot