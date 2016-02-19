class FileBrowserController < ApplicationController
  def index
    @current_dir = Dir.pwd
    @files = Dir.glob('*').select { |f| File.file?(f) }.sort.reverse
    @dirs = Dir.glob('**/').sort
  end

  def goto
  end
end
