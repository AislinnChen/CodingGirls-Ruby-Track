require 'test_helper'

class NameCardsControllerTest < ActionController::TestCase
  setup do
    @name_card = name_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:name_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name_card" do
    assert_difference('NameCard.count') do
      post :create, name_card: { cell_phone: @name_card.cell_phone, fax: @name_card.fax, given_name: @name_card.given_name }
    end

    assert_redirected_to name_card_path(assigns(:name_card))
  end

  test "should show name_card" do
    get :show, id: @name_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @name_card
    assert_response :success
  end

  test "should update name_card" do
    patch :update, id: @name_card, name_card: { cell_phone: @name_card.cell_phone, fax: @name_card.fax, given_name: @name_card.given_name }
    assert_redirected_to name_card_path(assigns(:name_card))
  end

  test "should destroy name_card" do
    assert_difference('NameCard.count', -1) do
      delete :destroy, id: @name_card
    end

    assert_redirected_to name_cards_path
  end
end
