require "test_helper"

class DiscussionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group = groups(:one)
    @discussion = discussions(:one)
  end

  test "should get index" do
    get group_discussions_url(@group)
    assert_response :success
  end

  test "should get new" do
    get new_group_discussion_url(@group)
    assert_response :success
  end

  test "should create discussion" do
    assert_difference("Discussion.count") do
      post group_discussions_url(@group), params: { discussion: {title: @discussion.title } }
    end

    assert_redirected_to group_discussion_url(@group, Discussion.last)
  end

  test "should show discussion" do
    get group_discussion_url(@group, @discussion)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_discussion_url(@group, @discussion)
    assert_response :success
  end

  test "should update discussion" do
    patch group_discussion_url(@group, @discussion), params: { discussion: {title: @discussion.title } }
    assert_redirected_to group_discussion_url(@group, @discussion)
  end

  test "should destroy discussion" do
    assert_difference("Discussion.count", -1) do
      delete group_discussion_url(@group, @discussion)
    end

    assert_redirected_to group_discussions_url(@group, @discussion)
  end
end
