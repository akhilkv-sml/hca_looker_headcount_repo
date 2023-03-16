- dashboard: headcount_poc
  title: HeadCount POC
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: MnLYOdfWddhKiYpVaf74EF
  elements:
  - title: Headcount by Month
    name: Headcount by Month
    model: hca_headcount_poc
    explore: headcount_sample_data
    type: looker_grid
    fields: [headcount_sample_data.month_end_month, headcount_sample_data.head_count]
    pivots: [headcount_sample_data.month_end_month]
    fill_fields: [headcount_sample_data.month_end_month]
    filters:
      headcount_sample_data.month_end_date: 12 months
    sorts: [headcount_sample_data.month_end_month, headcount_sample_data.count 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '16'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      headcount_sample_data.count: "."
      headcount_sample_data.month_end_month: Month End Date
      headcount_sample_data.head_count: "."
    series_column_widths:
      2023-03_headcount_sample_data.count: 75
    series_cell_visualizations:
      headcount_sample_data.count:
        is_active: true
      headcount_sample_data.head_count:
        is_active: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Group: headcount_sample_data.group
      Employee Status: headcount_sample_data.employee_status
    row: 1
    col: 0
    width: 24
    height: 4
  - title: by Group
    name: by Group
    model: hca_headcount_poc
    explore: headcount_sample_data
    type: looker_column
    fields: [headcount_sample_data.month_end_month, headcount_sample_data.head_count,
      headcount_sample_data.group]
    pivots: [headcount_sample_data.group]
    fill_fields: [headcount_sample_data.month_end_month]
    filters:
      headcount_sample_data.month_end_date: 12 months
    sorts: [headcount_sample_data.month_end_month desc, headcount_sample_data.group]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    show_dropoff: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Group: headcount_sample_data.group
      Employee Status: headcount_sample_data.employee_status
    row: 12
    col: 0
    width: 17
    height: 8
  - title: Group Composition
    name: Group Composition
    model: hca_headcount_poc
    explore: headcount_sample_data
    type: looker_pie
    fields: [headcount_sample_data.head_count, headcount_sample_data.group]
    filters:
      headcount_sample_data.month_end_date: 12 months
    sorts: [headcount_sample_data.head_count desc]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_types: {}
    defaults_version: 1
    listen:
      Group: headcount_sample_data.group
      Employee Status: headcount_sample_data.employee_status
    row: 12
    col: 17
    width: 7
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"HCA","bold":true,"color":"hsl(0,
      0%, 44%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 1
  - title: "%Change in Headcount by Month"
    name: "%Change in Headcount by Month"
    model: hca_headcount_poc
    explore: headcount_sample_data
    type: looker_column
    fields: [headcount_sample_data.month_end_month, headcount_sample_data.head_count]
    fill_fields: [headcount_sample_data.month_end_month]
    filters:
      headcount_sample_data.month_end_date: 12 months
    sorts: [headcount_sample_data.month_end_month]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: Percentage Change in Headcount
          by Month, value_format: !!null '', value_format_name: percent_0, calculation_type: percent_difference_from_previous,
        table_calculation: percentage_change_in_headcount_by_month, args: [headcount_sample_data.head_count],
        _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: "% Change", orientation: left, series: [{axisId: percentage_change_in_headcount_by_month,
            id: percentage_change_in_headcount_by_month, name: Percentage Change in
              Headcount by Month}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    show_dropoff: false
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [headcount_sample_data.head_count]
    listen:
      Group: headcount_sample_data.group
      Employee Status: headcount_sample_data.employee_status
    row: 5
    col: 0
    width: 24
    height: 7
  - title: Status Composition
    name: Status Composition
    model: hca_headcount_poc
    explore: headcount_sample_data
    type: looker_pie
    fields: [headcount_sample_data.head_count, headcount_sample_data.employee_status]
    filters:
      headcount_sample_data.month_end_month: 12 months
    sorts: [headcount_sample_data.head_count desc]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 20
    col: 17
    width: 7
    height: 8
  - title: " by Employee Status"
    name: " by Employee Status"
    model: hca_headcount_poc
    explore: headcount_sample_data
    type: looker_column
    fields: [headcount_sample_data.month_end_month, headcount_sample_data.group, headcount_sample_data.head_count]
    pivots: [headcount_sample_data.group]
    fill_fields: [headcount_sample_data.month_end_month]
    filters:
      headcount_sample_data.month_end_month: 12 months
    sorts: [headcount_sample_data.month_end_month desc, headcount_sample_data.group]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 20
    col: 0
    width: 17
    height: 8
  filters:
  - name: Group
    title: Group
    type: field_filter
    default_value: Engineer,HR,Immigration,Operations
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: hca_headcount_poc
    explore: headcount_sample_data
    listens_to_filters: []
    field: headcount_sample_data.group
  - name: Employee Status
    title: Employee Status
    type: field_filter
    default_value: Contractor,Full Time,Part Time
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: hca_headcount_poc
    explore: headcount_sample_data
    listens_to_filters: []
    field: headcount_sample_data.employee_status
