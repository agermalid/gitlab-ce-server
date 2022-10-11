#!/bin/bash
echo "# Deletion networks..."
docker network rm frontend_net
docker network rm backend_net
echo "# Networks deleted"
exit 0