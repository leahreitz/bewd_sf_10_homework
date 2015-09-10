require 'test_helper'

class AnimalsControllerTest < ActionController::TestCase
  setup do
    @animal = animals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post :create, animal: { africa: @animal.africa, anartica: @animal.anartica, asia: @animal.asia, australia: @animal.australia, common_name: @animal.common_name, europe: @animal.europe, genus: @animal.genus, native_to: @animal.native_to, north_america: @animal.north_america, south_america: @animal.south_america, species: @animal.species }
    end

    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should show animal" do
    get :show, id: @animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animal
    assert_response :success
  end

  test "should update animal" do
    patch :update, id: @animal, animal: { africa: @animal.africa, anartica: @animal.anartica, asia: @animal.asia, australia: @animal.australia, common_name: @animal.common_name, europe: @animal.europe, genus: @animal.genus, native_to: @animal.native_to, north_america: @animal.north_america, south_america: @animal.south_america, species: @animal.species }
    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete :destroy, id: @animal
    end

    assert_redirected_to animals_path
  end
end
