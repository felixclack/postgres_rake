task :kill_postgres_connections => :environment do
  db_name = "#{File.basename(Rails.root).underscore}_#{Rails.env}"
  sh = <<EOF
ps xa \
  | grep postgres: \
  | grep #{db_name} \
  | grep -v grep \
  | awk '{print $1}' \
  | xargs kill
EOF
  puts `#{sh}`
  puts `echo "Killed connections to #{db_name}"`
end

task "db:drop" => :kill_postgres_connections
task "db:migrate:reset" => :kill_postgres_connections           
