require "uri"

module Tpaga
  class ChargeApi
    basePath = "https://sandbox.tpaga.co/api"
    # apiInvoker = APIInvoker

    # Adds a new CreditCardCharge to Customer&#39;s CreditCard
    # Creates a new `CreditCardCharge` and associates it to a `CreditCard`.
    # @param body The `CreditCardCharge` object to be generated to a `CreditCard` it has the following fields\n- **id** its the id of the `CreditCardCharge` thats going to be generated after creation.\n- **creditCard** which is the identificator of the `CreditCard` to be charged\n- **customer** which is the id of the `Customer` associated with the `CreditCard`\n- **amount** which is the full amount of the charge\n- **currency** its the 3-letter ISO code for the currency.\n- **installments** its the amount of payments to divide the charge amount, it can be minumum 1 maximum 36\n- **taxAmount** the amount that accounts as taxes.\n- **paid** its the status of the charge. true if its paid, false if its not.\n- **description** which is the desciption of the charge being made.\n- **orderId** commerce order identificator
    # @param [Hash] opts the optional parameters
    # @return [CreditCardCharge]
    def self.add_credit_card_charge(body, opts = {})

      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling add_credit_card_charge" if body.nil?


      # resource path
      path = "/charge/credit_card".sub('{format}', 'json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(body)


      auth_names = ['api_key']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CreditCardCharge.new() and obj.build_from_hash(response)
    end

    # Retrieve a CreditCardCharge by ID
    # Get the details of an existing `CreditCardCharge`. This method only requires an unique `CreditCardCharge` identifier `id` that was returned upon `CreditCardCharge` creation.
    # @param id Identification of `CreditCardCharge` that needs to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [CreditCardCharge]
    def self.get_credit_card_charge_by_id(id, opts = {})

      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_credit_card_charge_by_id" if id.nil?


      # resource path
      path = "/charge/credit_card/{id}".sub('{format}', 'json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil


      auth_names = ['api_key']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CreditCardCharge.new() and obj.build_from_hash(response)
    end

    # Adds a new DaviPlataCharge to Customer&#39;s DaviPlata
    # Creates a new `DaviPlataCharge` and associates it to a `DaviPlata`.
    # @param body The `DaviPlataCharge` object to be generated to a `DaviPlata`. It has the following fields\n- **id** its the id of the `DaviPlataCharge` thats going to be generated after creation.\n- **daviPlata** which is the identificator of the `DaviPlata` to be charged\n- **customer** which is the id of the `Customer` associated with the `DaviPlata`\n- **amount** which is the full amount of the charge\n- **currency** its the 3-letter ISO code for the currency.\n- **taxAmount** the amount that accounts as taxes.\n- **paid** its the status of the charge. true if its paid, false if its not.\n- **description** which is the desciption of the charge being made.\n- **orderId** commerce order identificator
    # @param [Hash] opts the optional parameters
    # @return [DaviPlataCharge]
    def self.add_davi_plata_charge(body, opts = {})

      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling add_davi_plata_charge" if body.nil?


      # resource path
      path = "/charge/daviplata".sub('{format}', 'json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(body)


      auth_names = ['api_key']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = DaviPlataCharge.new() and obj.build_from_hash(response)
    end

    # Retrieve a DaviPlataCharge by ID
    # Get the details of an existing `DaviPlataCharge`. This method only requires an unique `DaviPlataCharge` identifier `id` that was returned upon `DaviPlataCharge` creation.
    # @param id Identification of `DaviPlataCharge` that needs to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [DaviPlataCharge]
    def self.get_davi_plata_charge_by_id(id, opts = {})

      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_davi_plata_charge_by_id" if id.nil?


      # resource path
      path = "/charge/daviplata/{id}".sub('{format}', 'json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil


      auth_names = ['api_key']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = DaviPlataCharge.new() and obj.build_from_hash(response)
    end
  end
end
