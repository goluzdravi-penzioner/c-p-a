class java::install 
#(
#  $name = 'java-1.8.0-openjdk',
#)

{
  package {'java':
    name      => 'java-1.8.0-openjdk',
    provider  => yum,
    ensure    => installed,
  } 
}
