class FileBrowserController < ApplicationController
  def index
    @files = Dir.glob('*').select { |f| File.file?(f) }.sort.reverse
    @dirs = Dir.glob('**/').sort

    render component: 'Filebrowser', props: {pwd: Dir.pwd, files: @files, dirs: @dirs, is_root_directory: DirUtility.config_path_equals?}
  end

  def goto
    if params[:dirname].present? && params[:dirname] == DirUtility::MOVE_UP_SYMBOL
      DirUtility.move_up
    else
      DirUtility.change_dir(params[:dirname])
    end
    redirect_to '/'
  end
end