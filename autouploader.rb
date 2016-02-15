require 'net/ftp'

def upload_changed_file(file)

				ftp_host  = 'ftp.cluster006.ovh.net'
				ftp_login = 'gabinetitc'
				ftp_pass  = 'Somilina64'

				Net::FTP.open(ftp_host, ftp_login, ftp_pass) do |ftp|
								ftp.chdir('www/testy/stylesheets')
								ftp.puttextfile(file)
				end
end

class Watcher
				def initialize(path)
								@file_path = path
								@modified = File.mtime(@file_path)
				end
				def	watch
								loop do
												new_time = File.mtime(@file_path)
												if new_time != @modified
																puts 'Plik ' + @file_path + ' zmodyfikowany!'
																@modified = new_time
																puts 'Uploaduje...'
																upload_changed_file(@file_path)
												end
								end
				end
end
file = '../initium/stylesheets/styles.css'

Watcher.new(file).watch

