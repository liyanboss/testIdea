/* when this iteration finish, then build this sql file. */
delete from gameuser where TRIAL_USER_TAG>13;
update sequence set VAL=13 where NAME='FUN_USER';
