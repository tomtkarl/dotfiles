"Align Variables (as in class declaration or method signature) at the name boundary 
"Supports:
"         int       foo;
"         int       foo = 15;
"         const int foo;
"         const int foo = 15;
"
"     foo(const tomsfxapi::Currency&       foo,
"         int                              foo,
"         const short                      bar,
"         const tomsfxapi::FxPricingSource baz)
"
"
vnoremap <Leader>tva :Tabularize /\S\+\(\s*=\s*\S\+\)\?[;,)]<Return>
vnoremap <Leader>twa :Tabularize /\S\+\(\s*=\s*\S\+\)\?<Return>

"Align Assignment operators
"Supports:
"   const char* Metrics::PNum::PRICE_UPDATE_RATE    = "priceUpdateRate";
"   const char* Metrics::Perf::NUM_MONITOR_REQUESTS = "numMonitorRequests";
"   const char* Metrics::Perf::MSG_RELEVANCE        = "messageRelevance";
vnoremap <Leader>taa :Tabularize /\(=\s*\S\+\)\?[;,]<Return>

"Align For loop heading variables
"Usage: Select from lhs of iterator variable name in declaration down to closing bracket
"Supports:
"       for (std::list<CurrencyIsoCode>::const_iterator isoIt = d_allowed.begin();
"                                                       isoIt != d_allowed.end();
"                                                       ++isoIt)
vnoremap <Leader>tfa :Tabularize /+*\S\++*\(\s*[!=]\+\s*\S\+\)\?[;,)]<Return>
