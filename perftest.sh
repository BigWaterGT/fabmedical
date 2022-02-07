host="fabmedical-534755.documents.azure.com"
username="fabmedical-534755"
password="jYl4o8nmtLbD9xIipIgOZX2fmWYAYE2woQyV3dYhtOy7m7OlKxbyEAEaYiAl9WeIbYHsXkn1FHTUk4d3go1GrQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
