require "csv"


class RecordRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @next_id = 1
    @records = []
    load_csv if File.exist? csv_file_path
  end

  def all
    @records
  end

  def create(record)
    record.id = @next_id
    @next_id  += 1
    @records << record
    save_csv
  end

  def find(record_id)
    @records.find{ |record| record.id == record_id }
  end

  private

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << csv_headers
      @records.each do |record|
        csv << element_to_row(record)
      end
    end
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      @records << row_to_element(row)
    end
    @next_id = @records.empty? ? 1 : @records.last.id + 1
  end
end