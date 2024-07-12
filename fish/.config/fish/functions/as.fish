function as
    set -xg AWS_PROFILE $argv[1]
    aws sts get-caller-identity 
end

