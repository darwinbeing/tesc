#!/usr/bin/env python
import json
import urllib
import time
import requests

from forex_python.converter import CurrencyRates

# valid_indvals = ['1.00E-13','1.20E-13','1.50E-13','1.80E-13','2.20E-13','2.70E-13','3.30E-13','3.90E-13','4.70E-13','5.60E-13','6.80E-13','8.20E-13',\
#                  '1.00E-12','1.20E-12','1.50E-12','1.80E-12','2.20E-12','2.70E-12','3.30E-12','3.90E-12','4.70E-12','5.60E-12','6.80E-12','8.20E-12',\
#                  '1.00E-11','1.20E-11','1.50E-11','1.80E-11','2.20E-11','2.70E-11','3.30E-11','3.90E-11','4.70E-11','5.60E-11','6.80E-11','8.20E-11',\
#                  '1.00E-10','1.20E-10','1.50E-10','1.80E-10','2.20E-10','2.70E-10','3.30E-10','3.90E-10','4.70E-10','5.60E-10','6.80E-10','8.20E-10',\
#                  '1.00E-09','1.20E-09','1.50E-09','1.80E-09','2.20E-09','2.70E-09','3.30E-09','3.90E-09','4.70E-09','5.60E-09','6.80E-09','8.20E-09',\
#                  '1.00E-08','1.20E-08','1.50E-08','1.80E-08','2.20E-08','2.70E-08','3.30E-08','3.90E-08','4.70E-08','5.60E-08','6.80E-08','8.20E-08',\
#                  '1.00E-07','1.20E-07','1.50E-07','1.80E-07','2.20E-07','2.70E-07','3.30E-07','3.90E-07','4.70E-07','5.60E-07','6.80E-07','8.20E-07',\
#                  '1.00E-06','1.20E-06','1.50E-06','1.80E-06','2.20E-06','2.70E-06','3.30E-06','3.90E-06','4.70E-06','5.60E-06','6.80E-06','8.20E-06',\
#                  '1.00E-05','1.20E-05','1.50E-05','1.80E-05','2.20E-05','2.70E-05','3.30E-05','3.90E-05','4.70E-05','5.60E-05','6.80E-05','8.20E-05',\
#                  '1.00E-04','1.20E-04','1.50E-04','1.80E-04','2.20E-04','2.70E-04','3.30E-04','3.90E-04','4.70E-04','5.60E-04','6.80E-04','8.20E-04'
#                  ]

# m -3 u -6 n -9 p -12
# valid_indvals = ['1.00E-07','1.20E-10','4.70E-09','1.50E-08','6.80E-06','8.20E-06']
# valid_indvals = ['1.00E-07']
# valid_indvals = ['1.50E-11']
# valid_indvals = ['2.20E-06']
# valid_indvals = ['2.2E-05']
# valid_indvals = ['8.2E-09']
# valid_indvals = ['3.9E-09']
valid_indvals = ['2.7E-09']

valid_dielec = ['X5R','X6R','X7R','X8R', 'Y5R', 'Y6R', 'Y7R', 'Y8R','C0G/NP0']
# pref_brand = 'Yageo'
# pref_brand = 'KEMET'
pref_brand = 'Murata'
# pref_brand = 'Coilcraft'
# pref_brand = 'AVX'
# distributor = 'Digi-Key'
distributor = 'Mouser'
# distributor = 'element14 APAC'

# pref_brand = "Samsung"
# valid_packsize = ['0201','0402','0603','0805','1206','1210','1410','1808','1812','2010','2020','2220','2225','2512','2520','3640']
valid_packsize = ['0603']

# extra_inductors = ['CL21A475KLCLQNC','UMK316AB7475KL-T','GRM21BR60J476ME15K','GRM31CR60J107ME39K']
extra_inductors = ['LPS6235-223MRC']
# def exchange_rate(from_currency, to_currency):
#     """ *Database*: Lookup current currency exchange rate:
#         """

#     # Verify argument types:
#     # assert isinstance(from_currency, str)
#     # assert isinstance(to_currency, str)

#     # The documenation for this API can be found at:
#     #    https://api.fixer.io
#     # First construct the *exchange_url*:
#     # https://api.fixer.io/latest?base=USD&symbols=CNY%22
#     exchange_url = \
#                    "https://api.fixer.io/latest?base={0}&symbols={1}".format(
#                        from_currency, to_currency)
#     # print("exchange_url='{0}'".format(exchange_url))

#     # Now fetch the infromation from the server:
#     exchange_response = requests.get(exchange_url)
#     # Now extract the exchange rate and return it:
#     exchange_information = exchange_response.json()
#     # print("exchange_information=", exchange_information)
#     return exchange_information["rates"]

def exchange_rate(from_currency, to_currency):
    c = CurrencyRates()
    rate = c.get_rate(from_currency, to_currency)
    return rate

def get_inds(inductance):
    # this function returns a list of ceramic inductors of require inductance

    url = "http://octopart.com/api/v3/parts/search"

    # NOTE: Use your API key here (https://octopart.com/api/register)
    url += "?apikey=566cc7d2"

    args = [
        # ('filter[fields][brand.name][]', pref_brand),
        ('filter[fields][specs.inductance.value][]', inductance),
        # ('filter[fields][specs.voltage_rating_dc.value][]', '6.3'),
        # ('filter[fields][specs.inductance_tolerance.value][]', u'\u00b120%'.encode('utf-8')),
        # ('filter[fields][specs.inductance_tolerance.value][]', u'\u00b15%'.encode('utf-8')),
        # ('filter[fields][specs.pin_count.value][]', '2'),
        ('filter[fields][specs.case_package.value][]', '0402'),
        # ('filter[fields][specs.case_package.value][]', '1206'),
        ('filter[fields][offers.seller.name][]', distributor),
        # ('filter[fields][specs.packaging.value][]', 'Tape & Reel (TR)'),
        ('include[]','specs'),
        ('start', 0),
        ('limit', 100)
        ]

    print('Querying ' + str(inductance) + ' ...')

    url += '&' + urllib.urlencode(args)

    gotresponse = False

    while (gotresponse == False):
        try:
            data = urllib.urlopen(url).read()
            search_response = json.loads(data)
        except:
            'Error querying !!'
            gotresponse = True
        # if 'message' in search_response:
        #     # received a message, print it out
        #     print(search_response['message'])
        if 'results' not in search_response:
            # add a delay for rate limiting
            time.sleep(0.3)
        else:
            gotresponse = True


    # print(json.dumps(search_response, indent=4, sort_keys=True))
    print('Got ' + str(search_response['hits']) + ' hits!')

    outlist = []

    user_currency = search_response['user_currency']

    # get parameters
    for result in search_response['results']:
        part = result['item']

        # initialize all fields
        indval = '-1'
        pack_size = '-1'
        dielec_rate = '-1'
        voltage_rate = '1-'
        ctol = '-1'
        mpn = part['mpn']
        brand = part['brand']['name']
        price_cent = '-1'
        stockqty = '-1'

        if 'inductance' in part['specs']:
            indval = part['specs']['inductance']['display_value']

        if 'case_package' in part['specs']:
            pack_size = part['specs']['case_package']['value'][0]

        if 'dielectric_characteristic' in part['specs']:
            dielec_rate = part['specs']['dielectric_characteristic']['display_value']

        if 'voltage_rating_dc' in part['specs']:
            voltage_rate = part['specs']['voltage_rating_dc']['value']

        if 'inductance_tolerance' in part['specs']:
            ctol = part['specs']['inductance_tolerance']['value']

        if 'packaging' in part['specs']:
            pkg = part['specs']['packaging']['value']

        # Check for non-active lifecycle status.
        # if 'lifecycle_status' in part['specs']:
        #     # print(part['specs']['lifecycle_status']['display_value'])
        #     # print(part['specs']['lifecycle_status']['value'])
        #     if part['specs']['lifecycle_status']['display_value'] != 'Active':
        #         print('WARNING: Lifecycle Status is ' + part['specs']['lifecycle_status']['display_value'])

        for offer in part['offers']:
            # print(offer['seller']['name'])
            if offer['seller']['name'] == distributor:
                sku = offer['sku']
                # if brand == 'Coilcraft':
                #     print(brand)
                #     print(sku)
                stockqty = str(offer['in_stock_quantity'])
                # if pkg[0] == 'Tape & Reel (TR)':
                if True:
                    # print(offer['prices'])

                    # This needs to be looked up:
                    rate = 1.0
                    if user_currency in offer['prices']:
                        rate = 1.0
                        currency = user_currency
                    elif 'USD' in offer['prices']:
                        rate = exchange_rate("USD", user_currency)
                        # rate = dollar_to_cny_exchange_rate[user_currency]
                        currency = "USD"
                    elif 'EUR' in offer['prices']:
                        rate = exchange_rate("EUR", user_currency)
                        # rate =  euro_to_cny_exchange_rate[user_currency]
                        currency = "EUR"
                    elif 'GBP' in offer['prices']:
                        pound_to_cny_exchange_rate = exchange_rate("GBP", user_currency)
                        rate =  pound_to_cny_exchange_rate[user_currency]
                        currency = "GBP"
                    elif 'SGD' in offer['prices']:
                        rate = exchange_rate("SGD", user_currency)
                        # rate =  sgd_to_cny_exchange_rate[user_currency]
                        currency = "SGD"
                    else:
                        # print("Unrecognized currency")
                        continue

                    if offer['prices'][currency][0][0] > 10:
                        continue

                    # print(offer['prices'])
                    # print(rate)

                    for usdprice in offer['prices'][currency]:
                        # print(usdprice[0])
                        if (usdprice[0] >= 1000):
                            # print(offer['prices'])
                            # print(usdprice[1])
                            # print(rate)
                            price_cent = "{:.2f}".format((float(usdprice[1]) * rate))
                            break

                    print("{} {} {} {} {}".format(sku, mpn, brand.encode('utf-8'), price_cent, stockqty))
                    if int(stockqty) > 0:
                        # if pack_size in valid_packsize:
                        #     if dielec_rate in valid_dielec:
                        outline = [indval, pack_size, dielec_rate, voltage_rate, ctol, sku, mpn, brand, price_cent,stockqty]
                        outlist.append(outline)
                        # print(json.dumps(part, indent=4, sort_keys=True))

    outlist.sort(key = lambda x: int(x[9]))
    return outlist

def get_ind_mpn(_mpn):
    # this function returns a list of ceramic inductors of require inductance

    url = "http://octopart.com/api/v3/parts/search"

    # NOTE: Use your API key here (https://octopart.com/api/register)
    url += "?apikey=566cc7d2"

    args = [
        ('filter[fields][mpn][]', _mpn),
        ('filter[fields][offers.seller.name][]', distributor),
        # ('filter[fields][specs.packaging.value][]', 'Tape & Reel (TR)'),
        ('include[]','specs'),
        ('start', 0),
        ('limit', 100)
        ]

    print('Querying ' + str(_mpn) + ' ...')

    url += '&' + urllib.urlencode(args)

    gotresponse = False

    while (gotresponse == False):
        try:
            data = urllib.urlopen(url).read()
            search_response = json.loads(data)
        except:
            'Error querying !!'
            gotresponse = True
        # if 'message' in search_response:
        #     # received a message, print it out
        #     print(search_response['message'])
        if 'results' not in search_response:
            # add a delay for rate limiting
            time.sleep(0.3)
        else:
            gotresponse = True

    # print(json.dumps(search_response, indent=4, sort_keys=True))
    print('Got ' + str(search_response['hits']) + ' hits!')

    outlist = []

    # get parameters
    for result in search_response['results']:
        part = result['item']

        # initialize all fields
        indval = '-1'
        pack_size = '-1'
        dielec_rate = '-1'
        voltage_rate = '1-'
        ctol = '-1'
        mpn = part['mpn']
        brand = part['brand']['name']
        price_cent = '-1'
        stockqty = '-1'

        if 'inductance' in part['specs']:
            indval = part['specs']['inductance']['display_value']

        if 'case_package' in part['specs']:
            pack_size = part['specs']['case_package']['value'][0]

        if 'dielectric_characteristic' in part['specs']:
            dielec_rate = part['specs']['dielectric_characteristic']['display_value']

        if 'voltage_rating_dc' in part['specs']:
            voltage_rate = part['specs']['voltage_rating_dc']['value']

        if 'inductance_tolerance' in part['specs']:
            ctol = part['specs']['inductance_tolerance']['value']


        for offer in part['offers']:
            # print(offer['seller']['name'])
            if offer['seller']['name'] == distributor:
                sku = offer['sku']
                # print(brand)
                # print(sku)
                stockqty = str(offer['in_stock_quantity'])
            if offer['packaging'] == 'Tape & Reel':
                if 'USD' in offer['prices']:
                    for usdprice in offer['prices']['USD']:
                        # print(usdprice)
                        if (usdprice[0] > 2000):
                            price_cent = str(float(usdprice[1]) * 100)

        if True:
            # if pack_size in valid_packsize:
            #     if dielec_rate in valid_dielec:
            outline = [indval, pack_size, dielec_rate, voltage_rate, ctol, sku, mpn, brand, price_cent,stockqty]
            outlist.append(outline)
        # print(json.dumps(part, indent=4, sort_keys=True))

    return outlist


# create an output file
filename = 'inductors.csv'
try:
    f = open(filename,'w')
except:
    print('Cannot open file ' + filename + ' for wrting !!!')

for indval in valid_indvals:
    olist = get_inds(indval)
    for ind in olist:
        for param in ind:
            if type(param) is list:
                f.write(param[0].encode('utf-8') + b',')
            else:
                f.write(param.encode('utf-8') + b',')
        f.write('\n')

# append extra special part numbers
# for extra_ind in extra_inductors:
#     olist = get_ind_mpn(extra_ind)
#     for ind in olist:
#         for param in ind:
#             if type(param) is list:
#                 f.write(param[0].encode('utf-8') + b',')
#             else:
#                 f.write(param.encode('utf-8') + b',')
#         f.write('\n')

# f.close()
