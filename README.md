Terraforming like a Pro: Scalable Infrastructure Across Environments
Over the past weeks, I’ve been resharpening my skills in Terraform by building reusable infrastructure the way it’s done in real-world organisations.
Here’s how I structured it:
🔹 Modules :
I created separate reusable modules for VPC, EC2, RDS, and S3. Each module has its own main.tf, variables.tf, and outputs.tf, making the code clean and reusable.

🔹 Environments :
 I separated infrastructure into dev, stage, and prod environments. Each environment has its own terraform.tfvars file with unique configurations such as region, CIDR blocks, instance types, database sizes, and S3 bucket names.

🔹 Flexibility :
With this setup, I can deploy the same infrastructure across environments by simply running:

cd envs/dev && terraform apply -var-file="terraform.tfvars"
cd envs/stage && terraform apply -var-file="terraform.tfvars"
cd envs/prod && terraform apply -var-file="terraform.tfvars"

💡 Why this matters:
This mirrors how companies manage infrastructure in production:
    • Development is lightweight and cost-friendly.
    • Staging closely matches production for realistic testing.
    • Production is secure, scalable, and robust.
With this approach, I can spin up infrastructure consistently across all environments — no manual tweaks, no surprises.

The project structure::



.
 <img width="459" height="759" alt="Screenshot from 2025-09-02 21-40-10" src="https://github.com/user-attachments/assets/a7817bf3-2689-449e-9f18-d43ba3c26d61" />



