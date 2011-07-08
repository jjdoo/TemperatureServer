class ArticlesController < ApplicationController
  protect_from_forgery :except => :mark
  # GET /articles
  # GET /articles.xml
  def index
    @articles = Article.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml 
    end
  end
  
  # GET /articles/1
  # GET /articles/1.xml
  def show
    @article = Article.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  
    end
  end
  
  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article = Article.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end
  
  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end
  
  # POST /articles
  # POST /articles.xml
  def create
    @article = Article.new(params[:article])
    
    respond_to do |format|
      if @article.save
        flash[:notice] = 'Article was successfully created.'
        format.html { redirect_to(@article) }
        format.xml  { render :xml => @article, :status => :created, :location => @article }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    @article = Article.find(params[:id])
    
    respond_to do |format|
      if @article.update_attributes(params[:article])
        flash[:notice] = 'Article was successfully updated.'
        format.html { redirect_to(@article) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    respond_to do |format|
      format.html { redirect_to(articles_url) }
      format.xml  { head :ok }
    end
  end
  
  def show_articles_by_type
    article_type=params[:article_type]
    @articles = Article.find(:all,
                            :conditions=>["article_type= ?",article_type])
    respond_to do |format|
      format.html 
      format.xml  
    end
    
  end
  
  def show_introduces
    @intro = Article.find(:all,
                         :conditions => "avg_mark >= 80",
                         :order => "avg_mark DESC",
                         :limit => 10)
    respond_to do |format|
      format.html 
      format.xml 
    end
  end
  
  def mark
    mark = params[:mark]
    id = params[:id]
    @response_xml = {:id => id,:mark => mark.to_f,:result => "failed"}
    @response_xml[:reason] = "mark incorrect"
    if mark.to_f >= 0 and mark.to_f <=100
      article = Article.find(id)
      article.avg_mark = (article.avg_mark * article.mark_times + mark.to_f)/(article.mark_times + 1)
      article.mark_times += 1
      begin
        article.save
        @response_xml[:result] = "successed"
        @response_xml[:reason] = nil
      rescue Exception =>e
        @response_xml[:result] = "failed"
        @response_xml[:reason] = "server is busy"
      end
    end
    render :xml => @response_xml.to_xml
    
  end 
end
