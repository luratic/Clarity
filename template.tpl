___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Microsoft Clarity",
  "categories": [
    "ANALYTICS",
    "HEAT_MAP",
    "SESSION_RECORDING"
  ],
  "description": "This is an unofficial Google Tag Manager template for Microsoft Clarity and has the following improvements:\n● Custom Events\n● Custom Tags\n● Custom Identifiers\n● Cookie Consent\n● Upgrade Sessions",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "displayName": "luratic",
    "id": "github.com_luratic",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAARVBMVEXwUSV/u0IyoNr9uBP////vRgz4u7HK4bd4uDWz1u7+4K4gnNj9tQD4uK3I4LSw1O7vOgBytSX84d3n8d/e7ff/8dwAl9fP6I05AAABIUlEQVR4nO3PRw7CQBAAwQGcjQPx/0/lynLkMNJa1R9oVURSbdd81w+npLKAhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISHFLZJ7UshXG9DUtEltdwL4WPtk4rm6BHWH2H9EdYfYf0R1h9h/cWY1PYsvq8pq5iTem+FcLpmFeek5vFHeEmKkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJDw/z45r46NoCOtpQAAAABJRU5ErkJggg\u003d\u003d"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "simpleValueType": true,
    "name": "id",
    "type": "TEXT",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "displayName": "Clarity Project Id:",
    "help": "You can find it in the project Url from the browser. Example: https://clarity.microsoft.com/projects/view/\u003cb\u003e\"projectId\"\u003c/b\u003e/",
    "valueHint": "44uxxx69x5",
    "alwaysInSummary": true
  },
  {
    "type": "GROUP",
    "name": "advanced_options",
    "displayName": "Advanced Options",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "add_custom_events",
        "checkboxText": "Add Custom Events",
        "simpleValueType": true,
        "help": "Track user actions manually. Each event is logged individually and can be filtered.\u003c/br\u003e\n\u003ca href\u003d\" Each event is logged individually and can be filtered.\"\u003eMore info\u003c/a\u003e",
        "subParams": [
          {
            "type": "TEXT",
            "name": "event_name",
            "displayName": "Event Name",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "add_custom_events",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "alwaysInSummary": true,
            "help": "",
            "valueHint": "login",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ],
        "alwaysInSummary": false
      },
      {
        "type": "CHECKBOX",
        "name": "add_custom_tags",
        "checkboxText": "Add Custom Tags",
        "simpleValueType": true,
        "help": "You may want to track things that are specific to your site or user experience. With custom tags, you can apply arbitrary tags to your Clarity session. It will appear in the Filters options.\n\u003c/br\u003e\n\u003ca href\u003d\"https://docs.microsoft.com/en-us/clarity/clarity-api#add-custom-tags\"\u003eMore info\u003c/a\u003e",
        "subParams": [
          {
            "type": "SIMPLE_TABLE",
            "name": "custom_tags",
            "displayName": "Custom Tags",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "key",
                "name": "key",
                "type": "TEXT",
                "isUnique": true,
                "valueHint": "page",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "value",
                "name": "value",
                "type": "TEXT",
                "valueHint": "checkout",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              }
            ],
            "enablingConditions": [
              {
                "paramName": "add_custom_tags",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "valueValidators": []
          }
        ],
        "alwaysInSummary": false
      },
      {
        "type": "CHECKBOX",
        "name": "add_custom_identifiers",
        "checkboxText": "Add Custom Identifiers",
        "simpleValueType": true,
        "help": "Clarity automatically generates various types of identifiers needed for its normal functioning. However, you can assign other names for user id, session id, and page id if you want to have custom features on your site that requires it.\n\u003c/br\u003e\n\u003ca href\u003d\"https://docs.microsoft.com/en-us/clarity/clarity-api#prioritize-specific-sessions-for-recording\"\u003eMore info\u003c/a\u003e",
        "subParams": [
          {
            "type": "TEXT",
            "name": "user_id",
            "displayName": "User ID",
            "simpleValueType": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "add_custom_identifiers",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "valueHint": "monakane@contoso.com"
          },
          {
            "type": "TEXT",
            "name": "session_id",
            "displayName": "Session ID",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "add_custom_identifiers",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "valueHint": "custom-session-123"
          },
          {
            "type": "TEXT",
            "name": "page_id",
            "displayName": "Page ID",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "add_custom_identifiers",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "valueHint": "custom-page-123"
          },
          {
            "type": "TEXT",
            "name": "friendly_name",
            "displayName": "Friendly Name",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "add_custom_identifiers",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "valueHint": "Mona",
            "help": "Note: If both Friendly Name and User ID are set, Friendly Name will replace the User ID."
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "privacy",
    "displayName": "Privacy",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "consent",
        "checkboxText": "Specify if cookies should be set",
        "simpleValueType": true,
        "help": "If your project is configured to require the consent of cookies you have to check this option.\nIf you use Google Consent Mode to manage cookies, it will work automatically once this option is checked. \n\u003ca href\u003d\"https://docs.microsoft.com/en-us/clarity/cookie-consent\"\u003eMore info\u003c/a\u003e",
        "subParams": [
          {
            "type": "SELECT",
            "name": "menu_cookies",
            "displayName": "",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "consent_mode",
                "displayValue": "Consent Mode"
              },
              {
                "value": "has_custom_cookie_variable",
                "displayValue": "Custom Consent Values"
              }
            ],
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "consent",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "subParams": [
              {
                "type": "SELECT",
                "name": "analytics_storage",
                "displayName": "Analytics (analytics_storage)",
                "macrosInSelect": true,
                "selectItems": [
                  {
                    "value": "granted",
                    "displayValue": "granted"
                  },
                  {
                    "value": "denied",
                    "displayValue": "denied"
                  }
                ],
                "simpleValueType": true,
                "enablingConditions": [
                  {
                    "paramName": "menu_cookies",
                    "paramValue": "has_custom_cookie_variable",
                    "type": "EQUALS"
                  }
                ],
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              },
              {
                "type": "SELECT",
                "name": "ad_storage",
                "displayName": "Advertising (ad_storage)",
                "macrosInSelect": true,
                "selectItems": [
                  {
                    "value": "granted",
                    "displayValue": "granted"
                  },
                  {
                    "value": "denied",
                    "displayValue": "denied"
                  }
                ],
                "simpleValueType": true,
                "enablingConditions": [
                  {
                    "paramName": "menu_cookies",
                    "paramValue": "has_custom_cookie_variable",
                    "type": "EQUALS"
                  }
                ],
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              }
            ],
            "help": ""
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "options",
    "displayName": "More Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "upgrade_sessions",
        "checkboxText": "Prioritize specific sessions for recording",
        "simpleValueType": true,
        "help": "Clarity records up to \u003cb\u003e100,000 sessions per project per day \u003c/b\u003e. If your project’s total volume of sessions exceeds the maximum daily limit, some sessions will be throttled for playback. \u003c/br\u003e By default, Clarity will use rules to capture the most interesting sessions for its recordings.\n\u003c/br\u003e\n\u003ca href\u003d\"https://docs.microsoft.com/en-us/clarity/clarity-api#prioritize-specific-sessions-for-recording\"\u003eMore info\u003c/a\u003e",
        "subParams": [
          {
            "type": "TEXT",
            "name": "upgrade_reason",
            "displayName": "Upgrade reason",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "upgrade_sessions",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "valueHint": "button click"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "info",
    "displayName": "Information",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "LABEL",
        "name": "community",
        "displayName": "\u003cstrong\u003e\u003ca href\u003d\"https://datola.es/?utm_source\u003dgtm\u0026utm_medium\u003dtemplates\u0026utm_campaign\u003dclarity\"\u003eDatola | Community 📊\u003c/a\u003e\u003c/strong\u003e"
      },
      {
        "type": "LABEL",
        "name": "clarity",
        "displayName": "\u003ca href\u003d\"https://docs.microsoft.com/en-us/clarity/\"\u003eMicrosoft Clarity\u003c/a\u003e"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const createArgumentsQueue = require('createArgumentsQueue');
const encodeUriComponent = require('encodeUriComponent');
const isConsentGranted = require('isConsentGranted');
const addConsentListener = require('addConsentListener');

const log = require('logToConsole');
log("data", data);

const addCustomEvents = data.add_custom_events;
const addCustomTags = data.add_custom_tags;
const addCustomIdentifiers = data.add_custom_identifiers;
const upgradeSessions = data.upgrade_sessions;
const consent = data.consent; 
const id = encodeUriComponent(data.id);
const trackingUrl = 'https://www.clarity.ms/tag/' + id ;

const clarity = createArgumentsQueue('clarity', 'clarity.q');


if (addCustomEvents) {
  const eventName = data.event_name;
  // log("event", eventName);
  clarity("event", eventName);
}

if (addCustomIdentifiers) {
  const userId = data.user_id;
  const sessionId = data.session_id;
  const pageId = data.page_id;
  const friendlyName = data.friendly_name;    
  //log("identify", userId, sessionId, pageId, friendlyName);
  clarity("identify", userId, sessionId, pageId, friendlyName);
}

if(addCustomTags) {
  var customTags = data.custom_tags || [];
  for (var i=0; i < customTags.length; i++) {
    //log("set", customTags[i].key, customTags[i].value);
    clarity('set', customTags[i].key, customTags[i].value);
  }
}

if(upgradeSessions) {
  const upgradeReason = data.upgrade_reason;
  clarity('upgrade', upgradeReason);
}

if (consent) {
  const hasCustomConsent = data.has_custom_consent;
  const optionConsent = data.menu_cookies;
  if(optionConsent === 'has_custom_cookie_variable') {
    log("consentv2_manual","publi:",data.ad_storage,"analitica",data.analytics_storage);
    clarity('consentv2', { 
      ad_Storage: data.ad_storage, 
      analytics_Storage: data.analytics_storage 
    });
  }
  else {
    // Usar arrow function
    const updateClarityConsent = () => {
      log("consentv2_auto","publi:",isConsentGranted('ad_storage'),"analitica",isConsentGranted('analytics_storage'));

      clarity('consentv2', {
        ad_Storage: isConsentGranted('ad_storage') ? 'granted' : 'denied',
        analytics_Storage: isConsentGranted('analytics_storage') ? 'granted' : 'denied'
      });
    };

    // Llamada inicial
    updateClarityConsent();

    // Listeners para cambios
    addConsentListener('analytics_storage', () => updateClarityConsent());
    addConsentListener('ad_storage', () => updateClarityConsent());
  }
}

injectScript(trackingUrl, data.gtmOnSuccess, data.gtmOnFailure, 'clarity');


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://www.clarity.ms/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "clarity"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "clarity.q"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "gtag"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: gtmOnSuccess is invoked on injectScript success
  code: |-
    // test that gtmOnSuccess() is called when injectScript succeeds
    mock('injectScript', (url, onSuccess, onFailure) => {
      onSuccess();
    });

    // Call runCode to run the template's code.
    runCode();

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: gtmOnFailure is invoked when injectScript fails
  code: |-
    // test gtmOnFailure() is called when injectScript fails
    mock('injectScript', (url, onSuccess, onFailure) => {
      onFailure();
    });

    // Call runCode to run the template's code.
    runCode();

    // Verify onFailure was called
    assertApi('gtmOnFailure').wasCalled();


___NOTES___

Developed with ❤ by: Alfonso, Txema and Brais.
Web: www.luratic.com
Web: www.datola.es
RRSS: 
https://www.linkedin.com/in/braiscalvo/ | https://twitter.com/braiscv
https://www.linkedin.com/in/alfonsorc/
https://www.linkedin.com/in/txemasm/


