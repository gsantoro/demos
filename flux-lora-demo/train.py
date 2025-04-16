import os
import replicate

# Set Replicate API token from environment variable  
api_token = os.environ["REPLICATE_TOKEN"]

owner = os.environ["OWNER"]
model_name = os.environ["MODEL_NAME"]

huggingface_token = os.environ["HF_TOKEN"]
huggingface_repo_id = os.environ["HF_REPO_ID"]

training_images_zip = os.environ["TRAINING_IMAGES_ZIP"]

# Create a new model on Replicate as the destination for the fine-tuned weights
model = replicate.models.create(
    owner=owner,  
    name=model_name,
    visibility="public",
    description="A fine-tuned FLUX.1 model"
)

print(f"Model created: {model.name}")
print(f"Model URL: https://replicate.com/{model.owner}/{model.name}")

# Start the training 
training = replicate.trainings.create(
    version="ostris/flux-dev-lora-trainer:4ffd32160efd92e956d39c5338a9b8fbafca58e03f791f6d8011f3e20e8ea6fa",
    input={
        "input_images": open(training_images_zip, "rb"),
        "steps": 1000,
        "hf_token": huggingface_token,
        "hf_repo_id": huggingface_repo_id,
    },
    destination=f"{model.owner}/{model.name}"
)

print(f"Training started: {training.status}") 
print(f"Training URL: https://replicate.com/p/{training.id}")