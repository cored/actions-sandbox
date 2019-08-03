workflow "WhenNewPR" {
  on = "pull_request"
  resolves = ["TODOSHammer"]
}

action "TODOSHammer" {
  uses = "./.github/todos_hammer"
  secrets = ["GITHUB_TOKEN"]
}
