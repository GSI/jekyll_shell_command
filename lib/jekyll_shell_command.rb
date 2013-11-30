module Jekyll
  module Tags
    class ShellCommandTag < Liquid::Tag
      
      def initialize(tag_name, command, tokens)
        @command = command
        super
      end

      def render(context)
				`#{@command}`
      end
      
    end
  end
end

Liquid::Template.register_tag('sh', Jekyll::Tags::ShellCommandTag)
