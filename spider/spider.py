from spider import html_parser
from spider import output_html
from spider import url_manager
from spider import html_downloader


class Spidermain(object):
    def __init__(self):
        self.urls = url_manager.UrlManager()
        self.downloader = html_downloader.HtmlDownloader()
        self.parser = html_parser.HtmlParser()
        self.out = output_html.HtmlOutputer()

    def craw(self, url):
        self.urls.add_new_url(url)
        count = 1
        while self.urls.has_new_url():
            try:
                new_url = self.urls.get_new_url()
                print 'craw %d:%s' % (count, new_url)
                html_cont = self.downloader.download(new_url)
                new_urls, new_data = self.parser.parse(new_url, html_cont)
                self.urls.add_new_urls(new_urls)
                self.out.collect_data(new_data)
                if count == 1000:
                    break
                count = count + 1
            except:
                print 'craw failed'
        self.out.output_html()


if __name__ == "__main__":
    root_url = "http://bang.tx3.163.com/bang/ranks?role_id=40_13014"
    obj_spider = Spidermain()
    obj_spider.craw(root_url)
