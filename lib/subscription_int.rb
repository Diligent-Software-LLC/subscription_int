# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative "subscription_int/version"

# SubscriptionInt.
# @abstract
# @class_description
#   A Subscription library interface.
class SubscriptionInt

  # self.subscribable().
  # @description
  #   Gets SUBSCRIBABLE.
  # @return [Set]
  #   SUBSCRIBABLE's reference.
  def self.subscribable()
  end

  # self.publisher(published = nil).
  # @description
  #   Predicate. Verifies a published argument is a publishing type instance.
  # @param published [.]
  #   Any publishing type instance.
  # @return [TrueClass, FalseClass]
  #   True in the case published's class is a publisher. False otherwise.
  def self.publisher(published = nil)
  end

  # self.update(subject = nil).
  # @description
  #   Updates subscribers.
  # @param subject [.]
  #   Any subscribable instance.
  # @return [NilClass]
  #   nil.
  def self.update(subject = nil)
  end

  # self.kind_subscription(publisher = nil).
  # @description
  #   Discerns the appropriate subscription identifier.
  # @param publisher [.]
  #   Any subscribable type.
  # @return [Constant]
  #   A subscription contact.
  # @raise [ArgumentError]
  #   In the case the argument is not subscribable.
  def self.kind_subscription(publisher = nil)
  end

  private_class_method :new
  private_class_method :kind_subscription

end
