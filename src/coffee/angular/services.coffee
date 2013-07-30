# Services

angular
  .module('influences.services', [])
  .value('version', '0.1')
  .factory 'Api_get', ['$http', ($http)->
    congress: (path, callback)->
      $http
        url: "http://congress.api.sunlightfoundation.com/#{path}&apikey=83c0368c509f468e992218f41e6529d7"
        method: "GET"
      .success (data, status, headers, config)->
        callback data.results
      .error (data, status, headers, config)->
        console.log("Error pulling #{path} from Sunlight Congress v3 API!")
    influence: (path, callback)->
      $http
        url: "http://transparencydata.com/api/1.0/#{path}&apikey=83c0368c509f468e992218f41e6529d7"
        method: "GET"
      .success (data, status, headers, config)->
        callback data.results
      .error (data, status, headers, config)->
        console.log("Error pulling #{path} from TransparencyData API!")
  ]
