if [[ -n "$PYTHON_VENV_PATH" ]]; then
  echo "Loading ${PYTHON_VENV_PATH}"
  source ${PYTHON_VENV_PATH}
elif [[ -d "venv" ]]; then
  source venv/bin/activate
elif [[ -d ".venv" ]]; then
  source .venv/bin/activate
else
   
   if [[ -d ".git" ]]; then
     echo 'Creating venv'
     python3.10 -m venv venv

     # adding venv to .gitignore if not present
     grep -qxF 'venv' .gitignore || echo 'venv' >> .gitignore
   else
      echo 'No venv found and none will be created.'
   fi
fi
