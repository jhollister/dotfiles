# Search and open an ebook file for ebook library
# EBOOK_LIBRARY environment variable should be set first and should
# contain epub files
function book --description="search and open an ebook"
  epy (find -L $EBOOK_LIBRARY -name '*.epub' | fzf); 
end
