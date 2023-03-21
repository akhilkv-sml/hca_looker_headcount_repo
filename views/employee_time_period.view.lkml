view: employee_time_period {
  derived_table: {
    sql: SELECT
        employee_name,
        DATE(max(case when start=1 THEN month_end_date END)) start1,
        DATE(max(case when end1=1 THEN month_end_date END)) end1,
        DATE_DIFF(DATE(max(case when end1=1 THEN month_end_date END)),DATE(max(case when start=1 THEN month_end_date END)),day) workings_days
        FROM
        (
        SELECT
          t.EMPLOYEE_STATUS,
          t.COUNTRY,
          t.GROUP,
          t.LOCATION,
          t.COUNTRY,
          t.EMPLOYEE_NAME,
          MONTH_END_DATE,
          ROW_NUMBER() OVER(PARTITION BY t.EMPLOYEE_NAME ORDER BY t.MONTH_END_DATE)AS start,
          ROW_NUMBER() OVER(PARTITION BY t.EMPLOYEE_NAME ORDER BY t.MONTH_END_DATE DESC)AS end1
        FROM
          `akhils-scrum-project.HCA_POC.headcount_sample_data` AS t ) t1
      group by employee_name
      order by employee_name
       ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.employee_name ;;
    link:{
      label: "Google Dashboard"
      url: "https://springmllook.cloud.looker.com/dashboards/18"
      icon_url : "http://google.com/favicon.ico"
    }
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}.employee_name ;;
  }

  dimension: start1 {
    type: date
    datatype: date
    sql: ${TABLE}.start1 ;;
  }

  dimension: end1 {
    type: date
    datatype: date
    sql: ${TABLE}.end1 ;;
  }

  dimension: workings_days {
    type: number
    sql: ${TABLE}.workings_days ;;
  }

  set: detail {
    fields: [employee_name, start1, end1, workings_days]
  }
  measure: average_days {
    type: average
    sql: ${workings_days} ;;
    value_format: "0.00"
  }
  dimension_group: date_dim {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start1 ;;
  }
}
