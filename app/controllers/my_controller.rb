class MyController < ApplicationController
  
  def post
    @data = Post.all.order(created_at: :desc)
    #@data = Post.all
  end

  def detail
    @data = Post.find_by(id: params[:id])
  end

  def input

  end

  def create
    @data = Post.new(judul: params[:judul], deskripsi: params[:deskripsi])
    @data.save

    flash[:pesan] = "Data Berhasil Disimpan !"

    redirect_to("/my/post")
  end

  def edit
    @data = Post.find_by(id: params[:id])
  end

  def update
    @data = Post.find_by(id: params[:id])
    @data.judul = params[:judul]
    @data.deskripsi = params[:deskripsi]
    @data.save
    flash[:pesan] = "Data Berhasil Diupdate !"
    redirect_to("/my/post")
  end

  def delete
    @data = Post.find_by(id: params[:id])
    @data.destroy 
    flash[:pesan] = "Data Berhasil Dihapus !"
    redirect_to("/my/post")
  end
end
