SHELL := /bin/bash

init:
	uv init --python 3.14

create_env:
	uv venv py314

# Note: This will only activate the environment for the duration of this subshell.
# To activate it in your terminal, run 'source .venv/bin/activate' directly.
use_env:
	@echo "Run: 'source py314/bin/activate' directly in your terminal."

unuse_env:
	@echo "To deactivate, use 'deactivate' directly in your terminal or exit the subshell."

install_dependencies:
# setting another venv name for the project, because the default one is .venv for 'uv sync'
	UV_PROJECT_ENVIRONMENT=py314 uv sync

list_dependencies:
	uv pip list

freeze_dependencies:
	uv pip freeze

install_required_dependencies:
	uv pip install -r "02 - Installing and Running Python/requirements.txt"

run_notebook:
	jupyter notebook .