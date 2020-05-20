/*
Crew check script - v0.3
Checks for crew in positions of vehicle
Created by BearBison
*/
/* Private variables */
private ["_Vehicle","_Soldier","_Position","_CrewCheck"];
/* Defines the variables */
_Vehicle = _this select 0;
_Position = _this select 1;
_Soldier = _this select 2;
/* Checks the crew */
_CrewCheck =
{
   switch (_Position) do
   {
       case "driver":
       {
           switch (true) do
           {
               case (_Vehicle isKindOf "Air"):
               {
                   if (typeOf _Soldier == "B_Helipilot_F") exitWith {};
                   hint "Let's leave piloting to those with the appropriate training!";
                   sleep 1;
                   _Soldier action ["getout",_Vehicle];
               };
               default
               {
                   if (typeOf _Soldier == "B_crew_F") exitWith {};
                   hint "Let's leave driving to those with the appropriate training!";
                   sleep 1;
                   _Soldier action ["getout",_Vehicle];
               };
           };
       };
       case "gunner":
       {
           switch (true) do
           {
               case (_Vehicle isKindOf "Air"):
               {
                   if (typeOf _Soldier == "B_Helipilot_F") exitWith {};
                   hint "Let's leave gunning to those with the appropriate training!";
                   sleep 1;
                   _Soldier action ["getout",_Vehicle];
               };
               default
               {
                   if (typeOf _Soldier == "B_crew_F") exitWith {};
                   hint "Let's leave gunning to those with the appropriate training!";
                   sleep 1;
                   _Soldier action ["getout",_Vehicle];
               };
           };
       };
       case "Turret":
       {
           switch (true) do
           {
               case (_Vehicle isKindOf "Air"):
               {
                   if (typeOf _Soldier == "B_Helipilot_F") exitWith {};
                   hint "Let's leave gunning to those with the appropriate training!";
                   sleep 1;
                   _Soldier action ["getout",_Vehicle];
               };
               default
               {
                   if (typeOf _Soldier == "B_crew_F") exitWith {};
                   hint "Let's leave gunning to those with the appropriate training!";
                   sleep 1;
                   _Soldier action ["getout",_Vehicle];
               };
           };
       };
   };
};
/* Calls crew check */
call _CrewCheck;
/* Waits until position is changed */
waitUntil {((assignedVehicleRole _Soldier) select 0 != "cargo")||(vehicle _Soldier == _Soldier)};
sleep 1;
/* Exits if no longer in a vehicle */
if (vehicle _Soldier == _Soldier) exitwith {};
/* Gets new position */
_Position = (assignedVehicleRole _Soldier) select 0;
/* Calls crew check */
call _CrewCheck;