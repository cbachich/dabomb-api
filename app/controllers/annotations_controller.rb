class AnnotationsController < ApplicationController
  # GET /annotations
  # GET /annotations.json
  def index
    @annotations = Annotation.order(:start_video)

    render json: @annotations
  end

  # GET /annotations/1
  # GET /annotations/1.json
  def show
    @annotation = Annotation.find(params[:id])

    render json: @annotation
  end

  # POST /annotations
  # POST /annotations.json
  def create
    @annotation = Annotation.new(params[:annotation].permit(:start_video, :end_video, :text, :top_align, :left_align, :color))

    if @annotation.save
      render json: @annotation, status: :created, location: @annotation
    else
      render json: @annotation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /annotations/1
  # PATCH/PUT /annotations/1.json
  def update
    @annotation = Annotation.find(params[:id])

    if @annotation.update(params[:annotation].permit(:start_video, :end_video, :text, :top_align, :left_align, :color))
      head :no_content
    else
      render json: @annotation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /annotations/1
  # DELETE /annotations/1.json
  def destroy
    @annotation = Annotation.find(params[:id])
    @annotation.destroy

    head :no_content
  end
end
