class DiariesController < ApplicationController
    http_basic_authenticate_with name: "a", password: "a", except: [:index, :show]
    def index
        @diaries = Diary.all
    end

      
    def show
        @diary = Diary.find(params[:id])
    end
    
    def new
        @diary = Diary.new #새로운 인스턴스 변수 만들기
    end

    def edit
        @diary = Diary.find(params[:id])
    end

    def create
        @diary = Diary.new(diary_params)

        if @diary.save
          redirect_to @diary
        else
          render 'new'
        end
    end

    def update
        @diary = Diary.find(params[:id])
       
        if @diary.update(diary_params)
          redirect_to @diary
        else
          render 'edit'
        end
    end

    
    def destroy
        @diary = Diary.find(params[:id])
        @diary.destroy
   
        redirect_to diaries_path
    end

    private
    def diary_params
        params.require(:diary).permit(:foodname, :foodp)
    end
end
