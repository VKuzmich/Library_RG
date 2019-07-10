# frozen_string_literal: true



module Database
  DB_PATH = './tasks/database/'
  DB_FILE = 'lib_db.yaml'

  def save_data
    check_dir

    data = {
        authors: @authors,
        books: @books,
        orders: @orders,
        readers: @readers
    }

    File.write(DB_PATH + DB_FILE, data.to_yaml)
  end

  def load_data
    check_dir

    file = DB_PATH + DB_FILE
    path = Pathname.new(file).exist? ? file : 'lib_db.yaml'

    yaml = File.read(path)

    data = Psych.safe_load(yaml, [Symbol, Date, Author, Book, Reader, Order], [], true)

    add_to_library data
  end

  def generate_data
    check_dir
    data = FakeData.call
    add_to_library data
  end

  def delete_data
    check_dir
    file = DB_PATH + DB_FILE
    return unless Pathname.new(file).exist?
    File.delete(file)
  end

  def add_to_library(data)
    @authors  = data[:authors]
    @books    = data[:books]
    @orders   = data[:orders]
    @readers  = data[:readers]
  end

  def check_dir
    Dir.mkdir(DB_PATH, 0o700) unless Pathname.new(DB_PATH).exist?
  end
end