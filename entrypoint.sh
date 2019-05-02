#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /elearning/tmp/pids/server.pid

# This is a change
# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"