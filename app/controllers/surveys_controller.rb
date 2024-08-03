class SurveysController < ApplicationController
  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to thank_you_path # 送信完了後にリダイレクト
    else
      render :new
    end
  end

  def thank_you
    # ここでは特に何もしませんが、カスタムメッセージやロジックを追加することも可能です
  end

  private

  def survey_params
    params.require(:survey).permit(:choice, :destination, :reason)
  end
end