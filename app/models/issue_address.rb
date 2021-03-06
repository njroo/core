# == Schema Information
#
# Table name: issue_addresses
#
#  id                 :integer          not null, primary key
#  issue_id           :integer
#  public_address     :string(255)
#  private_key        :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  balance_updated_at :datetime
#  balance            :jsonb
#
# Indexes
#
#  index_issue_addresses_on_issue_id        (issue_id)
#  index_issue_addresses_on_public_address  (public_address) UNIQUE
#

class IssueAddress < ApplicationRecord
  belongs_to :issue
end
