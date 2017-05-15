module FilmsHelper
  def new_actor_form(form)
    new_object = Actor.new
    form.fields_for(:actor, new_object) do |ar|
      render('films/one_actor_form', ar: ar)
    end
  end
end
