include: "employee_time_period.view"
include: "headcount_sample_data.view"
view: sample {
 extends: [employee_time_period,headcount_sample_data]
  measure: average_days {
    type: average
    sql: ${workings_days} ;;
    value_format: "0.00"
  }
  dimension: name {
    type: string
    sql: ${TABLE}.employee_name ;;
    link:{
    label: "Dashboard"
    url: "https://springmllook.cloud.looker.com/dashboards/18"
    icon_url : "https://www.looker.com/favicon.ico"

    }
  }

 }
