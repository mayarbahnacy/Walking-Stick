library ieee;
use ieee.std_logic_1164.all; 

entity stick is

-- we have 2 inputs from the sensor detecting Obstacles and the sensor detecting the stick fell down
-- and 2 outputs when it detects an Obstacle it sends a signal to the motor to vibrate and when the stick fall
-- it sends a signal to the device that will produce the sound

port(sensorFall, sensorObstacle, switch: in std_logic; motor, sound: out std_logic);
end stick;

architecture behaviour of stick is
begin

motor <= not sensorObstacle and switch;
sound <= not sensorFall and switch;

end behaviour;