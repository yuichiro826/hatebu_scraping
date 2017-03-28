require 'bundler'
Bundler.require

agent= Mechanize.new
page = agent.get('http://b.hatena.ne.jp/entry/qiita.com/ma3tk/items/3336c9a245b86a6c448f')
elements = page.search('.comment')
elements.each do |ele|
  puts ele.inner_text
end