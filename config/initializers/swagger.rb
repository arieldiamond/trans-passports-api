GrapeSwaggerRails.options.app_name = 'Trans Passports'
GrapeSwaggerRails.options.url      = '/swagger_doc'
GrapeSwaggerRails.options.before_filter_proc = proc {
  GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
}
