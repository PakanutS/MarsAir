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