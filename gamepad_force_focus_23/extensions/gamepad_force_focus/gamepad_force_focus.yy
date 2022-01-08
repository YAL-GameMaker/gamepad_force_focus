{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": 113497714299118,
  "extensionVersion": "1.0.0",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2019-12-12T01:34:29",
  "license": "Proprietary",
  "description": "",
  "helpfile": "",
  "iosProps": true,
  "tvosProps": false,
  "androidProps": true,
  "installdir": "",
  "files": [
    {"filename":"gamepad_force_focus.dll","origname":"extensions\\gamepad_force_focus.dll","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"externalName":"gamepad_force_focus_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"gamepad_force_focus_raw","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        
      ],"ProxyFiles":[
        {"name":"gamepad_force_focus_x64.dll","tags":[],"resourceVersion":"1.0","resourceType":"GMProxyFile","TargetMask":6,},
      ],"copyToTargets":9223372036854775807,"order":[
        {"name":"gamepad_force_focus_raw","path":"extensions/gamepad_force_focus/gamepad_force_focus.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"gamepad_force_focus.gml","origname":"extensions\\gml.gml","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"gamepad_force_focus_prepare_buffer","kind":2,"help":"gamepad_force_focus_prepare_buffer(size:int)->buffer~","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"gamepad_force_focus_prepare_buffer","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        
      ],"ProxyFiles":[],"copyToTargets":9223372036854775807,"order":[
        {"name":"gamepad_force_focus_prepare_buffer","path":"extensions/gamepad_force_focus/gamepad_force_focus.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"autogen.gml","origname":"extensions\\autogen.gml","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"gamepad_force_focus","kind":2,"help":"gamepad_force_focus(enable:bool = true)->bool","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"gamepad_force_focus","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        
      ],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"gamepad_force_focus","path":"extensions/gamepad_force_focus/gamepad_force_focus.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": "",
  "tvosdelegatename": "",
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "androidcodeinjection": "",
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 113497714299118,
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "gamepad_force_focus",
  "tags": [],
  "resourceType": "GMExtension",
}