# Define the database connection to be used for this model.
connection: "ecms_looker"

# include all the views
include: "/views/**/*.view"

include: "/dashboards/**/*.dashboard"
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: hca_headcount_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  sql_trigger: SELECT CURDATE() ;;
  max_cache_age: "1 hour"
}

# persist_with: hca_headcount_poc_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Hca Headcount Poc"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.


explore: headcount_sample_data {}

explore: employee_time_period {}

explore: sample {}

# Place in `hca_headcount_poc` model

explore: +headcount_sample_data {
    query:  headcount_by_group {
      dimensions: [group]
      measures: [head_count]
      filters: [headcount_sample_data.employee_status: "Full Time"]
    }
    description: "This is to test quick start analysis cards"
}
