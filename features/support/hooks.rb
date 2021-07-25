#  frozen_string_literal: true

Before do
  $lgpd = false
  $skip = false
end

def add_screenshot(scenario)
  sufix = ('error' if scenario.failed?) || 'success'
  name = scenario.name.tr(' ', '_').downcase
  foto = save_screenshot("images/#{sufix}-#{name}.png")
  base64_img = Base64.encode64(File.open(foto, 'rb:UTF-8', &:read))
  embed(base64_img, 'image/png;base64')
end

After do |scenario|
  add_screenshot(scenario)
end

at_exit do
  ReportBuilder.configure do |config|
    config.json_path = 'results/report.json'
    config.report_path = 'results/cucumber_relatorio'
    config.report_types = [:html]
    config.report_title = "Relatório da Execução #{Time.now.strftime('%d/%m/%Y %H:%M')} - #{$bandeira.capitalize}"
    config.compress_images = false
    config.color = 'blue'
    config.additional_info = { Navegador: 'Chrome', Ambiente: $ambiente.capitalize }
  end
  ReportBuilder.build_report
  FileUtils.rm_rf('images/')
end
