.class public Lcom/urbanairship/analytics/EventService;
.super Landroid/app/IntentService;
.source "EventService.java"


# static fields
.field static final ACTION_ADD:Ljava/lang/String; = "com.urbanairship.analytics.ADD"

.field static final ACTION_DELETE_ALL:Ljava/lang/String; = "com.urbanairship.analytics.DELETE_ALL"

.field static final ACTION_SEND:Ljava/lang/String; = "com.urbanairship.analytics.SEND"

.field private static final BATCH_DELAY:J = 0x2710L

.field static final EXTRA_EVENT_DATA:Ljava/lang/String; = "EXTRA_EVENT_DATA"

.field static final EXTRA_EVENT_ID:Ljava/lang/String; = "EXTRA_EVENT_ID"

.field static final EXTRA_EVENT_SESSION_ID:Ljava/lang/String; = "EXTRA_EVENT_SESSION_ID"

.field static final EXTRA_EVENT_TIME_STAMP:Ljava/lang/String; = "EXTRA_EVENT_TIME_STAMP"

.field static final EXTRA_EVENT_TYPE:Ljava/lang/String; = "EXTRA_EVENT_TYPE"

.field private static final REGION_BATCH_DELAY:J = 0x3e8L

.field private static backoffMs:J


# instance fields
.field private eventClient:Lcom/urbanairship/analytics/EventAPIClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "EventService"

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/EventService;-><init>(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lcom/urbanairship/analytics/EventAPIClient;

    invoke-direct {v0}, Lcom/urbanairship/analytics/EventAPIClient;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/analytics/EventService;-><init>(Ljava/lang/String;Lcom/urbanairship/analytics/EventAPIClient;)V

    .line 107
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/urbanairship/analytics/EventAPIClient;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "eventClient"    # Lcom/urbanairship/analytics/EventAPIClient;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 111
    iput-object p2, p0, Lcom/urbanairship/analytics/EventService;->eventClient:Lcom/urbanairship/analytics/EventAPIClient;

    .line 112
    return-void
.end method

.method private addEventFromIntent(Landroid/content/Intent;)V
    .locals 26
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/analytics/Analytics;->getPreferences()Lcom/urbanairship/analytics/AnalyticsPreferences;

    move-result-object v17

    .line 153
    .local v17, "preferences":Lcom/urbanairship/analytics/AnalyticsPreferences;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/analytics/Analytics;->getDataManager()Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v4

    .line 155
    .local v4, "dataManager":Lcom/urbanairship/analytics/EventDataManager;
    const-string v22, "EXTRA_EVENT_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "eventType":Ljava/lang/String;
    const-string v22, "EXTRA_EVENT_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "eventId":Ljava/lang/String;
    const-string v22, "EXTRA_EVENT_DATA"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "eventData":Ljava/lang/String;
    const-string v22, "EXTRA_EVENT_TIME_STAMP"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "eventTimeStamp":Ljava/lang/String;
    const-string v22, "EXTRA_EVENT_SESSION_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "sessionId":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v9, :cond_0

    if-nez v7, :cond_1

    .line 162
    :cond_0
    const-string v22, "Event service unable to add event with missing data."

    invoke-static/range {v22 .. v22}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {v4}, Lcom/urbanairship/analytics/EventDataManager;->getDatabaseSize()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxTotalDbSize()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 168
    const-string v22, "Event database size exceeded. Deleting oldest session."

    invoke-static/range {v22 .. v22}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v4}, Lcom/urbanairship/analytics/EventDataManager;->getOldestSessionId()Ljava/lang/String;

    move-result-object v16

    .line 170
    .local v16, "oldestSessionId":Ljava/lang/String;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2

    .line 171
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/urbanairship/analytics/EventDataManager;->deleteSession(Ljava/lang/String;)Z

    .line 175
    .end local v16    # "oldestSessionId":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v4 .. v9}, Lcom/urbanairship/analytics/EventDataManager;->insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_3

    .line 176
    const-string v22, "EventService - Unable to insert event into database."

    invoke-static/range {v22 .. v22}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 180
    :cond_3
    const-string v22, "location"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v22

    if-nez v22, :cond_5

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 182
    .local v10, "currentTime":J
    invoke-virtual/range {v17 .. v17}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getLastSendTime()J

    move-result-wide v12

    .line 183
    .local v12, "lastSendTime":J
    sub-long v18, v10, v12

    .line 184
    .local v18, "sendDelta":J
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v22

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/urbanairship/AirshipConfigOptions;->backgroundReportingIntervalMS:J

    move-wide/from16 v20, v0

    .line 185
    .local v20, "throttleDelta":J
    sub-long v14, v20, v18

    .line 187
    .local v14, "minimumWait":J
    invoke-direct/range {p0 .. p0}, Lcom/urbanairship/analytics/EventService;->getNextSendDelay()J

    move-result-wide v22

    cmp-long v22, v14, v22

    if-lez v22, :cond_4

    const-wide/16 v22, 0x2710

    cmp-long v22, v14, v22

    if-lez v22, :cond_4

    .line 188
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LocationEvent was inserted, but may not be updated until "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ms have passed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/urbanairship/analytics/EventService;->scheduleEventUpload(J)V

    goto/16 :goto_0

    .line 191
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/urbanairship/analytics/EventService;->getNextSendDelay()J

    move-result-wide v22

    const-wide/16 v24, 0x2710

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/analytics/EventService;->scheduleEventUpload(J)V

    goto/16 :goto_0

    .line 193
    .end local v10    # "currentTime":J
    .end local v12    # "lastSendTime":J
    .end local v14    # "minimumWait":J
    .end local v18    # "sendDelta":J
    .end local v20    # "throttleDelta":J
    :cond_5
    const-string v22, "region_event"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 194
    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/analytics/EventService;->scheduleEventUpload(J)V

    goto/16 :goto_0

    .line 196
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/urbanairship/analytics/EventService;->getNextSendDelay()J

    move-result-wide v22

    const-wide/16 v24, 0x2710

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/analytics/EventService;->scheduleEventUpload(J)V

    goto/16 :goto_0
.end method

.method private getNextSendDelay()J
    .locals 8

    .prologue
    .line 260
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/analytics/Analytics;->getPreferences()Lcom/urbanairship/analytics/AnalyticsPreferences;

    move-result-object v2

    .line 261
    .local v2, "preferences":Lcom/urbanairship/analytics/AnalyticsPreferences;
    invoke-virtual {v2}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getLastSendTime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMinBatchInterval()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    sget-wide v6, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    add-long v0, v4, v6

    .line 262
    .local v0, "nextSendTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private scheduleEventUpload(J)V
    .locals 13
    .param p1, "milliseconds"    # J

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v8, v10, p1

    .line 273
    .local v8, "sendTime":J
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/analytics/Analytics;->getPreferences()Lcom/urbanairship/analytics/AnalyticsPreferences;

    move-result-object v3

    .line 274
    .local v3, "preferences":Lcom/urbanairship/analytics/AnalyticsPreferences;
    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v10, "alarm"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 277
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v10, Lcom/urbanairship/analytics/EventService;

    invoke-direct {v1, v7, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "com.urbanairship.analytics.SEND"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {v3}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getScheduledSendTime()J

    move-result-wide v4

    .line 283
    .local v4, "previousScheduledTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v4, v10

    if-ltz v7, :cond_0

    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    :cond_0
    const/4 v6, 0x1

    .line 286
    .local v6, "reschedule":Z
    :goto_0
    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v10, 0x0

    const/high16 v11, 0x20000000

    invoke-static {v7, v10, v1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    if-nez v7, :cond_3

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {v7, v10, v1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 290
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v8, v9, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 291
    invoke-virtual {v3, v8, v9}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setScheduledSendTime(J)V

    .line 295
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 283
    .end local v6    # "reschedule":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 293
    .restart local v6    # "reschedule":Z
    :cond_3
    const-string v7, "EventService - Alarm already scheduled for an earlier time."

    invoke-static {v7}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private uploadEvents()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 204
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/analytics/Analytics;->getPreferences()Lcom/urbanairship/analytics/AnalyticsPreferences;

    move-result-object v5

    .line 205
    .local v5, "preferences":Lcom/urbanairship/analytics/AnalyticsPreferences;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/analytics/Analytics;->getDataManager()Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v1

    .line 207
    .local v1, "dataManager":Lcom/urbanairship/analytics/EventDataManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setLastSendTime(J)V

    .line 209
    invoke-virtual {v1}, Lcom/urbanairship/analytics/EventDataManager;->getEventCount()I

    move-result v2

    .line 211
    .local v2, "eventCount":I
    if-gtz v2, :cond_1

    .line 212
    const-string v7, "EventService - No events to send. Ending analytics upload."

    invoke-static {v7}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {v1}, Lcom/urbanairship/analytics/EventDataManager;->getDatabaseSize()I

    move-result v7

    div-int v0, v7, v2

    .line 219
    .local v0, "avgSize":I
    invoke-virtual {v5}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxBatchSize()I

    move-result v7

    div-int/2addr v7, v0

    invoke-virtual {v1, v7}, Lcom/urbanairship/analytics/EventDataManager;->getEvents(I)Ljava/util/Map;

    move-result-object v3

    .line 221
    .local v3, "events":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/urbanairship/analytics/EventService;->eventClient:Lcom/urbanairship/analytics/EventAPIClient;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/urbanairship/analytics/EventAPIClient;->sendEvents(Ljava/util/Collection;)Lcom/urbanairship/analytics/EventResponse;

    move-result-object v6

    .line 223
    .local v6, "response":Lcom/urbanairship/analytics/EventResponse;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/urbanairship/analytics/EventResponse;->getStatus()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    const/4 v4, 0x1

    .line 225
    .local v4, "isSuccess":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 226
    const-string v7, "Analytic events uploaded successfully."

    invoke-static {v7}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 227
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/urbanairship/analytics/EventDataManager;->deleteEvents(Ljava/util/Set;)Z

    .line 228
    sput-wide v10, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    .line 241
    :goto_2
    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    sub-int v7, v2, v7

    if-lez v7, :cond_3

    .line 242
    :cond_2
    const-string v7, "EventService - Scheduling next event batch upload."

    invoke-static {v7}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/urbanairship/analytics/EventService;->getNextSendDelay()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/urbanairship/analytics/EventService;->scheduleEventUpload(J)V

    .line 246
    :cond_3
    if-eqz v6, :cond_0

    .line 247
    invoke-virtual {v6}, Lcom/urbanairship/analytics/EventResponse;->getMaxTotalSize()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxTotalDbSize(I)V

    .line 248
    invoke-virtual {v6}, Lcom/urbanairship/analytics/EventResponse;->getMaxBatchSize()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxBatchSize(I)V

    .line 249
    invoke-virtual {v6}, Lcom/urbanairship/analytics/EventResponse;->getMaxWait()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxWait(I)V

    .line 250
    invoke-virtual {v6}, Lcom/urbanairship/analytics/EventResponse;->getMinBatchInterval()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMinBatchInterval(I)V

    goto :goto_0

    .line 223
    .end local v4    # "isSuccess":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 231
    .restart local v4    # "isSuccess":Z
    :cond_5
    sget-wide v8, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    .line 232
    invoke-virtual {v5}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMinBatchInterval()I

    move-result v7

    int-to-long v8, v7

    sput-wide v8, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    .line 237
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Analytic events failed to send. Will retry in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 234
    :cond_6
    sget-wide v8, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    invoke-virtual {v5}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxWait()I

    move-result v7

    int-to-long v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    sput-wide v8, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    goto :goto_3
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 117
    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventService - Received intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventService - Unrecognized intent action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :sswitch_0
    const-string v2, "com.urbanairship.analytics.DELETE_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.urbanairship.analytics.ADD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "com.urbanairship.analytics.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 130
    :pswitch_0
    const-string v0, "Deleting all analytic events."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->getDataManager()Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->deleteAllEvents()V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/EventService;->addEventFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-direct {p0}, Lcom/urbanairship/analytics/EventService;->uploadEvents()V

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        -0x5b20e7d4 -> :sswitch_1
        -0x8f3dec3 -> :sswitch_2
        0x6eb156e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
