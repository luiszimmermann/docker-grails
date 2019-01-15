workflow "Workflow" {
  on = "push"
  resolves = [
    "3.3.9",
    "3.3.8",
    "GitHub Action for AWS",
  ]
}

action "3.3.9" {
  uses = "actions/docker/cli@c08a5fc9e0286844156fefff2c141072048141f6"
  runs = "build -t grails:$GRAILS_VERSION-$OS --build-arg GRAILS_VERSION=$GRAILS_VERSION ./$OS"
  env = {
    OS = "stretch"
    GRAILS_VERSION = "3.3.9"
  }
}

action "3.3.8" {
  uses = "actions/docker/cli@c08a5fc9e0286844156fefff2c141072048141f6"
  runs = "build -t grails:$GRAILS_VERSION-$OS --build-arg GRAILS_VERSION=$GRAILS_VERSION ./$OS"
  env = {
    OS = "stretch"
    GRAILS_VERSION = "3.3.8"
  }
}

action "2.5.5" {
  uses = "actions/docker/cli@c08a5fc9e0286844156fefff2c141072048141f6"
  runs = "build -t grails:$GRAILS_VERSION-$OS --build-arg GRAILS_VERSION=$GRAILS_VERSION ./$OS"
  env = {
    OS = "stretch"
    GRAILS_VERSION = "2.5.5"
  }
}

action "GitHub Action for AWS" {
  uses = "actions/aws/cli@8d318706868c00929f57a0b618504dcdda52b0c9"
  needs = ["2.5.5", "3.3.8", "3.3.9"]
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
}
