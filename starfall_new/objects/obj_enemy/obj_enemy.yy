{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemy",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "ENEMY",
    "path": "folders/Objects/ENEMY.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spr_idle","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"noone","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"hp","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"10","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"hp_max","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"hp","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"attack_range","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"10","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"dmg","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"5","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"attack_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"60","varType":0,},
  ],
  "solid": false,
  "spriteId": null,
  "spriteMaskId": null,
  "visible": true,
}