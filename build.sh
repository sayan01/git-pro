#!/usr/bin/env bash

# Compile a Beamer LaTeX file 3 times using XeLaTeX

# Name of your TeX file (without .tex)
FILE="${1:-slides}" # Default to 'slides' if no argument is provided

echo "🔧 Starting XeLaTeX build for $FILE.tex..."

for i in {1..3}; do
  echo "📝 Pass $i..."
  xelatex -interaction=nonstopmode -halt-on-error "$FILE.tex"

  # If any run fails, exit the loop
  if [ $? -ne 0 ]; then
    echo "❌ Compilation failed on pass $i. Check your .log file for errors."
    exit 1
  fi
done

echo "✅ PDF build complete: $FILE.pdf"
rm -rf $FILE.{aux,nav,out,toc,log,bbl,blg,snm} 2>/dev/null
