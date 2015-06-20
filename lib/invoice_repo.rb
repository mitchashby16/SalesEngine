require_relative '../lib/list_and_search_methods'
require_relative '../lib/invoice'
class InvoiceRepository
  include ListSearch

  attr_reader :data, :sales_engine, :instances

  def initialize(data, sales_engine)
    @data         = data
    @sales_engine = sales_engine
    @instances = manage
  end

  def manage
    return data.map do |line|
      Invoice.new(line, self)
    end
  end

  def inspect
    "#<#{self.class} #{@instances.size} rows>"
  end

  def find_by_status(status)
    instances.select do |instance|
      if instance.status.downcase.include?(status.downcase)
        return instance
      end
    end
  end

  def find_all_invoice_items_by_invoice_id(id)
    @sales_engine.find_all_invoice_items_by_invoice_id(id)
  end

  def find_all_transactions_by_invoice_id(id)
    @sales_engine.find_all_transactions_by_invoice_id(id)
  end

  def find_all_items_by_invoice_id(id)
    @sales_engine.find_all_items_by_invoice_id(id)
  end

  def find_a_customer_by_invoice_id(id)
    @sales_engine.find_a_customer_by_invoice_id(id)
  end

  def find_a_merchant_by_invoice_id(id)
    @sales_engine.find_a_merchant_by_invoice_id(id)
  end

end
