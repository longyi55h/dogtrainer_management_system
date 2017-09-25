module ApplicationHelper
    def bootstrap_class_for(flash_type)
        case flash_type
            when :success
                "alert-success"
            when :error
                "alert-danger"
            when :success
                "alert-warning"
            when :success
                "alert-info"
            else
                flash_type.to_s
        end
    end
end
