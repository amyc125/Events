using System.Diagnostics;

static void ReadEvenLog()
{
    string eventLogName = "System";

    EventLog eventLog = new EventLog();
    eventLog.Log = eventLogName;

    foreach (EventLogEntry log in eventLog.Entries)
    {
        Console.WriteLine("{0}\n", log.Message);
    }
}