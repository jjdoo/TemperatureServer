xml.article do
  xml.id(@article.id)
  xml.title(@article.title)
  xml.description(@article.description)
  xml.article_type(@article.article_type)
  xml.avg_mark(@article.avg_mark.round.to_int)
end