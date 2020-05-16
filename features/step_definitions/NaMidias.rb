Dado("que tenha acessado o site da inmetrics") do
    homeInmetrics = HomeInmetrics.new
    homeInmetrics.load
  end
  
  Quando("clicar no menu Na Mídia") do
    homeInmetrics = HomeInmetrics.new
    homeInmetrics.acessoMenuNaMidia
  end
  
  Então("o sistema deve exibir a {string}") do |string|
    assert_text(string)
  end