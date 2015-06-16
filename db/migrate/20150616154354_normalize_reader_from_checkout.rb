class NormalizeReaderFromCheckout < ActiveRecord::Migration
  def up
    add_column :checkouts, :reader_id, :integer
    Checkout.all do |c|
      r = Reader.where(full_name: c.name).first_or_create
      c.update_attributes reader_id: r.id
    end
  end

  def down
    Reader.all do |r|
      r.checkouts.each do |c|
        c.update_attributes name: r.full_name
      end
    end
    remove_column :checkouts, :reader_id
  end
end
