require 'report_builder'
After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

  if scenario.failed?
    tirar_foto(scenario_name.downcase!, 'falhou')
  else
    tirar_foto(scenario_name.downcase!, 'passou')
  end
  
end

at_exit do
  
ReportBuilder.input_path = "report.json"
ReportBuilder.configure do |config|
   config.report_path = "reports/run"
   config.report_types = [:json, :html]
 options = {
   report_title: "Automacao QA"
 }
ReportBuilder.build_report options
end
end