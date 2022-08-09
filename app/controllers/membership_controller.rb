class MembershipController < ApplicationController
  def index
  end

  def beaction
  end

  def memberslist
    @MembersList = Bemembership.all.order('created_at desc')
    @MembersMonthly = @MembersList.monthlyActif
    @MembersWeekly = @MembersMonthly.weeklyActif
  end
end
