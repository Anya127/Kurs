require 'test_helper'

class FilmsControllerTest < ActionController::TestCase
  setup do
    @film = films(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:films)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create film" do
    assert_difference('Film.count') do
      post :create, film: { companies_f: @film.companies_f, country_f: @film.country_f, genre_f: @film.genre_f, lasting_f: @film.lasting_f, min_age: @film.min_age, name_f: @film.name_f }
    end

    assert_redirected_to film_path(assigns(:film))
  end

  test "should show film" do
    get :show, id: @film
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @film
    assert_response :success
  end

  test "should update film" do
    patch :update, id: @film, film: { companies_f: @film.companies_f, country_f: @film.country_f, genre_f: @film.genre_f, lasting_f: @film.lasting_f, min_age: @film.min_age, name_f: @film.name_f }
    assert_redirected_to film_path(assigns(:film))
  end

  test "should destroy film" do
    assert_difference('Film.count', -1) do
      delete :destroy, id: @film
    end

    assert_redirected_to films_path
  end
end
