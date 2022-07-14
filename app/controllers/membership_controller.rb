class MembershipController < ApplicationController
  def index
  end

  def beaction
  end

  def memberlist
    @MembersList = User.membership
    @MembersMonthly = @MembersList.monthlyActif
    @MembersWeekly = @MembersMonthly.weeklyActif
  end
end
