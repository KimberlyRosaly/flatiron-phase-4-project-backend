class Prayer < ApplicationRecord
    # R E Q U I R E S :BODY OF INSTANTIATED OJECT TO HAVE V A L U E
    validates :body, :presence => true


    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # MODEL VALIDATIONS > BECAUSE MIGRATION VALIDATIONS AREN'T WORKING???WHYYYY!?!
    attribute :name, :string, default: "ANONYMOUS"
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
end
