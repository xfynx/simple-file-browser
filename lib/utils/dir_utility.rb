class DirUtility
  MOVE_UP_SYMBOL = '↑'  # для идентификации перехода вверх по дереву, т.к. двоеточие в URI не сработало

  # проверяем, что путь, заданный в конфиге, присутствует в текущем пути
  def self.config_path_included?
    Dir.pwd.starts_with?(Rails.application.config.file_browser_root)
  end

  # проверяем на совпадение текущего пути и заданного в конфиге
  def self.config_path_equals?
    Dir.pwd == (Rails.application.config.file_browser_root)
  end

  # проверка на возможность пойти вверх по дереву папок.
  # можно в случае, если путь включён в конфиг-путь, но при этом не равен ему
  def self.can_move_up?
    config_path_included? && !config_path_equals?
  end

  def self.change_dir(dirname)
    current_path = Dir.pwd
    begin
      Dir.chdir("#{dirname}")
    rescue Errno::ENOENT
      Dir.chdir(current_path)
    end
  end

  def self.move_up
    Dir.chdir('..') if DirUtility.can_move_up?
  end
end