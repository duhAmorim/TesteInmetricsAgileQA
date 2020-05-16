class HomeInmetrics < SitePrism::Page
    set_url 'https://www.inmetrics.com.br/'
    private element :menuNaMidia, :link,'Na Mídia'

    def acessoMenuNaMidia
        menuNaMidia.click
    end
end