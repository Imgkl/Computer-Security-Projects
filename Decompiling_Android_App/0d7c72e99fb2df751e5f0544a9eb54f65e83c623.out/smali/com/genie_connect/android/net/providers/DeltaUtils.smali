.class public Lcom/genie_connect/android/net/providers/DeltaUtils;
.super Ljava/lang/Object;
.source "DeltaUtils.java"


# static fields
.field protected static final MAX_TOTAL_DELTA_SIZE:J = 0xe4e1c0L

.field protected static final PARSE_MAX_BYTES_HIGH:J = 0x2dc6c0L

.field protected static final PARSE_MAX_BYTES_LOW:J = 0xf4240L

.field protected static final PARSE_MAX_BYTES_MED:J = 0x1e8480L

.field protected static final TEMP_DELTA_DIRECTORY:Ljava/lang/String; = "deltas/"

.field protected static final TEMP_SYNCMYEVENT_DIRECTORY:Ljava/lang/String; = "syncMyEvent/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized canRecieveUpdates(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-class v3, Lcom/genie_connect/android/net/providers/DeltaUtils;

    monitor-enter v3

    const/4 v1, 0x1

    .line 64
    .local v1, "updatable":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/eventgenie/android/R$bool;->proofer_available:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-static {p0}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v0

    .line 66
    .local v0, "prefs":Lcom/genie_connect/android/prefs/GlobalPreferences;
    invoke-virtual {v0}, Lcom/genie_connect/android/prefs/GlobalPreferences;->isProoferLiveModeEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 71
    .end local v0    # "prefs":Lcom/genie_connect/android/prefs/GlobalPreferences;
    :cond_0
    monitor-exit v3

    return v1

    .line 62
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static clearDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # Ljava/lang/Long;

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->clearDirectory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static getDeltaParserToUse(Lorg/json/JSONArray;I)I
    .locals 14
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "memClass"    # I

    .prologue
    .line 79
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "deltaSizeTotal":J
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 82
    .local v0, "arraySize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_1

    .line 84
    :try_start_0
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 85
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "approximateJsonSize"

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    add-long/2addr v2, v10

    .line 86
    const-string v10, "fileFormatVersionJson"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "deltaVersion":I
    const/4 v10, 0x2

    if-eq v1, v10, :cond_0

    .line 88
    const-string v10, "^ NET: DELTA: Will use Live - Unknown delta format"

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v10, 0x0

    .line 113
    .end local v1    # "deltaVersion":I
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return v10

    .line 91
    :catch_0
    move-exception v6

    .line 92
    .local v6, "e":Lorg/json/JSONException;
    const-string v10, "^ NET: isParsingDeltasWise() JSONException: "

    invoke-static {v10, v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 93
    const/4 v10, 0x0

    goto :goto_1

    .line 82
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v1    # "deltaVersion":I
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "deltaVersion":I
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-wide/32 v10, 0xe4e1c0

    cmp-long v10, v2, v10

    if-ltz v10, :cond_2

    .line 98
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ NET: Total delta size too big: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/32 v12, 0xe4e1c0

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 99
    const/4 v10, 0x0

    goto :goto_1

    .line 102
    :cond_2
    long-to-float v10, v2

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float v7, v10, v11

    .line 103
    .local v7, "expandedDelta":F
    invoke-static {}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFreeSpace()J

    move-result-wide v4

    .line 105
    .local v4, "diskSpace":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ NET: DELTA: Free space = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 107
    long-to-float v10, v4

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_3

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ NET: Not Enough free space: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 109
    const/4 v10, 0x0

    goto :goto_1

    .line 112
    :cond_3
    const-string v10, "^ NET: DELTA: Will use V2"

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 113
    const/4 v10, 0x2

    goto/16 :goto_1
.end method

.method protected static getFreeSpace()J
    .locals 8

    .prologue
    .line 117
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 118
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 119
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 120
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 122
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getFullDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # Ljava/lang/Long;

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deltas/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deltas/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFullSyncMyEventDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # Ljava/lang/Long;

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "syncMyEvent/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "syncMyEvent/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isDeltaWithinParseLimit(Lorg/json/JSONObject;I)Z
    .locals 8
    .param p0, "dataversion"    # Lorg/json/JSONObject;
    .param p1, "memClass"    # I

    .prologue
    .line 143
    const/16 v4, 0x20

    if-gt p1, v4, :cond_0

    .line 144
    const-wide/32 v0, 0xf4240

    .line 151
    .local v0, "max":J
    :goto_0
    const-string v4, "approximateJsonSize"

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 152
    .local v2, "size":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 153
    const/4 v4, 0x0

    .line 155
    :goto_1
    return v4

    .line 145
    .end local v0    # "max":J
    .end local v2    # "size":J
    :cond_0
    const/16 v4, 0x30

    if-gt p1, v4, :cond_1

    .line 146
    const-wide/32 v0, 0x1e8480

    .restart local v0    # "max":J
    goto :goto_0

    .line 148
    .end local v0    # "max":J
    :cond_1
    const-wide/32 v0, 0x2dc6c0

    .restart local v0    # "max":J
    goto :goto_0

    .line 155
    .restart local v2    # "size":J
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method
