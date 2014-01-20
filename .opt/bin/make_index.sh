#!/bin/bash

book_title='うさぎでもわかるC++'
readme='README.md'

global_index_buffer='';

main()
{
  pushed_dir=`pwd`

  while [ ! -d .git ]
  do
    cd ..
  done

  top_dir=`pwd`

  dirs=`find . -type d -regex './[^.][^/]+$' | sort`

  for d in $dirs
  do
    make_index $d
  done

  make_global_index

  cd $pushed_dir
}

make_index()
{
  cd $1
  section=`echo $1 | tr -d ./`
  echo [generate: $section/$readme]
  rm $readme
  echo "# $book_title" >> $readme
  echo "- [../](../)"  >> $readme
  echo ""              >> $readme
  echo "## $section"   >> $readme
  global_index_buffer+="- [$section]($section)\n"
  for c in `find . -type f -iname '*.md' | sort`
  do
    if [ $c == ./$readme  ]; then continue; fi
    content=`echo $c | sed 's|.md$||g' | sed 's|^./||g'`
    echo "  $content"
    echo "- [$content](${content}.md)" >> $readme
    global_index_buffer+="    - [$content](${section}/${content}.md)\n"
  done
  cd $top_dir
}

make_global_index()
{
  echo [generate: $readme]
  rm $readme
  echo "# $book_title" >> $readme
  echo -e $global_index_buffer >> $readme
}

main