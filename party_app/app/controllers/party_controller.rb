class PartyController < ApplicationController
    def home
        @items = PartyItem.all
    end

    def budget
        @spending_per_person = params[:spending].to_i / params[:people].to_i
        @max_budget = params[:spending].to_i
        @attendance = params[:people].to_i
        if @spending_per_person >= 500
            @tier = 3
            @items = 12
            @spending = 500
        elsif @spending_per_person >= 310
            @tier = 2
            @items = 11
            @spending = 310
        elsif @spending_per_person >= 135
            @tier = 1
            @items = 5
            @spending = 135
        end
            @items = @items * params[:people].to_i
            @spending = @spending * params[:people].to_i
    end
end
