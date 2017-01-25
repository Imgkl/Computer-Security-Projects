.class public Lcom/urbanairship/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field public static final ACTION_APP_BACKGROUND:Ljava/lang/String; = "com.urbanairship.analytics.APP_BACKGROUND"

.field public static final ACTION_APP_FOREGROUND:Ljava/lang/String; = "com.urbanairship.analytics.APP_FOREGROUND"

.field private static lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;


# instance fields
.field private final activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

.field private configOptions:Lcom/urbanairship/AirshipConfigOptions;

.field private context:Landroid/content/Context;

.field private conversionSendId:Ljava/lang/String;

.field private final dataManager:Lcom/urbanairship/analytics/EventDataManager;

.field private inBackground:Z

.field private minSdkVersion:I

.field private final preferences:Lcom/urbanairship/analytics/AnalyticsPreferences;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
    .param p3, "options"    # Lcom/urbanairship/AirshipConfigOptions;

    .prologue
    .line 82
    new-instance v0, Lcom/urbanairship/analytics/ActivityMonitor;

    iget v1, p3, Lcom/urbanairship/AirshipConfigOptions;->minSdkVersion:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v3, p3, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/urbanairship/analytics/ActivityMonitor;-><init>(IIZ)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/urbanairship/analytics/Analytics;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/analytics/ActivityMonitor;)V

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/analytics/ActivityMonitor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
    .param p3, "options"    # Lcom/urbanairship/AirshipConfigOptions;
    .param p4, "activityMonitor"    # Lcom/urbanairship/analytics/ActivityMonitor;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-direct {v0, p2}, Lcom/urbanairship/analytics/AnalyticsPreferences;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->preferences:Lcom/urbanairship/analytics/AnalyticsPreferences;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->context:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/urbanairship/analytics/EventDataManager;

    invoke-direct {v0}, Lcom/urbanairship/analytics/EventDataManager;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    .line 98
    iget v0, p3, Lcom/urbanairship/AirshipConfigOptions;->minSdkVersion:I

    iput v0, p0, Lcom/urbanairship/analytics/Analytics;->minSdkVersion:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    .line 101
    iput-object p3, p0, Lcom/urbanairship/analytics/Analytics;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    .line 103
    invoke-virtual {p0}, Lcom/urbanairship/analytics/Analytics;->startNewSession()V

    .line 105
    iput-object p4, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

    .line 106
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

    new-instance v1, Lcom/urbanairship/analytics/Analytics$1;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/analytics/Analytics$1;-><init>(Lcom/urbanairship/analytics/Analytics;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/ActivityMonitor;->setListener(Lcom/urbanairship/analytics/ActivityMonitor$Listener;)V

    .line 133
    return-void
.end method

.method static synthetic access$002(Lcom/urbanairship/analytics/Analytics;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/analytics/Analytics;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/urbanairship/analytics/Analytics;Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/analytics/Analytics;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/urbanairship/analytics/ActivityMonitor$Source;
    .param p3, "x3"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/analytics/Analytics;->reportActivityStarted(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/analytics/Analytics;Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/analytics/Analytics;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/urbanairship/analytics/ActivityMonitor$Source;
    .param p3, "x3"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/analytics/Analytics;->reportActivityStopped(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V

    return-void
.end method

.method public static activityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 144
    .local v0, "timeMS":J
    new-instance v2, Lcom/urbanairship/analytics/Analytics$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/urbanairship/analytics/Analytics$2;-><init>(Landroid/app/Activity;J)V

    invoke-static {v2}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;

    .line 150
    return-void
.end method

.method public static activityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, "timeMS":J
    new-instance v2, Lcom/urbanairship/analytics/Analytics$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/urbanairship/analytics/Analytics$3;-><init>(Landroid/app/Activity;J)V

    invoke-static {v2}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;

    .line 167
    return-void
.end method

.method public static registerLifeCycleCallbacks(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 340
    sget-object v0, Lcom/urbanairship/analytics/Analytics;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/urbanairship/analytics/Analytics$4;

    invoke-direct {v0, p0}, Lcom/urbanairship/analytics/Analytics$4;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/urbanairship/analytics/Analytics;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    .line 365
    sget-object v0, Lcom/urbanairship/analytics/Analytics;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-virtual {v0}, Lcom/urbanairship/LifeCycleCallbacks;->register()V

    .line 367
    :cond_0
    return-void
.end method

.method private reportActivityStarted(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "source"    # Lcom/urbanairship/analytics/ActivityMonitor$Source;
    .param p3, "timeMS"    # J

    .prologue
    .line 194
    iget v0, p0, Lcom/urbanairship/analytics/Analytics;->minSdkVersion:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;->MANUAL_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    if-ne v0, p2, :cond_0

    .line 195
    const-string v0, "activityStarted call is no longer necessary starting with SDK 14 - ICE CREAM SANDWICH. Analytics is auto-instrumented for you."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/urbanairship/analytics/ActivityMonitor;->activityStarted(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V

    .line 199
    return-void
.end method

.method private reportActivityStopped(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "source"    # Lcom/urbanairship/analytics/ActivityMonitor$Source;
    .param p3, "timeMS"    # J

    .prologue
    .line 178
    iget v0, p0, Lcom/urbanairship/analytics/Analytics;->minSdkVersion:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;->MANUAL_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    if-ne v0, p2, :cond_0

    .line 179
    const-string v0, "activityStopped call is no longer necessary starting with SDK 14 - ICE CREAM SANDWICH. Analytics is auto-instrumented for you."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/urbanairship/analytics/ActivityMonitor;->activityStopped(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V

    .line 183
    return-void
.end method

.method public static unregisterLifeCycleCallbacks()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 376
    sget-object v0, Lcom/urbanairship/analytics/Analytics;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lcom/urbanairship/analytics/Analytics;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-virtual {v0}, Lcom/urbanairship/LifeCycleCallbacks;->unregister()V

    .line 379
    :cond_0
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/urbanairship/analytics/Event;)V
    .locals 5
    .param p1, "event"    # Lcom/urbanairship/analytics/Event;

    .prologue
    .line 217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analytics - Invalid event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/analytics/Analytics;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analytics disabled - ignoring event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/urbanairship/analytics/Event;->createEventPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "eventPayload":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analytics - Failed to add event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 232
    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/urbanairship/analytics/Analytics;->context:Landroid/content/Context;

    const-class v4, Lcom/urbanairship/analytics/EventService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.urbanairship.analytics.ADD"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_TYPE"

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_ID"

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_DATA"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_TIME_STAMP"

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_SESSION_ID"

    iget-object v4, p0, Lcom/urbanairship/analytics/Analytics;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 240
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_4

    .line 241
    const-string v2, "Unable to start analytics service. Check that the event service is added to the manifest."

    invoke-static {v2}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analytics - Added event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getConversionSendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->conversionSendId:Ljava/lang/String;

    return-object v0
.end method

.method getDataManager()Lcom/urbanairship/analytics/EventDataManager;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    return-object v0
.end method

.method getPreferences()Lcom/urbanairship/analytics/AnalyticsPreferences;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->preferences:Lcom/urbanairship/analytics/AnalyticsPreferences;

    return-object v0
.end method

.method getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public isAppInForeground()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->preferences:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->isAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 253
    const/4 v0, 0x0

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->SINGLE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/urbanairship/analytics/Analytics;->recordLocation(Landroid/location/Location;Lcom/urbanairship/location/LocationRequestOptions;Lcom/urbanairship/analytics/LocationEvent$UpdateType;)V

    .line 254
    return-void
.end method

.method public recordLocation(Landroid/location/Location;Lcom/urbanairship/location/LocationRequestOptions;Lcom/urbanairship/analytics/LocationEvent$UpdateType;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "options"    # Lcom/urbanairship/location/LocationRequestOptions;
    .param p3, "updateType"    # Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    .prologue
    .line 267
    if-nez p2, :cond_0

    .line 268
    const/4 v3, -0x1

    .line 269
    .local v3, "requestedAccuracy":I
    const/4 v4, -0x1

    .line 279
    .local v4, "distance":I
    :goto_0
    new-instance v0, Lcom/urbanairship/analytics/LocationEvent;

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v5

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/analytics/LocationEvent;-><init>(Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;IIZ)V

    .line 280
    .local v0, "event":Lcom/urbanairship/analytics/LocationEvent;
    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 281
    return-void

    .line 271
    .end local v0    # "event":Lcom/urbanairship/analytics/LocationEvent;
    .end local v3    # "requestedAccuracy":I
    .end local v4    # "distance":I
    :cond_0
    invoke-virtual {p2}, Lcom/urbanairship/location/LocationRequestOptions;->getMinDistance()F

    move-result v1

    float-to-int v4, v1

    .line 272
    .restart local v4    # "distance":I
    invoke-virtual {p2}, Lcom/urbanairship/location/LocationRequestOptions;->getPriority()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 273
    const/4 v3, 0x1

    .restart local v3    # "requestedAccuracy":I
    goto :goto_0

    .line 275
    .end local v3    # "requestedAccuracy":I
    :cond_1
    const/4 v3, 0x2

    .restart local v3    # "requestedAccuracy":I
    goto :goto_0
.end method

.method public setConversionSendId(Ljava/lang/String;)V
    .locals 2
    .param p1, "sendId"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Analytics - Setting conversion send ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 301
    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->conversionSendId:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 399
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->preferences:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->isAnalyticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 400
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->context:Landroid/content/Context;

    const-class v3, Lcom/urbanairship/analytics/EventService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.analytics.DELETE_ALL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 403
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 406
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->preferences:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v1, p1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setAnalyticsEnabled(Z)V

    .line 407
    return-void
.end method

.method startNewSession()V
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->sessionId:Ljava/lang/String;

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Analytics - New session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 387
    return-void
.end method
