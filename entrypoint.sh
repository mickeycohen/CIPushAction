#!/bin/bash
echo "git status:"
git status
echo "Running git config"
git config user.name "${INPUT_COMMIT_USER}"
git config user.email "${INPUT_COMMIT_EMAIL}"
echo "Adding files"
git add ${INPUT_FILES}
echo "Commiting changes"
git commit -m "${INPUT_COMMIT_MESSAGE} [skip ci]"
echo "Rebase and push"
git pull --rebase
git push