___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Microsoft Clarity",
  "categories": [
    "ANALYTICS", "HEAT_MAP", "SESSION_RECORDING"
  ],
  "description": "This is an unofficial Google Tag Manager template for Microsoft Clarity.\nClariy, a behavioral analysis tool that helps you understand user experience, to make your website work better..",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "displayName": "Custom template created by Luratic",
    "id": "brand_dummy",
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
    "displayName": "Account id:",
    "help": "Your Clarifity id.",
    "valueHint": "44uxxx69x5"
  },
  {
    "type": "LABEL",
    "name": "info",
    "displayName": "\u003ca href\u003d\"https://www.luratic.com/posts/templates/tags/clarity/\"\u003eDocumentation\u003c/a\u003e"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const createArgumentsQueue = require('createArgumentsQueue');
//const log = require('logToConsole');
//log("data", data);

const id = data.id;
const trackingUrl = 'https://www.clarity.ms/tag/' + id ;

createArgumentsQueue('clarity', 'clarity.q');
injectScript(trackingUrl, data.gtmOnSuccess, data.gtmOnFailure);


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
Linkedin: 
https://www.linkedin.com/in/braiscalvo/
https://www.linkedin.com/in/alfonsorc/
https://www.linkedin.com/in/txema-s%C3%A1nchez-a48482ba/


