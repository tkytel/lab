curl -s https://sasakulab.com/.well-known/mantela.json | \
jq --slurpfile override override.json '
  .version = $override[0].version
  | .extensions += $override[0].extensions
' > merged.json
