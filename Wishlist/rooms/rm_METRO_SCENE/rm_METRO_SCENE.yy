{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_METRO_SCENE",
  "creationCodeFile": "",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_5F792E0C_1_1_1_1_1","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_3CD9336B_1_1","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_13C93E58_1","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_62F0FFBC_1","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_21262173","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_5B137D6C","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_506A3B4C","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_1D15AC9D","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_53F74973","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_5CFC9228","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_729A943A","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
    {"name":"inst_40CA22E6","path":"rooms/rm_METRO_SCENE/rm_METRO_SCENE.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"system","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5F792E0C_1_1_1_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":{"name":"inst_5F792E0C_1_1_1_1_1","path":"rooms/rm_METRO/rm_METRO.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":379.0,"y":82.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3CD9336B_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":true,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":{"name":"inst_3CD9336B_1_1","path":"rooms/rm_METRO/rm_METRO.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_controller","path":"objects/obj_controller/obj_controller.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":24.0,"y":16.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1D15AC9D","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_commentor","path":"objects/obj_commentor/obj_commentor.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":333.0,"y":16.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"object_near","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"wall","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_13C93E58_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":{"name":"inst_13C93E58_1","path":"rooms/rm_METRO/rm_METRO.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":9.611111,"x":-18.0,"y":4.5,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_62F0FFBC_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":{"name":"inst_62F0FFBC_1","path":"rooms/rm_METRO/rm_METRO.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":9.777778,"x":600.0,"y":1.5,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"ss","depth":200,"effectEnabled":true,"effectType":"_filter_screenshake","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[
        {"name":"g_Magnitude","type":0,"value":"2",},
        {"name":"g_ShakeSpeed","type":0,"value":"0.2",},
        {"name":"g_NoiseTexture","type":2,"value":"_filter_screenshake_noise",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"shadow","depth":400,"effectEnabled":true,"effectType":"_filter_vignette","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_VignetteEdges","type":0,"value":"0.5",},
        {"name":"g_VignetteEdges","type":0,"value":"1.2",},
        {"name":"g_VignetteSharpness","type":0,"value":"2",},
        {"name":"g_VignetteTexture","type":2,"value":"_filter_vignette_texture",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"bg_near","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_train_inside_2","path":"sprites/spr_train_inside_2/spr_train_inside_2.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"player","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_506A3B4C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_player_metro","path":"objects/obj_player_metro/obj_player_metro.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":436.0,"y":121.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_53F74973","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_oldman","path":"objects/obj_oldman/obj_oldman.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":238.0,"y":120.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"NPC","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_21262173","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":true,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":{"name":"inst_21262173","path":"rooms/rm_METRO/rm_METRO.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_robot_hunter","path":"objects/obj_robot_hunter/obj_robot_hunter.yy",},"properties":[],"rotation":0.0,"scaleX":-1.0,"scaleY":1.0,"x":302.0,"y":94.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5B137D6C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":{"name":"inst_5B137D6C","path":"rooms/rm_METRO/rm_METRO.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_controller_metro","path":"objects/obj_controller_metro/obj_controller_metro.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":11.0,"y":5.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5CFC9228","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_metro_npc1","path":"objects/obj_metro_npc1/obj_metro_npc1.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":413.0,"y":113.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_729A943A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_metro_npc3","path":"objects/obj_metro_npc3/obj_metro_npc3.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":355.0,"y":107.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_40CA22E6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_metro_npc2","path":"objects/obj_metro_npc2/obj_metro_npc2.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":461.0,"y":112.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"object_far","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"bg_far","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_train_inside","path":"sprites/spr_train_inside/spr_train_inside.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":-12,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_1","depth":1000,"effectEnabled":true,"effectType":"_filter_linear_blur","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[
        {"name":"g_LinearBlurVector","type":0,"value":"128",},
        {"name":"g_LinearBlurVector","type":0,"value":"0",},
        {"name":"g_NoiseTexture","type":2,"value":"_filter_linear_blur_noise",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"bg_fond","animationFPS":30.0,"animationSpeedType":0,"colour":4284892999,"depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":-20.0,"htiled":true,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"spriteId":{"name":"Pixel_Art_Diffusion_0__2","path":"sprites/Pixel_Art_Diffusion_0__2/Pixel_Art_Diffusion_0__2.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "DEMO",
    "path": "folders/Rooms/DEMO.yy",
  },
  "parentRoom": {
    "name": "rm_METRO",
    "path": "rooms/rm_METRO/rm_METRO.yy",
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 180,
    "inheritRoomSettings": true,
    "persistent": false,
    "Width": 600,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":1080,"hspeed":-1,"hview":180,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":2160,"wview":360,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": true,
  },
  "volume": 1.0,
}