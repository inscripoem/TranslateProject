#!/bin/bash

# Get valid files in git diff (markdown files in sources/)
get_diff_article_files() {
  FILES=$(cat $DIFF_JSON | yq e '.files[].path' - )
  ARTICLES=''
  for FILE in $FILES; do
    if [[ "$FILE" == sources/*.md ]]; then
      ARTICLES="$ARTICLES $FILE"
    fi
  done
}


check_proofread() {
  PROOFREAD_ARTICLE=$1
  PROOFREAD_DATE=$(yq -f extract '.proofread_date' $PROOFREAD_ARTICLE)
  if [ "$PROOFREAD_DATE" == "null" ]; then
    ERROR=$ERROR"Missing metadata in proofread_date; "
  fi
}

check_proofreading() {
  PROOFREADING_ARTICLE=$1
  PROOFREADER=$(yq -f extract '.proofreader' $PROOFREADING_ARTICLE)
  if [ "$PROOFREADER" == "null" ]; then
    ERROR=$ERROR"Missing metadata in proofreader; "
  else
    if [ "$STATUS" == "proofreading" ] || [ "$STATUS" == "proofread" ]; then
      if [ "$PROOFREADER" != "$ACTOR_ID" ]; then
        ERROR=$ERROR"Proofreader is not the same as the PR opener; "
      fi
    fi
  fi
}

check_translated() {
  TRANSLATED_ARTICLE=$1
  TRANSLATED_DATE=$(yq -f extract '.translated_date' $TRANSLATED_ARTICLE)
  if [ "$TRANSLATED_DATE" == "null" ]; then
    ERROR=$ERROR"Missing metadata in translated_date; "
  fi
}

check_translating() {
  TRANSLATING_ARTICLE=$1
  TRANSLATOR=$(yq -f extract '.translator' $TRANSLATING_ARTICLE)
  if [ "$TRANSLATOR" == "null" ]; then
    ERROR=$ERROR"Missing metadata in translator; "
  else
    if [ "$STATUS" == "translating" ] || [ "$STATUS" == "translated" ]; then
      if [ "$TRANSLATOR" != "$ACTOR_ID" ]; then
        ERROR=$ERROR"Translator is not the same as the PR opener; "
      fi
    fi
  fi
}

check_collected() {
  COLLECTED_ARTICLE=$1
  TITLE=$(yq -f extract '.title' $COLLECTED_ARTICLE)
  AUTHOR=$(yq -f extract '.author' $COLLECTED_ARTICLE)
  COLLECTOR=$(yq -f extract '.collector' $COLLECTED_ARTICLE)
  COLLECTED_DATE=$(yq -f extract '.collected_date' $COLLECTED_ARTICLE)
  if [ "$TITLE" == "null" ] || [ "$AUTHOR" == "null" ] || [ "$COLLECTOR" == "null" ] || [ "$COLLECTED_DATE" == "null" ]; then
    ERROR=$ERROR"Missing metadata in title/author/collector/collected_date; "
  else
    if [ "$STATUS" == "collected" ]; then
      if [ "$COLLECTOR" != "$ACTOR_ID" ]; then
        ERROR=$ERROR"Collector is not the same as the PR opener; "
      fi
    fi
  fi
}

get_diff_article_files
for ARTICLE in $ARTICLES; do
  echo "Checking article: $ARTICLE"
  ERROR=""
  STATUS=$(yq -f extract '.status' $ARTICLE)
  case $STATUS in
    "published")
      # No specific check for published articles
      ;&
    "proofread")
      check_proofread $ARTICLE
      ;&
    "proofreading")
      check_proofreading $ARTICLE
      ;&
    "translated")
      check_translated $ARTICLE
      ;&
    "translating")
      check_translating $ARTICLE
      ;&
    "collected")
      check_collected $ARTICLE
      ;;
    *)
      ERROR="Invalid status: $STATUS"
      ;;
  esac
  if [ -z "$ERROR" ]; then
    echo "  ✨ All checks passed for $STATUS $ARTICLE"
  else
    echo "  😭 Some checks failed for $STATUS $ARTICLE: $ERROR"
  fi
done

