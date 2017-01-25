.class Lcom/urbanairship/analytics/AnalyticsPreferences;
.super Ljava/lang/Object;
.source "AnalyticsPreferences.java"


# static fields
.field private static final ANALYTICS_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.analytics.ANALYTICS_ENABLED"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.analytics"

.field private static final LAST_SEND_KEY:Ljava/lang/String; = "com.urbanairship.analytics.LAST_SEND"

.field static final MAX_BATCH_INTERVAL_MS:I = 0x240c8400

.field static final MAX_BATCH_SIZE_BYTES:I = 0x7d000

.field private static final MAX_BATCH_SIZE_KEY:Ljava/lang/String; = "com.urbanairship.analytics.MAX_BATCH_SIZE"

.field static final MAX_TOTAL_DB_SIZE_BYTES:I = 0x500000

.field private static final MAX_TOTAL_DB_SIZE_KEY:Ljava/lang/String; = "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE"

.field private static final MAX_WAIT_KEY:Ljava/lang/String; = "com.urbanairship.analytics.MAX_WAIT"

.field static final MAX_WAIT_MS:I = 0x48190800

.field private static final MIN_BATCH_INTERVAL_KEY:Ljava/lang/String; = "com.urbanairship.analytics.MIN_BATCH_INTERVAL"

.field static final MIN_BATCH_INTERVAL_MS:I = 0xea60

.field static final MIN_BATCH_SIZE_BYTES:I = 0x400

.field static final MIN_TOTAL_DB_SIZE_BYTES:I = 0x2800

.field static final MIN_WAIT_MS:I = 0x240c8400

.field private static final SCHEDULED_SEND_TIME:Ljava/lang/String; = "com.urbanairship.analytics.SCHEDULED_SEND_TIME"


# instance fields
.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 0
    .param p1, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 34
    return-void
.end method


# virtual methods
.method getLastSendTime()J
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.LAST_SEND"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getMaxBatchSize()I
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.MAX_BATCH_SIZE"

    const v2, 0x7d000

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getMaxTotalDbSize()I
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE"

    const/high16 v2, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getMaxWait()I
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.MAX_WAIT"

    const v2, 0x48190800

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getMinBatchInterval()I
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.MIN_BATCH_INTERVAL"

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getScheduledSendTime()J
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.SCHEDULED_SEND_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method isAnalyticsEnabled()Z
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.ANALYTICS_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method setAnalyticsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.ANALYTICS_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method setLastSendTime(J)V
    .locals 3
    .param p1, "lastSendTime"    # J

    .prologue
    .line 123
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.LAST_SEND"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method setMaxBatchSize(I)V
    .locals 3
    .param p1, "maxBatchSize"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.MAX_BATCH_SIZE"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method setMaxTotalDbSize(I)V
    .locals 3
    .param p1, "maxTotalDbSize"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method setMaxWait(I)V
    .locals 3
    .param p1, "maxWait"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.MAX_WAIT"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method setMinBatchInterval(I)V
    .locals 3
    .param p1, "minBatchInterval"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.MIN_BATCH_INTERVAL"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method setScheduledSendTime(J)V
    .locals 3
    .param p1, "scheduledSendTime"    # J

    .prologue
    .line 141
    iget-object v0, p0, Lcom/urbanairship/analytics/AnalyticsPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.SCHEDULED_SEND_TIME"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void
.end method
