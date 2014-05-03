# Public: Install Computrace.
#
# Examples
#
#   include compputrace
#   class { 'computrace':
#     username => 'username_for_repo',
#     password => 'password_for_repo',
#   }
class computrace (
  $username='NO_ACCESS',
  $password='NO_ACCESS',
) {
  if $username != 'NO_ACCESS' {
    package { 'computrace':
      provider => 'compressed_pkg',
      source   => "http://${username}:${password}@artifactory.ctlt.ubc.ca/artifactory/ctlt-release-local/Computrace/RPClient.pkg.zip",
    }
  } else {
    notice('Skipped installing Computrace as credential is not specified!')
  }
}
