ntroduction
Consider the database structure below.
  The main table is the [Values] table 
  that stores a monthly trial balance 
  for each of the Clients entities for each account in the trial balance.
    The Logs table captures details about each upload event so that you can identify and query the most recent record.  
    See the "Sample records" worksheet for example records in each table


    Required
1.  Draft an SQL query (in T-SQL) that would return all fields in the Values table and also pull in the Account, Entity and Upload descriptions.

    Select *
    FROM Value 
    Join AccountDetails
    ON Value.AcctID = AccountDetails.AcctID
    Join EntityDetails
    ON Value.EntId = EntityDetails.EntId
    Join Logs
    On Value.LogID = Log.LogID


2.  Describe how you would use the logs table to query the most recent data available in the database for each entity/account/month combination.

    I will sort by timestamp with desc, and then use LogID to join query AccountDetails and EntityDetails.

