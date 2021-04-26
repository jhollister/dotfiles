# Search and open an ebook file for ebook library
# EBOOK_LIBRARY environment variable should be set first and should
# contain epub files
function book --wraps=epy --description="search and open and ebook"
  epy (find -L $EBOOK_LIBRARY -name '*.epub' | fzf); 
end
