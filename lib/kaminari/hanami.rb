require 'kaminari/hanami/version'
require 'kaminari/helpers/helper_methods'
require 'kaminari/helpers/paginator'
require 'kaminari/core'
require 'active_support'

module Kaminari
  module Hanami
    module View
      include Kaminari::Helpers::HelperMethods
      include ActiveSupport

      # todo: complite this
      def paginate(scope, paginator_class: Kaminari::Helpers::Paginator, template: nil, **options)
        options[:total_pages] ||= scope.total_pages
        options = { current_page: scope.current_page, per_page: scope.limit_value, remote: false }.merge(options)

        paginator = paginator_class.new (template || self), options
        paginator.to_s
      end

      def link_to_if(page, name, _page, options, &block)
        link_to(name, page || '#', options)
      end

      def paginatable_array(array, per: 10)
        Kaminari.paginate_array(array).page(params[:page]).per(per)
      end
    end

    module Model

    end
  end
end
