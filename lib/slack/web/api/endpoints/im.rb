# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Im
          #
          # Close a direct message channel.
          #
          # @option options [im] :channel
          #   Direct message channel to close.
          # @see https://api.slack.com/methods/im.close
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im/im.close.json
          def im_close(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('im.close', options)
          end

          #
          # Fetches history of messages and events from direct message channel.
          #
          # @option options [im] :channel
          #   Direct message channel to fetch history for.
          # @option options [Object] :inclusive
          #   Include messages with latest or oldest timestamp in results.
          # @option options [timestamp] :latest
          #   End of time range of messages to include in results.
          # @option options [timestamp] :oldest
          #   Start of time range of messages to include in results.
          # @option options [Object] :unreads
          #   Include unread_count_display in the output?.
          # @see https://api.slack.com/methods/im.history
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im/im.history.json
          def im_history(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('im.history', options)
          end

          #
          # Lists direct message channels for the calling user.
          #
          # @option options [Object] :cursor
          #   Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first "page" of the collection. See pagination for more detail.
          # @option options [Object] :limit
          #   The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached.
          # @see https://api.slack.com/methods/im.list
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im/im.list.json
          def im_list(options = {})
            if block_given?
              Pagination::Cursor.new(self, :im_list, options).each do |page|
                yield page
              end
            else
              post('im.list', options)
            end
          end

          #
          # Sets the read cursor in a direct message channel.
          #
          # @option options [im] :channel
          #   Direct message channel to set reading cursor in.
          # @option options [timestamp] :ts
          #   Timestamp of the most recently seen message.
          # @see https://api.slack.com/methods/im.mark
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im/im.mark.json
          def im_mark(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :ts missing') if options[:ts].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('im.mark', options)
          end

          #
          # Opens a direct message channel.
          #
          # @option options [user] :user
          #   User to open a direct message channel with.
          # @option options [Object] :return_im
          #   Boolean, indicates you want the full IM channel definition in the response.
          # @see https://api.slack.com/methods/im.open
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im/im.open.json
          def im_open(options = {})
            throw ArgumentError.new('Required arguments :user missing') if options[:user].nil?
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('im.open', options)
          end

          #
          # Retrieve a thread of messages posted to a direct message conversation
          #
          # @option options [im] :channel
          #   Direct message channel to fetch thread from.
          # @option options [Object] :thread_ts
          #   Unique identifier of a thread's parent message.
          # @see https://api.slack.com/methods/im.replies
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im/im.replies.json
          def im_replies(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :thread_ts missing') if options[:thread_ts].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('im.replies', options)
          end
        end
      end
    end
  end
end
