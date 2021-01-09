{
  "spriteId": {
    "name": "sHallwayDoor",
    "path": "sprites/sHallwayDoor/sHallwayDoor.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": {
    "name": "sClassRoomDoor",
    "path": "sprites/sClassRoomDoor/sClassRoomDoor.yy",
  },
  "persistent": false,
  "parentObjectId": null,
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"oHallway","path":"objects/oHallway/oHallway.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"parent":{"name":"oHallway","path":"objects/oHallway/oHallway.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":5,"value":"rHallway","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMRoom",
      ],"resourceVersion":"1.0","name":"target","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Doors",
    "path": "folders/Objects/Doors.yy",
  },
  "resourceVersion": "1.0",
  "name": "oHallway",
  "tags": [],
  "resourceType": "GMObject",
}