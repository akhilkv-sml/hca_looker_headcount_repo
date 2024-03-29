# The name of this view in Looker is "Headcount Sample Data"
view: headcount_sample_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HCA_POC.headcount_sample_data` ;;
  # derived_table: {
    # sql: SELECT * FROM `akhils-scrum-project.HCA_POC.headcount_sample_data` ;;
    # datagroup_trigger: hca_headcount_poc_default_datagroup
  # }

 dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}.EMPLOYEE_NAME ;;

  }

  dimension: employee_status {
    type: string
    sql: ${TABLE}.EMPLOYEE_STATUS ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}.`GROUP` ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: month_end {
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
    sql: ${TABLE}.MONTH_END_DATE ;;
  }

  measure: head_count {
    type: count
    description: "Count of Number of employees"
    drill_fields: [employee_name]
  }
  measure: employee_count {
    type: count_distinct
    sql: ${employee_name} ;;
    drill_fields: [employee_name,employee_status]
    description: "Employee head count"
  }


  parameter: Category{
    allowed_value: {
      label: "Group"
      value: "group"
    }
    allowed_value: {
      label: "Employee Status"
      value: "employee_status"
    }
  }
  dimension: selected_filter  {
    label_from_parameter: Category
    type: string
    sql:CASE
      WHEN {% parameter Category %}='group' THEN ${group}
    WHEN {% parameter Category %}='employee_status' THEN ${employee_status}
      else NULL
      END;;



  }
}
