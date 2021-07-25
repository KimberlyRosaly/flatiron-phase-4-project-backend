# N A M E S P A C I N G   C O N V E N T I O N   W I T H  A P I
# PARENT FOLDER :: CHILD FOLDER :: FILE < INHERITSFROM
class Api::V1::PrayersController < ApplicationController
    #! I N S T A N C E VARIABLES NOT NEEDED 
    #! - NO  E R B   R E N D E R I N G  TO PASS THEM TO

    def index
        prayers = Prayer.all
        render json: prayers
    end

    def show
        prayer = Prayer.find_by_id(params[:id])
        if prayer
            render json: prayer
        else
            render json: { message: ' </3 Prayer not found </3 ' }
        end
    end

    def create
        @prayer = Prayer.create(prayer_params)
        render json: @prayer
    end

    def update
        @prayer = Prayer.find_by_id(params[:id])
        @prayer.update(prayer_params)
        render json: @prayer
    end

    def destroy
        @prayer = Prayer.find(params[:id])
        @prayer.delete
        render json: { prayerId: @prayer.id }
    end

    #=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
        private
            def prayer_params
                params.require(:prayer).permit( 
                    :body, :star_counter, 
                    :name, :city, :state )
            end
    #=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

end
