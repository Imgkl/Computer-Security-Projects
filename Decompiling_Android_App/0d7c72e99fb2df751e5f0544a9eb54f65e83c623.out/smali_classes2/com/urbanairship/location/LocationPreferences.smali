.class Lcom/urbanairship/location/LocationPreferences;
.super Ljava/lang/Object;
.source "LocationPreferences.java"

# interfaces
.implements Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;


# static fields
.field static final BACKGROUND_UPDATES_ALLOWED:Ljava/lang/String; = "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

.field static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.location"

.field static final LOCATION_OPTIONS:Ljava/lang/String; = "com.urbanairship.location.LOCATION_OPTIONS"

.field static final LOCATION_UPDATES_ENABLED:Ljava/lang/String; = "com.urbanairship.location.LOCATION_UPDATES_ENABLED"


# instance fields
.field private preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 0
    .param p1, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 54
    invoke-virtual {p1, p0}, Lcom/urbanairship/PreferenceDataStore;->addListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v4, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v5, "com.urbanairship.location.LOCATION_OPTIONS"

    invoke-virtual {v4, v5, v3}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "jsonString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 147
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Lcom/urbanairship/location/LocationRequestOptions$Builder;

    invoke-direct {v4}, Lcom/urbanairship/location/LocationRequestOptions$Builder;-><init>()V

    const-string v5, "minDistance"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->setMinDistance(F)Lcom/urbanairship/location/LocationRequestOptions$Builder;

    move-result-object v4

    const-string v5, "minTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->setMinTime(JLjava/util/concurrent/TimeUnit;)Lcom/urbanairship/location/LocationRequestOptions$Builder;

    move-result-object v4

    const-string v5, "priority"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->setPriority(I)Lcom/urbanairship/location/LocationRequestOptions$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->create()Lcom/urbanairship/location/LocationRequestOptions;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 160
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v3

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocationPreferences - Failed parsing LocationRequestOptions from JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocationPreferences - Invalid LocationRequestOptions from JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isBackgroundLocationAllowed()Z
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isLocationUpdatesEnabled()Z
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.LOCATION_UPDATES_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "com.urbanairship.location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    invoke-interface {v0, p1}, Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;->onPreferenceChange(Ljava/lang/String;)V

    .line 75
    :cond_0
    monitor-exit p0

    .line 77
    :cond_1
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBackgroundLocationAllowed(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method setListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iput-object p1, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLocationRequestOptions(Lcom/urbanairship/location/LocationRequestOptions;)V
    .locals 6
    .param p1, "options"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    iget-object v2, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.location.LOCATION_OPTIONS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    :goto_0
    return-void

    .line 126
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "priority"

    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->getPriority()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    const-string v2, "minDistance"

    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->getMinDistance()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 129
    const-string v2, "minTime"

    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->getMinTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 130
    iget-object v2, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.location.LOCATION_OPTIONS"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationPreferences - Failed saving LocationRequestOptions as JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setLocationUpdatesEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.LOCATION_UPDATES_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-void
.end method
