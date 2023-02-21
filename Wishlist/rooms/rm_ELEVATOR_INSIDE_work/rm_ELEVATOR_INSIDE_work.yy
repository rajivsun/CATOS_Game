{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_ELEVATOR_INSIDE_work",
  "creationCodeFile": "",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": true,
  "instanceCreationOrder": [
    {"name":"inst_12606588","path":"rooms/rm_ELEVATOR_INSIDE_work/rm_ELEVATOR_INSIDE_work.yy",},
    {"name":"inst_50F745D4","path":"rooms/rm_ELEVATOR_INSIDE_work/rm_ELEVATOR_INSIDE_work.yy",},
    {"name":"inst_B823881","path":"rooms/rm_ELEVATOR_INSIDE_work/rm_ELEVATOR_INSIDE_work.yy",},
    {"name":"inst_75405D7D","path":"rooms/rm_ELEVATOR_INSIDE_work/rm_ELEVATOR_INSIDE_work.yy",},
    {"name":"inst_51F4DF88","path":"rooms/rm_ELEVATOR_INSIDE_work/rm_ELEVATOR_INSIDE_work.yy",},
    {"name":"inst_3A6AD8C1","path":"rooms/rm_ELEVATOR_INSIDE_work/rm_ELEVATOR_INSIDE_work.yy",},
    {"name":"inst_2FC4AFD0","path":"rooms/rm_ELEVATOR_INSIDE_work/rm_ELEVATOR_INSIDE_work.yy",},
    {"name":"inst_675EC503","path":"rooms/rm_ELEVATOR_INSIDE_work/rm_ELEVATOR_INSIDE_work.yy",},
    {"name":"inst_2FE5F446","path":"rooms/rm_ELEVATOR_INSIDE_work/rm_ELEVATOR_INSIDE_work.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"moving_object","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_12606588","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_12606588","path":"rooms/rm_ELEVATOR_INSIDE/rm_ELEVATOR_INSIDE.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_moving_object","path":"objects/obj_moving_object/obj_moving_object.yy",},"properties":[],"rotation":0.0,"scaleX":1.703125,"scaleY":1.0,"x":175.5,"y":23.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_50F745D4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_50F745D4","path":"rooms/rm_ELEVATOR_INSIDE/rm_ELEVATOR_INSIDE.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_commentor","path":"objects/obj_commentor/obj_commentor.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":192.0,"y":34.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"wall","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_B823881","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_B823881","path":"rooms/rm_ELEVATOR_INSIDE/rm_ELEVATOR_INSIDE.yy",},"inheritItemSettings":true,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":5.5,"x":123.0,"y":42.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_75405D7D","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_75405D7D","path":"rooms/rm_ELEVATOR_INSIDE/rm_ELEVATOR_INSIDE.yy",},"inheritItemSettings":true,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":5.1666665,"x":208.0,"y":48.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"system","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_51F4DF88","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_51F4DF88","path":"rooms/rm_ELEVATOR_INSIDE/rm_ELEVATOR_INSIDE.yy",},"inheritItemSettings":true,"isDnd":false,"objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-23.0,"y":55.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3A6AD8C1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":true,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_3A6AD8C1","path":"rooms/rm_ELEVATOR_INSIDE/rm_ELEVATOR_INSIDE.yy",},"inheritItemSettings":true,"isDnd":false,"objectId":{"name":"obj_controller","path":"objects/obj_controller/obj_controller.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-26.0,"y":12.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"ss","depth":300,"effectEnabled":true,"effectType":"_filter_screenshake","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[
        {"name":"g_Magnitude","type":0,"value":"1",},
        {"name":"g_ShakeSpeed","type":0,"value":"0.2",},
        {"name":"g_NoiseTexture","type":2,"value":"_filter_screenshake_noise",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"elevator","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2FC4AFD0","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":1,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_2FC4AFD0","path":"rooms/rm_ELEVATOR_INSIDE/rm_ELEVATOR_INSIDE.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_elevator_inside","path":"objects/obj_elevator_inside/obj_elevator_inside.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":174.0,"y":92.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"player","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_675EC503","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_675EC503","path":"rooms/rm_ELEVATOR_INSIDE/rm_ELEVATOR_INSIDE.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":191.0,"y":135.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"elevator_back","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2FE5F446","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":1,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_2FE5F446","path":"rooms/rm_ELEVATOR_INSIDE/rm_ELEVATOR_INSIDE.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_elevator_back","path":"objects/obj_elevator_back/obj_elevator_back.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":174.0,"y":94.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "DEMO",
    "path": "folders/Rooms/DEMO.yy",
  },
  "parentRoom": {
    "name": "rm_ELEVATOR_INSIDE",
    "path": "rooms/rm_ELEVATOR_INSIDE/rm_ELEVATOR_INSIDE.yy",
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
    "Width": 360,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":1080,"hspeed":-1,"hview":180,"inherit":true,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":2160,"wview":360,"xport":0,"xview":0,"yport":0,"yview":0,},
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