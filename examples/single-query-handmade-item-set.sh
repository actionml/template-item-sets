#!/usr/bin/env bash

echo "Recommendations for user: u1, should have none but popular"
echo ""
curl -H "Content-Type: application/json" -d '
{
    "user": "u1"
}' http://localhost:8000/queries.json
echo ""

echo "Recommendations for user: receipt 1, should give results, including popular"
echo ""
curl -H "Content-Type: application/json" -d '
{
    "user": "receipt 1"
}' http://localhost:8000/queries.json
echo ""

echo "Recommendations for user: is10, no data for this so should only give popular"
echo ""
curl -H "Content-Type: application/json" -d '
{
    "itemSet": "is10"
}' http://localhost:8000/queries.json
echo ""

echo "Recommendations for user: is1, this should give results"
echo ""
curl -H "Content-Type: application/json" -d '
{
    "itemSet": "is1"
}' http://localhost:8000/queries.json
echo ""

