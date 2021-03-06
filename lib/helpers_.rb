include Nanoc::Helpers::Rendering
include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Text
include Nanoc::Helpers::XMLSitemap
include TagsCategoriesHelper
include MoreHelper
include TextHelper
include TagCloudHelper
include SearchHelper

def is_content?(i)
  !['article_list', 'feed'].include?(i[:kind]) && !i.binary? && !i[:is_hidden] && ![".css", ".js", ".js.erb", ".xml", ".asc"].any? { |x| i.identifier.to_s.end_with?(x) }
end

