module GollumRails
  module Adapters
    module Gollum

      # TODO: doc
      class Page

        Connector.page_class = self

        # Gets / Sets current page
        attr_accessor :page

          # Gets / Sets the wiki
        attr_accessor :wiki

        # Initializer
        def initialize
          @wiki = Wiki.class_variable_get(:@@wiki)
        end


        # creates a new Page
        #
        # name - String
        # type - Symbol
        # content - Text
        # commit - Hash or instance of Committer
        #
        # Returns the commit id
        def new_page( name, content,type=:markdown, commit={} )
          @wiki.write_page name.to_s, type, content, commit if name
          @page = @wiki.page name
          @page
        end

        # updates an existing page
        #
        # new - Hash with changed data
        # commit - Hash or instance of Committer
        # old - also an instance of self
        #
        # Returns the commit id
        def update_page( new, commit={}, old=nil)
          if new.is_a?(Hash)
            commit_id = @wiki.update_page (old||@page), 
                                          new.name||@page.name, 
                                          new.format.to_sym||@page.format, 
                                          new.content||@page.content, 
                                          commit 
          else
            raise ::Error
          end
          if new.name
            @page = @page.find(new[:name], commit_id)
          end
          @page
        end

        # deletes an existing page
        #
        # page - instance of self
        # commit - Hash or instance of Committer
        #
        # Returns the commit id
        def delete_page( commit={}, page = nil )
          @wiki.delete_page (page||@page), commit
        end
        
        # renames an existing page
        #
        # page - instance of myself
        # newname - new pagename
        # commit - Hash or instance of Committer
        #
        # Returns the commit id
        def rename_page( page, newname, commit={} )
        end

        # undoc
        def find_page()
        end
        
        # moves an existing page
        #
        # TODO:
        #   * implement
        def move_page()
        end

        # gets page last edit date
        #
        # Returns a Date
        def page_last_edited_date
          if @page
            return @page.versions.first.authored_date
          else
            Error.new()
          end
        end

        # gets the latest commit
        #
        # Returns an instance of Grit::Commit
        def page_last_commit
          if @page
            return @page.versions.first
          else
            Error.new()
          end
        end

        # 
        def page_created

        end
        
        def page_first_commit
        end

        #
        def page_commit(id)
        end

        def page_commit_date(id)
        end

      end
    end
  end
end
