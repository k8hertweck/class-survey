# Simple figures from class survey data

## Data
* located in `data/` and divided by year; Google form (and resulting output) similar but not identical between years
* Export spreadsheet from Google Forms as `survey_raw.tsv`
* anonymize and remove extra columns, for 2017:
  * in terminal: `cut -f 7,9-27 survey_raw.tsv > survey_responsesFall2017.tsv`
  * remove extra periods
  
## Scripts
* `plots2015.R`: only bar plots
* `plots2017.R`: bar plots and word clouds
