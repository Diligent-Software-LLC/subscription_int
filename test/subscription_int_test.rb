require_relative 'test_helper'

# SubscriptionIntTest.
# @class_description
#   Tests the SubscriptionInt class.
class SubscriptionIntTest < Minitest::Test

  # Constants.
  CLASS = SubscriptionInt

  # test_conf_doc_f_ex().
  # @description
  #  The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md, 
  #  and .yardopts files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(SubscriptionInt::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()
    @pub_c_m  = CLASS.public_methods(false)
    @priv_c_m = CLASS.private_methods(false)
  end

  # test_pubcm_dec().
  # @description
  #   'Subscription.subscribable()', 'Subscription.publisher(published = nil)',
  #   and 'Subscription.update(instance = nil)' were declared.
  def test_pubcm_dec()

    assert_includes(@pub_c_m, :subscribable)
    assert_includes(@pub_c_m, :publisher)
    assert_includes(@pub_c_m, :update)

  end

  # test_privcm_dec().
  # @description
  #   'Subscription.kind_subscription(subject = nil)' was declared.
  def test_privcm_dec()
    assert_includes(@priv_c_m, :new)
    assert_includes(@priv_c_m, :kind_subscription)
  end

  # teardown().
  # @description
  #  Cleanup.
  def teardown()
  end

end
