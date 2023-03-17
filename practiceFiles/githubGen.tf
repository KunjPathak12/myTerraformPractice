resource "github_repository" "myTerraformPractice" {
  name = "myTerraformPractice"
  description = "repo created through teraform automation"
  visibility = "public"
  auto_init = true
}