class ArticlesController <ApplicationController
before_action:set_article, only: [:show,:edit,:update,:destroy]

    def show
    end

    def index
       @article = Article.all
    end
    def new
        @article = Article.new
    end

    def edit  
          
    end

        def create
            @article = Article.new(articles_prams)
            @article.user = User.first
            if @article.save
                flash[:notice] = "Article was created successfully."
              redirect_to @article 
            else
              render 'new'
            end
          end


         
         def update
          if @article.update(articles_prams)
            flash[:notice] = "Article was updated successfully."
            redirect_to article_path
          else
            render 'edit'
          end
        end

        def destroy
          @article.destroy
          redirect_to articles_path


        end

        private
        def set_article
          @article = Article.find(params[:id])
        end

        def articles_prams
          params.require(:article).permit(:title, :description)
        end
      
         end