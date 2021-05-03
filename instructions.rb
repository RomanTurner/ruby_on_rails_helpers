$active_record = [
    {
        name: "CheckList", 
        code: "
        1. Draw out Relationships. \n
        2. Create Tables - Models - Migrations \n
        3. Create Seed data. \n
        4. Rails console, check out if relationships work. \n
        5. -Can do now or later - Build custom methods on model if needed \n
        6. -Can do now or later - Create your validation macros on model \n
        7. Rails db:migrate. \n
        8. Rails db:seed. \n
        9. Rails server. \n
        "
    },
    {
        name: "Object Relationship Models (ORM)", 
        code: "Draw out your relationships. Just put marker to whiteboard and draw out your relationships."
    },
    {
        name: "Work with the command line to set up your database, and models. The M layer in MVC", 
        code: "The process is typically Table => Model => Migration, with generators you can do all at the same time.
        \nthe command is:  rails generate model NAME [field[:type][:index] field[:type][:index]] [options]
        \nthe command '$rails generate model' will display a manual for reference."
    },
    {
        name: "Does your table require a foreign key?", 
        code: "The command is:  $rails generate model Modelname column_name:type model_name:references
        \n this will create a column for the foreign key in the database."
    },
    {
        name: "Create your Model relationships", 
        code: "
        belongs_to :model 
        has_many :model, dependent: :destroy
        has_many :model, through: :model
        "
    },
    {
        name: "Test your Tables", 
        code: "Create seed data, Rails db:migrate, Rails console, checkout if your relationships work."
    }
]

$application_controller = [
    {
        name: "CheckList", 
        code: "
        1. Create Controllers.
        2. Create RESTful actions 
        3. Create Find_model
        4. Create Strong params
        5. Create Before_action
        4. Create Corresponding Routes 
        "
    },
    {
        name: "Create controllers for your models", 
        code: "The command is: $rails generate controller NAME [action action] [options]
        \n The command '$rails generate model' will display a manual for reference."
    },
    {
        name: "Create RESTful Actions", 
        code: "
        Index ➡ /models
        Show ➡ /models/:id
        New ➡ /model/new
        Create ➡ /models
        Edit ➡ /models/:id/edit
        Update ➡ /models/:id
        Destroy ➡ /models/:id
        "
    },
    {
        name: "Create your find method", 
        code: "@model = Model.find_by(id: params[:id])"
    },
    {
        name: "Create Strong Params", 
        code: "params.require(:model).permit(:attr, :attr, :attr)"
    },
    {
        name: "Create Before Action", 
        code: "before_action :find_model, only [:show, :edit, :update, :destroy]"
    },
    {
        name: "Index", 
        code: "@model = Model.all "
    },
    {
        name: "Show", 
        code: "Taken care of with before_action :find_model"
    },
    {
        name: "Edit", 
        code: "Taken care of with before_action :find_model"
    },
    {
        name: "New", 
        code: "@model = Model.new "
    },
    {
        name: "Create", 
        code: "
                @model = Model.new(model_params)
                if @model.save
                  flash[:success] = 'model successfully created'
                  redirect_to @model
                else
                  flash[:error] = @model.errors.full_messages
                  redirect_to new_model_path
                end"
    },
    {
        name: "Update", 
        code: "
              if @model.update(model_params)
                flash[:success] = 'model was successfully updated'
                redirect_to @model
              else
                flash[:error] = 'Something went wrong'
                render :edit
              end
        "
    },
    {
        name: "Destroy", 
        code: "
            if @model.destroy
             flash[:success] = 'model was successfully deleted.'
             redirect_to models_path
            else
             flash[:error] = 'Something went wrong'
             redirect_to models_path
            end
        "
    },
    {
        name: "Create Corresponding Routes", 
        code: "resources :model"
    }

]

$action_view = [
    {
        name: "CheckList", 
        code: "
        1. Templates
        2. Partials
        3. ActionView Helpers
            ·Url helpers
            ·Form helpers
            ·Content Tag helpers
        "
    },
    {
        name: "Templates", 
        code: "We use .erb files. We need a view template for each corresponding controller action"
    },
    {
        name: "Partials", 
        code: "
        To keep code DRY you can abstract rendering procese inside a partials folder in your views folder. 
        Partials use the convention of prefixing a underscore ➡ /_name_of_partial.html.erb 
        Code: '<%= render 'partials/name_of_partial %>'
        "
    },
    {
        name: "Url Helpers pt 1 Routing", 
        code: "
            ·Url helpers (Follows RESTful convention)
               Index ➡ models_path
               Show ➡ model_pah
               New ➡ new_model_path
               Create ➡ models
               Edit ➡ /models/:id/edit
               Update ➡ /models/:id
               Destroy ➡ /models/:id 
        "
    },
    {
        name: "Url Helpers pt 2 User Dictated Navigation", 
        code: "
               ·link_to ➡ 'link_to(body, url, html_options = {})'
                    º url is a String; you can use URL helpers like models_path
                        º example: 'link_to 'Profile', profile_path(@profile)'
                        º example2: link_to 'Profile', @profile

               ·button_to ➡ 'button_to(name, options = {}, html_options = {})'
                  Ω A list of a few special html_options:
                    º :method - Symbol of HTTP verb. Supported verbs are :post, :get, :delete and :put. By default it will be :post.
                    º :disabled - If set to true, it will generate a disabled button.
                    º :confirm - This will use the unobtrusive JavaScript driver to prompt with the question specified. If the user accepts, the link is processed normally, otherwise no action is taken.
                    º :remote - If set to true, will allow the Unobtrusive JavaScript drivers to control the submit behavior. By default this behavior is an ajax submit.
                    º :form - This hash will be form attributes
                    º :form_class - This controls the class of the form within which the submit button will be placed
              

        "
    }
]



$active_model_validator = [
    {
        name: "CheckList", 
        code: "
        1. Triggers
        2. Helpers
        "
    },
    {
        name: "The following methods trigger validations, and will save the object to the database only if the object is valid", 
        code: "
            ·create
            ·create!
            ·save
            ·save!
            ·update
            ·update!
            "
    },
    {
        name: "
                Active Record offers many pre-defined validation helpers that you can use directly inside your class definitions. 
                For More details ✒$rails reminder:validator_helpers", 
        code: "
            ◦ acceptance
            ◦ validates_associated
            ◦ confirmation
            ◦ exclusion
            ◦ format
            ◦ inclusion
            ◦ length
            ◦ numericality
            ◦ presence
            ◦ absence
            ◦ uniqueness
            ◦ validates_with
            ◦ validates_each
            "
    }
  
]

$validator_helpers = [
      {
        name: "The following methods trigger validations, and will
                 save the object to the database only if the object is valid", 
        code: "
            ·acceptance  
                ▸ This method validates that a checkbox on the user interface was checked 
                ▸ code example: 
                
                validates :attr, acceptance: true

            ·validates_associated  
                ▸ You should use this helper when your model has associations 
                    with other models and they also need to be validated.
                ▸ code example:  
                
                has_many :books
                validates_associated :books

            ·confirmation 
                ▸ You should use this helper when you have two text 
                    fields that should receive exactly the same content.
                ▸ code: 
                
                validates :email, confirmation: true


            ·exclusion 
                ▸ This helper validates that the attributes' values are not included in a given set. 
                ▸ code example: 

                 validates :subdomain, exclusion: { in: %w(www us ca jp),
                            message: '%{value} is reserved.' }

                    ◦ The exclusion helper has an option :in that receives
                         the set of values that will not be accepted for the validated attributes. 
            ·format 
                ▸ This helper validates the attributes' values by testing whether 
                    they match a given regular expression, which is specified using the :with option.
                ▸ code example: 

                validates :legacy_code, format: { with: RegEx,
                        message: 'only allows letters' }

            ·inclusion 
                ▸ This helper validates that the attributes' values are included
                     in a given set. In fact, this set can be any enumerable object.
                ▸ code example:
                
                validates :size, inclusion: { in: %w(small      medium large),
                                message: '%{value} is not a valid size' }

                     ◦The inclusion helper has an option :in that 
                        receives the set of values that will be accepted.
            ·length 
                ▸ This helper validates the length of the attributes' values. 
                It provides a variety of options, so you can specify length constraints in different ways:
                ▸ code example: 

                validates :name, length: { minimum: 2 }
               
                The possible length constraint options are:
                ◦ :minimum - The attribute cannot have less than the specified length.
                ◦ :maximum - The attribute cannot have more than the specified length.
                ◦ :in (or :within) - The attribute length must be included in a given interval. 
                    The value for this option must be a range.
                ◦ :is - The attribute length must be equal to the given value.


            ·numericality
                ▸ This helper validates that your attributes have only numeric values.
                 By default, it will match an optional sign followed by an integral or floating point number.
                ▸ code example: 

                validates :points, numericality: true
                validates :games_played, numericality: { only_integer: true }

                Besides :only_integer, this helper also accepts the following options to add constraints to acceptable values:

                ◦ :greater_than - Specifies the value must be greater than the supplied value. 
                    The default error message for this option is 'must be greater than %{count}'.

                ◦ :greater_than_or_equal_to - Specifies the value must be greater than or equal
                    to the supplied value. The default error message for this        
                    option is 'must be greater than or equal to %{count}'.

                ◦ :equal_to - Specifies the value must be equal to the supplied value. 
                    The default error message for this option is 'must be equal to %{count}'.

                ◦ :less_than - Specifies the value must be less than the supplied value. 
                    The default error message for this option is 'must be less than %{count}'.

                ◦ :less_than_or_equal_to - Specifies the value must be less than or equal to the supplied value. 
                    The default error message for this option is 'must be less than or equal to %{count}'.

                ◦ :other_than - Specifies the value must be other than the supplied value.
                     The default error message for this option is 'must be other than %{count}'.

                ◦ :odd - Specifies the value must be an odd number if set to true. 
                    The default error message for this option is 'must be odd'.

                ◦ :even - Specifies the value must be an even number if set to true. 
                    The default error message for this option is 'must be even'.

            ·presence 
                ▸ This helper validates that the specified attributes are not empty.
                ▸ code example: 

                validates :name, :login, :email, presence: true

            ·absence 
                ▸ This helper validates that the specified attributes are absent. 
                ▸ code example: 
                
                    validates :name, :login, :email, absence: true

            ·uniqueness
                ▸ This helper validates that the attribute's value is unique right before the object gets saved.
                ▸ code example: 

                    validates :email, uniqueness: true
                    validates :name, uniqueness: { scope: :year,
                            message: 'should happen once per year' }

                    ◦There is a :scope option that you can use to specify one or
                     more attributes that are used to limit the uniqueness check:


            ·validates_with 
                ▸ This helper passes the record to a separate class for validation.
                ▸ code example: 
                
                        validates_with GoodnessValidator

            ·validates_each 
                ▸ This helper validates attributes against a block.
                ▸ code example: 

                 validates_each :name, :surname do |record, attr, value|
                    record.errors.add(attr, 'must start with upper case') if value =~ RegEx 
            "
    }
]