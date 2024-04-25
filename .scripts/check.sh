#!/bin/bash

# Get valid files in git diff (markdown files in sources/)
get_diff_article_files() {
  FILES=$(cat $DIFF_JSON | yq e '.files[].path' - )
  ARTICLES=''
  for FILE in $FILES; do
    if [[ $FILE == sources/*.md ]]; then
      ARTICLES="$ARTICLES $FILE"
    fi
  done
}


check_proofread() {
  PROOFREAD_ARTICLE=$1
  PROOFREAD_DATE=$(yq -f extract '.proofread_date' $PROOFREAD_ARTICLE)
  if [ -z "$PROOFREAD_DATE" ]; then
    ERROR=$ERROR"Missing metadata in proofread_date; "
  fi
}

check_proofreading() {
  PROOFREADING_ARTICLE=$1
  PROOFREADER=$(yq -f extract '.proofreader' $PROOFREADING_ARTICLE)
  if [ -z "$PROOFREADER" ]; then
    ERROR=$ERROR"Missing metadata in proofreader; "
  else
    if [ $STATUS == "proofreading" ] || [ $STATUS == "proofread" ]; then
      echo "waiting code for github id check of proofreader"
    fi
  fi
}

check_translated() {
  TRANSLATED_ARTICLE=$1
  TRANSLATED_DATE=$(yq -f extract '.translated_date' $TRANSLATED_ARTICLE)
  if [ -z "$TRANSLATED_DATE" ]; then
    ERROR=$ERROR"Missing metadata in translated_date; "
  fi
}

check_translating() {
  TRANSLATING_ARTICLE=$1
  TRANSLATOR=$(yq -f extract '.translator' $TRANSLATING_ARTICLE)
  if [ -z "$TRANSLATOR" ]; then
    ERROR=$ERROR"Missing metadata in translator; "
  else
    if [ $STATUS == "translating" ] || [ $STATUS == "translated" ]; then
      echo "waiting code for github id check of translator"
    fi
  fi
}

check_collected() {
  COLLECTED_ARTICLE=$1
  TITLE=$(yq -f extract '.title' $COLLECTED_ARTICLE)
  AUTHOR=$(yq -f extract '.author' $COLLECTED_ARTICLE)
  COLLECTOR=$(yq -f extract '.collector' $COLLECTED_ARTICLE)
  COLLECTED_DATE=$(yq -f extract '.collected_date' $COLLECTED_ARTICLE)
  echo "TITLE: $TITLE, AUTHOR: $AUTHOR, COLLECTOR: $COLLECTOR, COLLECTED_DATE: $COLLECTED_DATE"
  
  if [ -z "$TITLE" ] || [ -z "$AUTHOR" ] || [ -z "$COLLECTOR" ] || [ -z "$COLLECTED_DATE" ]; then
    ERROR=$ERROR"Missing metadata in title/author/collector/collected_date; "
    echo 1
  else
    if [ $STATUS == "collected" ]; then
      echo "waiting code for github id check of collector"
    fi
  fi
}

get_diff_article_files
for ARTICLE in $ARTICLES; do
  echo "# Checking article: $ARTICLE"
  ERROR=""
  STATUS=$(yq -f extract '.status' $ARTICLE)
  case $STATUS in
    published)
      # No specific check for published articles
      ;&
    proofread)
      check_proofread $ARTICLE
      ;&
    proofreading)
      check_proofreading $ARTICLE
      ;&
    translated)
      check_translated $ARTICLE
      ;&
    translating)
      check_translating $ARTICLE
      ;&
    collected)
      check_collected $ARTICLE
      ;;
    *)
      ERROR="Invalid status: $STATUS"
      ;;
  esac
  if [ -z "$ERROR" ]; then
    echo "✨ All checks passed for $STATUS $ARTICLE"
  else
    echo "😭 Some checks failed for $STATUS $ARTICLE: $ERROR"
  fi
done

