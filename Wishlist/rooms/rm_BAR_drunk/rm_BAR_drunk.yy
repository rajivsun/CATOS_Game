{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_BAR_drunk",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_3D4E7A75_5","path":"rooms/rm_BAR_drunk/rm_BAR_drunk.yy",},
    {"name":"inst_41A930D9_5","path":"rooms/rm_BAR_drunk/rm_BAR_drunk.yy",},
    {"name":"inst_5AA3CF45_2","path":"rooms/rm_BAR_drunk/rm_BAR_drunk.yy",},
    {"name":"inst_1B84A3D1_1","path":"rooms/rm_BAR_drunk/rm_BAR_drunk.yy",},
    {"name":"inst_622EB190_1","path":"rooms/rm_BAR_drunk/rm_BAR_drunk.yy",},
    {"name":"inst_6C1B9A20_1","path":"rooms/rm_BAR_drunk/rm_BAR_drunk.yy",},
    {"name":"inst_584B9BF1_1","path":"rooms/rm_BAR_drunk/rm_BAR_drunk.yy",},
    {"name":"inst_5F792E0C_5","path":"rooms/rm_BAR_drunk/rm_BAR_drunk.yy",},
    {"name":"inst_6C7A8212_1","path":"rooms/rm_BAR_drunk/rm_BAR_drunk.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"system","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1B84A3D1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_controller","path":"objects/obj_controller/obj_controller.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":598.0,"y":-32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5F792E0C_5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":73.0,"y":33.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"player","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5AA3CF45_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"properties":[],"rotation":0.0,"scaleX":-1.0,"scaleY":1.0,"x":258.0,"y":162.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances_2","depth":200,"effectEnabled":true,"effectType":"_filter_zoom_blur","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6C7A8212_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_door_bar_wc","path":"objects/obj_door_bar_wc/obj_door_bar_wc.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":891.0,"y":102.0,},
      ],"layers":[],"properties":[
        {"name":"g_ZoomBlurCenter","type":0,"value":"0.95",},
        {"name":"g_ZoomBlurCenter","type":0,"value":"0.625",},
        {"name":"g_ZoomBlurIntensity","type":0,"value":"0.6",},
        {"name":"g_ZoomBlurFocusRadius","type":0,"value":"337",},
        {"name":"g_ZoomBlurTexture","type":2,"value":"_filter_zoom_blur_noise",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"NPC","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_2","depth":400,"effectEnabled":true,"effectType":"_filter_underwater","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.01",},
        {"name":"g_Distort2Speed","type":0,"value":"0.025",},
        {"name":"g_Distort1Scale","type":0,"value":"20",},
        {"name":"g_Distort1Scale","type":0,"value":"2",},
        {"name":"g_Distort2Scale","type":0,"value":"100",},
        {"name":"g_Distort2Scale","type":0,"value":"10",},
        {"name":"g_Distort1Amount","type":0,"value":"3",},
        {"name":"g_Distort2Amount","type":0,"value":"6",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"1",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_GlintCol","type":1,"value":"#FF191919",},
        {"name":"g_TintCol","type":1,"value":"#FFDE16E5",},
        {"name":"g_AddCol","type":1,"value":"#FF331900",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_underwater_noise_sprite",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"ef_scan","depth":500,"effectEnabled":true,"effectType":"_filter_edgedetect","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Threshold","type":0,"value":"0",},
      ],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_1","depth":600,"effectEnabled":true,"effectType":"_filter_tintfilter","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_TintCol","type":1,"value":"#FFFFFFFF",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances_1","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"object","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_622EB190_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_arcade_machine","path":"objects/obj_arcade_machine/obj_arcade_machine.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_interactable","path":"objects/obj_interactable/obj_interactable.yy",},"propertyId":{"name":"interactable","path":"objects/obj_interactable/obj_interactable.yy",},"value":"False",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":625.0,"y":134.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6C1B9A20_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_dart","path":"objects/obj_dart/obj_dart.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_interactable","path":"objects/obj_interactable/obj_interactable.yy",},"propertyId":{"name":"interactable","path":"objects/obj_interactable/obj_interactable.yy",},"value":"False",},
          ],"rotation":0.0,"scaleX":0.6097561,"scaleY":0.6097561,"x":451.39026,"y":100.48782,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_584B9BF1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_piano","path":"objects/obj_piano/obj_piano.yy",},"properties":[],"rotation":0.0,"scaleX":0.727039,"scaleY":0.6857299,"x":355.352,"y":131.7135,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"wall","depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3D4E7A75_5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":22.805555,"x":953.0,"y":-60.249992,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_41A930D9_5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":22.166668,"x":-18.0,"y":-34.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"immobile","depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"bg_far","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_bar_background","path":"sprites/spr_bar_background/spr_bar_background.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":-40,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":1200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "DEMO",
    "path": "folders/Rooms/DEMO.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 200,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 953,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":1080,"hspeed":-1,"hview":200,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":2160,"wview":400,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}