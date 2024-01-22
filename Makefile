# Makefile for project

# Target: activate
# Description: Create a virtual environment and activate it
activate:
	@echo "Activating virtual environment..."
	env\Scripts\activate

# Target: install
# Description: Install dependencies from requirements.txt
install:
	@echo "Installing dependencies..."
	@pip install -r requirements.txt

# Target: run
# Description: Run the train.py script with specified parameters
run:
	@echo "Running train.py with parameters alpha=$(alpha) and l1_ratio=$(l1_ratio)..."
	@python train.py $(alpha) $(l1_ratio)

# Target: stop
# Description: Deactivate the virtual environment
stop:
	@echo "Deactivating virtual environment..."
	deactivate

.PHONY: activate install run stop
