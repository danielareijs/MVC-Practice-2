class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @jobs = Job.all
  end

  def create
    @jobs = Job.create(employer_name: params[:employer_name], employer_description: params[:employer_description], job_title: params[:job_title], job_description: params[:job_description], year_of_experience: params[:year_of_experience], education_requirement: params[:education_requirement], industry: params[:industry], base_salary: params[:base_salary],)
  end

  def show
    @job = Job.find(params[:id])
  end
end
