# Configure the Google provider
provider "google" {
  version = "3.31.0"
  project = "stately-lyceum-372405"
  region  = "us-west2"
}

# Create a Cloud SQL instance
resource "google_sql_database_instance" "my_instance" {
  name             = "my-instance"
  database_version = "MYSQL_5_7"
  region           = "us-west2"

  settings {
    tier = "db-f1-micro"


    

  }

}
