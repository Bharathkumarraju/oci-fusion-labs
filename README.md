# oci-fusion-labs
oci-fusion-labs

## brew install oci-cli


### oci session authenticate

```
bharathkumardasaraju@terraorm$ oci session authenticate
/opt/homebrew/Cellar/oci-cli/3.69.0/libexec/lib/python3.14/site-packages/oci_cli/cli_util.py:2081: SyntaxWarning: 'return' in a 'finally' block
  return final_response
/opt/homebrew/Cellar/oci-cli/3.69.0/libexec/lib/python3.14/site-packages/oci_cli/cli_util.py:2265: SyntaxWarning: 'return' in a 'finally' block
  return final_response
Enter a region by index or name(e.g.
1: af-johannesburg-1, 2: ap-batam-1, 3: ap-chiyoda-1, 4: ap-chuncheon-1, 5: ap-chuncheon-2,
6: ap-dcc-canberra-1, 7: ap-dcc-gazipur-1, 8: ap-delhi-1, 9: ap-hyderabad-1, 10: ap-ibaraki-1,
11: ap-melbourne-1, 12: ap-mumbai-1, 13: ap-osaka-1, 14: ap-seoul-1, 15: ap-seoul-2,
16: ap-singapore-1, 17: ap-singapore-2, 18: ap-suwon-1, 19: ap-sydney-1, 20: ap-tokyo-1,
21: ca-montreal-1, 22: ca-toronto-1, 23: eu-amsterdam-1, 24: eu-budapest-1, 25: eu-crissier-1,
26: eu-dcc-dublin-1, 27: eu-dcc-dublin-2, 28: eu-dcc-milan-1, 29: eu-dcc-milan-2, 30: eu-dcc-rating-1,
31: eu-dcc-rating-2, 32: eu-dcc-zurich-1, 33: eu-frankfurt-1, 34: eu-frankfurt-2, 35: eu-jovanovac-1,
36: eu-madrid-1, 37: eu-madrid-2, 38: eu-madrid-3, 39: eu-marseille-1, 40: eu-milan-1,
41: eu-paris-1, 42: eu-stockholm-1, 43: eu-zurich-1, 44: il-jerusalem-1, 45: me-abudhabi-1,
46: me-abudhabi-2, 47: me-abudhabi-3, 48: me-abudhabi-4, 49: me-alain-1, 50: me-dcc-doha-1,
51: me-dcc-muscat-1, 52: me-dubai-1, 53: me-ibri-1, 54: me-jeddah-1, 55: me-riyadh-1,
56: mx-monterrey-1, 57: mx-queretaro-1, 58: sa-bogota-1, 59: sa-santiago-1, 60: sa-saopaulo-1,
61: sa-valparaiso-1, 62: sa-vinhedo-1, 63: uk-cardiff-1, 64: uk-gov-cardiff-1, 65: uk-gov-london-1,
66: uk-london-1, 67: us-ashburn-1, 68: us-ashburn-2, 69: us-chicago-1, 70: us-gov-ashburn-1,
71: us-gov-chicago-1, 72: us-gov-phoenix-1, 73: us-langley-1, 74: us-luke-1, 75: us-newark-1,
76: us-phoenix-1, 77: us-saltlake-2, 78: us-sanjose-1, 79: us-somerset-1, 80: us-thames-1): 16
    Please switch to newly opened browser window to log in!
    You can also open the following URL in a web browser window to continue:
https://login.ap-singapore-1.oraclecloud.com/v1/oauth2/authorize?action=login&client_id=iaas_console&response_type=token+id_token&nonce=193553f7-fe5c-44fa-9baf-c571b8346a77&scope=openid&public_key=eyJrdHkiOiAiUlNBIiwgIm4iOiAidi1qc3BlZ1NLZ1VLRVVTMXZLYUhDSVMtWXRHa3ZzODl0aTdya1hRaElqTEVXcE9pZ3ZSMjJweHlSS2hHWW5UUFFOSG5JS2FHQWZobFg5QkRsUkVNT2pHamc4bW5mdkc4djdtNVRSY3VUQzljM3NvcS14TldRTDdTWG00ZTNBNm9SMHZubUVaLThLZ2FKMmE0eVBGY3l6VldSeDJoaWVKOEdOTlNPcUVGckFZcTFuS1oyUVlDb1h2SUxFTUI1bU5fTTl2aEJfeWxWZGh1RHNrZHBNSm1zTlI5eFJIN2o5WFBaZzByQWo4ZFpHT3RyeWFhMVM0WERqMzZUYzZwaWdfdlROTG13amc2Y0JBTDJ5RXRJdm5ubV8xd0tFMGxtTkVKUktaRHkyNnlxSzVXTTI3X0dERnJhYjJGVnZrSy0wZ2cxdnpzb0N4MEkyR3c0Tl9ob2VzaTFRIiwgImUiOiAiQVFBQiIsICJraWQiOiAiSWdub3JlZCJ9&redirect_uri=http%3A%2F%2Flocalhost%3A8181
    Completed browser authentication process!
Config written to: /Users/bharathkumardasaraju/.oci/config

    Try out your newly created session credentials with the following example command:

    oci iam region list --config-file /Users/bharathkumardasaraju/.oci/config --profile DEFAULT --auth security_token

bharathkumardasaraju@terraorm$
```


### oracle region list
```
bharathkumardasaraju@terraorm$  oci iam region list --config-file /Users/bharathkumardasaraju/.oci/config --profile DEFAULT --auth security_token
{
  "data": [
    {
      "key": "AMS",
      "name": "eu-amsterdam-1"
    },
    {
      "key": "ARN",
      "name": "eu-stockholm-1"
    },
    {
      "key": "AUH",
      "name": "me-abudhabi-1"
    },
    {
      "key": "BOG",
      "name": "sa-bogota-1"
    },
    {
      "key": "BOM",
      "name": "ap-mumbai-1"
    },
    {
      "key": "CDG",
      "name": "eu-paris-1"
    },
    {
      "key": "CWL",
      "name": "uk-cardiff-1"
    },
    {
      "key": "DXB",
      "name": "me-dubai-1"
    },
    {
      "key": "FRA",
      "name": "eu-frankfurt-1"
    },
    {
      "key": "GRU",
      "name": "sa-saopaulo-1"
    },
    {
      "key": "HSG",
      "name": "ap-batam-1"
    },
    {
      "key": "HYD",
      "name": "ap-hyderabad-1"
    },
    {
      "key": "IAD",
      "name": "us-ashburn-1"
    },
    {
      "key": "ICN",
      "name": "ap-seoul-1"
    },
    {
      "key": "JED",
      "name": "me-jeddah-1"
    },
    {
      "key": "JNB",
      "name": "af-johannesburg-1"
    },
    {
      "key": "KIX",
      "name": "ap-osaka-1"
    },
    {
      "key": "LHR",
      "name": "uk-london-1"
    },
    {
      "key": "LIN",
      "name": "eu-milan-1"
    },
    {
      "key": "MAD",
      "name": "eu-madrid-1"
    },
    {
      "key": "MEL",
      "name": "ap-melbourne-1"
    },
    {
      "key": "MRS",
      "name": "eu-marseille-1"
    },
    {
      "key": "MTY",
      "name": "mx-monterrey-1"
    },
    {
      "key": "MTZ",
      "name": "il-jerusalem-1"
    },
    {
      "key": "NRT",
      "name": "ap-tokyo-1"
    },
    {
      "key": "ORD",
      "name": "us-chicago-1"
    },
    {
      "key": "ORF",
      "name": "eu-madrid-3"
    },
    {
      "key": "PHX",
      "name": "us-phoenix-1"
    },
    {
      "key": "QRO",
      "name": "mx-queretaro-1"
    },
    {
      "key": "RUH",
      "name": "me-riyadh-1"
    },
    {
      "key": "SCL",
      "name": "sa-santiago-1"
    },
    {
      "key": "SIN",
      "name": "ap-singapore-1"
    },
    {
      "key": "SJC",
      "name": "us-sanjose-1"
    },
    {
      "key": "SYD",
      "name": "ap-sydney-1"
    },
    {
      "key": "VAP",
      "name": "sa-valparaiso-1"
    },
    {
      "key": "VCP",
      "name": "sa-vinhedo-1"
    },
    {
      "key": "XSP",
      "name": "ap-singapore-2"
    },
    {
      "key": "YNY",
      "name": "ap-chuncheon-1"
    },
    {
      "key": "YUL",
      "name": "ca-montreal-1"
    },
    {
      "key": "YYZ",
      "name": "ca-toronto-1"
    },
    {
      "key": "ZRH",
      "name": "eu-zurich-1"
    }
  ]
}
bharathkumardasaraju@terraorm$ 
```


### oci refrsh token
```
bharathkumardasaraju@terraorm$ oci session refresh --profile oci-terraform
Attempting to refresh token from https://auth.ap-singapore-1.oraclecloud.com/v1/authentication/refresh
Successfully refreshed token
bharathkumardasaraju@terraorm$ 
```
