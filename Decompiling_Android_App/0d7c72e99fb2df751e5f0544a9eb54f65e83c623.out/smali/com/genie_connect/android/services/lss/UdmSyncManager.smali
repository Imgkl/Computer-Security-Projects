.class Lcom/genie_connect/android/services/lss/UdmSyncManager;
.super Ljava/lang/Object;
.source "UdmSyncManager.java"


# instance fields
.field private final SYNCABLE_ENTITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mGson:Lcom/google/gson/Gson;

.field private mNamespace:Ljava/lang/Long;

.field private final mUdmNetwork:Lcom/genie_connect/android/services/lss/UdmNetwork;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # Ljava/lang/Long;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getUdmSyncableEntities()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/access/UdmEntityLists;->translateEntitiesToSyncables(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->SYNCABLE_ENTITIES:Ljava/util/Set;

    .line 103
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mGson:Lcom/google/gson/Gson;

    .line 104
    new-instance v0, Lcom/genie_connect/android/services/lss/UdmNetwork;

    iget-object v1, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/genie_connect/android/services/lss/UdmNetwork;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mUdmNetwork:Lcom/genie_connect/android/services/lss/UdmNetwork;

    .line 105
    iput-object p2, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mNamespace:Ljava/lang/Long;

    .line 106
    return-void
.end method

.method private static deleteMessagesNotInSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)V
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "toBeKept":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 588
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 589
    invoke-static {p1}, Lcom/eventgenie/android/utils/help/SetUtils;->convertLongSetToArray(Ljava/util/Set;)[Ljava/lang/Long;

    move-result-object v0

    .line 590
    .local v0, "items":[Ljava/lang/Long;
    const-string v2, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id NOT IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/genie_connect/android/db/access/BaseDb;->makeStringFromArray([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 595
    .end local v0    # "items":[Ljava/lang/Long;
    .local v1, "res":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LSS: messages DELETED # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 596
    return-void

    .line 592
    .end local v1    # "res":I
    :cond_0
    const-string v2, "messages"

    const-string v3, "1"

    invoke-virtual {p0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "res":I
    goto :goto_0
.end method

.method private static deleteTempFile(Lcom/genie_connect/android/net/container/NetworkResultUdm;)V
    .locals 4
    .param p0, "result"    # Lcom/genie_connect/android/net/container/NetworkResultUdm;

    .prologue
    .line 599
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 603
    .local v1, "res":Z
    if-nez v1, :cond_1

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LSS: Unable to delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 609
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "res":Z
    :cond_0
    :goto_0
    return-void

    .line 606
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "res":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LSS: Deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static doDeletes(Lcom/genie_connect/common/db/entityfactory/EGEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 612
    if-eqz p0, :cond_0

    .line 613
    new-instance v0, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, v0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J

    .line 615
    :cond_0
    return-void
.end method

.method private doFavouriteSessionsSync(Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 491
    new-instance v6, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v6}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v3

    .line 494
    .local v3, "session":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 500
    invoke-static {v3, p2}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doDeletes(Lcom/genie_connect/common/db/entityfactory/EGEntity;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 503
    const-wide/16 v4, 0x0

    .line 504
    .local v4, "itemCount":J
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 505
    iget-object v6, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mGson:Lcom/google/gson/Gson;

    const-class v7, Lcom/google/gson/JsonElement;

    invoke-virtual {v6, p1, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 506
    .local v1, "element":Lcom/google/gson/JsonElement;
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 507
    .local v2, "favSessionJson":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 508
    if-eqz p2, :cond_0

    .line 509
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 510
    new-instance v6, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-direct {v6, p2}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mNamespace:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 519
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    .end local v2    # "favSessionJson":Lorg/json/JSONObject;
    .end local v4    # "itemCount":J
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 524
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 513
    .restart local v4    # "itemCount":J
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 514
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ LSS: FAV_SESSIONS # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 516
    iget-object v6, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifySessionsSynced(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 521
    .end local v4    # "itemCount":J
    :catch_1
    move-exception v0

    .line 522
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private doFavouriteSubSessionsSync(Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 447
    new-instance v6, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v6}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v3

    .line 450
    .local v3, "subsession":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 456
    invoke-static {v3, p2}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doDeletes(Lcom/genie_connect/common/db/entityfactory/EGEntity;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 459
    const-wide/16 v4, 0x0

    .line 460
    .local v4, "itemCount":J
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 461
    iget-object v6, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mGson:Lcom/google/gson/Gson;

    const-class v7, Lcom/google/gson/JsonElement;

    invoke-virtual {v6, p1, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 462
    .local v1, "element":Lcom/google/gson/JsonElement;
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 463
    .local v2, "favSessionJson":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 464
    if-eqz p2, :cond_0

    .line 465
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 466
    new-instance v6, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-direct {v6, p2}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mNamespace:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 475
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    .end local v2    # "favSessionJson":Lorg/json/JSONObject;
    .end local v4    # "itemCount":J
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 480
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 469
    .restart local v4    # "itemCount":J
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ LSS: FAV_SUBSESSIONS # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 473
    iget-object v6, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifySubSessionsSynced(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 477
    .end local v4    # "itemCount":J
    :catch_1
    move-exception v0

    .line 478
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private doGamificationSync(Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 26
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 109
    const-wide/16 v12, 0x0

    .line 110
    .local v12, "itemCount":J
    new-instance v19, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct/range {v19 .. v19}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v22, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PLAYERGAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v18

    .line 111
    .local v18, "playergame":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doDeletes(Lcom/genie_connect/common/db/entityfactory/EGEntity;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 115
    const-wide/16 v10, 0x0

    .line 117
    .local v10, "gamescore":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v16

    .line 119
    .local v16, "name":Ljava/lang/String;
    const-string v19, "games"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 124
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mGson:Lcom/google/gson/Gson;

    move-object/from16 v19, v0

    const-class v22, Lcom/google/gson/JsonElement;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    .line 126
    .local v8, "ele":Lcom/google/gson/JsonElement;
    new-instance v14, Lorg/json/JSONObject;

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    .local v14, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v14}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 129
    const-string v19, "playerTrophies"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 130
    .local v17, "playerTrophies":Lorg/json/JSONArray;
    if-eqz v17, :cond_1

    .line 133
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 134
    .local v15, "max":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v15, :cond_1

    .line 135
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 136
    .local v6, "achievement":Lorg/json/JSONObject;
    const-string/jumbo v19, "totalTrophyPoints"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 137
    .local v20, "points":J
    add-long v10, v10, v20

    .line 134
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 141
    .end local v6    # "achievement":Lorg/json/JSONObject;
    .end local v9    # "i":I
    .end local v15    # "max":I
    .end local v20    # "points":J
    :cond_1
    if-eqz p2, :cond_0

    .line 142
    const-wide/16 v22, 0x1

    add-long v12, v12, v22

    .line 143
    new-instance v19, Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mNamespace:Ljava/lang/Long;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    .line 154
    .end local v8    # "ele":Lcom/google/gson/JsonElement;
    .end local v10    # "gamescore":J
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "playerTrophies":Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    .line 155
    .local v7, "e":Ljava/io/IOException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "^ LSS: doGamificationSync Error: "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 166
    .end local v7    # "e":Ljava/io/IOException;
    :goto_3
    return-wide v12

    .line 147
    .restart local v10    # "gamescore":J
    .restart local v16    # "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 148
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->persistGameScore(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 156
    .end local v10    # "gamescore":J
    .end local v16    # "name":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 157
    .local v7, "e":Lorg/json/JSONException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "^ LSS: doGamificationSync Error: "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 150
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v10    # "gamescore":J
    .restart local v16    # "name":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 158
    .end local v10    # "gamescore":J
    .end local v16    # "name":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 159
    .local v7, "e":Ljava/lang/IllegalStateException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "^ LSS: doGamificationSync Error: "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 153
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    .restart local v10    # "gamescore":J
    :cond_4
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    .line 160
    .end local v10    # "gamescore":J
    :catch_3
    move-exception v7

    .line 161
    .local v7, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "^ LSS: doGamificationSync Error: "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 162
    .end local v7    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_4
    move-exception v7

    .line 163
    .local v7, "e":Ljava/lang/NullPointerException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "^ LSS: doGamificationSync Error: "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3
.end method

.method private doMessageSync(Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 23
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 170
    const-wide/16 v16, 0x0

    .line 171
    .local v16, "itemCount":J
    new-instance v4, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v4}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v19

    .line 176
    .local v19, "message":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v22, "messageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 181
    .local v13, "currentlyReadMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v5, "messages"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "id"

    aput-object v7, v6, v4

    const-string v7, "isRead=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "1"

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 182
    .local v12, "c":Landroid/database/Cursor;
    invoke-static {v12}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 185
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 186
    const-string v4, "id"

    invoke-static {v12, v4}, Lcom/genie_connect/android/db/DbHelper;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {v12}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ LSS: messages READ # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 197
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 200
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mGson:Lcom/google/gson/Gson;

    const-class v5, Lcom/google/gson/JsonElement;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/gson/JsonElement;

    .line 202
    .local v15, "ele":Lcom/google/gson/JsonElement;
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    .local v18, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 204
    .local v20, "messageId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-eqz v4, :cond_1

    .line 205
    const-wide/16 v4, 0x1

    add-long v16, v16, v4

    .line 206
    invoke-static/range {v18 .. v18}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 207
    new-instance v4, Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mNamespace:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 208
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p2

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v4}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->setMessageRead(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Boolean;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 215
    .end local v15    # "ele":Lcom/google/gson/JsonElement;
    .end local v18    # "jsonObject":Lorg/json/JSONObject;
    .end local v20    # "messageId":J
    :catch_0
    move-exception v14

    .line 216
    .local v14, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ LSS: doMessageSync Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 232
    .end local v14    # "e":Ljava/io/IOException;
    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->deleteMessagesNotInSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)V

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ LSS: messages # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 235
    return-wide v16

    .line 227
    :cond_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 228
    :catch_1
    move-exception v4

    goto :goto_2

    .line 217
    :catch_2
    move-exception v14

    .line 218
    .local v14, "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ LSS: doMessageSync Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 228
    :catch_3
    move-exception v4

    goto :goto_2

    .line 219
    .end local v14    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v14

    .line 220
    .local v14, "e":Ljava/lang/IllegalStateException;
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ LSS: doMessageSync Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 227
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 228
    :catch_5
    move-exception v4

    goto :goto_2

    .line 221
    .end local v14    # "e":Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v14

    .line 222
    .local v14, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ LSS: doMessageSync Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 227
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_2

    .line 228
    :catch_7
    move-exception v4

    goto/16 :goto_2

    .line 223
    .end local v14    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_8
    move-exception v14

    .line 224
    .local v14, "e":Ljava/lang/NullPointerException;
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ LSS: doMessageSync Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 227
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_2

    .line 228
    :catch_9
    move-exception v4

    goto/16 :goto_2

    .line 226
    .end local v14    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v4

    .line 227
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 228
    :goto_3
    throw v4

    .local v14, "e":Ljava/io/IOException;
    :catch_a
    move-exception v4

    goto/16 :goto_2

    .end local v14    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v5

    goto :goto_3
.end method

.method private doVisitorSync(Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 16
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 240
    const-wide/16 v6, 0x0

    .line 241
    .local v6, "itemCount":J
    new-instance v13, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v13}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v14, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v13, v14}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v4

    .line 242
    .local v4, "favVisitor":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    new-instance v13, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v13}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v14, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v13, v14}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v8

    .line 247
    .local v8, "visitor":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getVisitorsDb()Lcom/genie_connect/android/db/access/DbVisitors;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/access/DbVisitors;->deleteVisitorsWithoutNotes()V

    .line 248
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doDeletes(Lcom/genie_connect/common/db/entityfactory/EGEntity;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 250
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 253
    .local v11, "visitorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 257
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mGson:Lcom/google/gson/Gson;

    const-class v14, Lcom/google/gson/JsonElement;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    .line 259
    .local v3, "ele":Lcom/google/gson/JsonElement;
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    .local v5, "favVisitorJson":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 261
    const-string v13, "relatedVisitor"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 263
    .local v10, "visitorObj":Lorg/json/JSONObject;
    if-eqz v10, :cond_1

    .line 264
    const-string v13, "id"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 265
    .local v9, "visitorId":Ljava/lang/Long;
    if-eqz v9, :cond_1

    .line 266
    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v9    # "visitorId":Ljava/lang/Long;
    :cond_1
    invoke-static {v10}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 271
    if-eqz p2, :cond_0

    .line 272
    const-wide/16 v14, 0x1

    add-long/2addr v6, v14

    .line 274
    new-instance v12, Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 276
    .local v12, "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mNamespace:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v8, v12, v13, v14, v15}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 277
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mNamespace:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4, v12, v13, v14, v15}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 281
    .end local v3    # "ele":Lcom/google/gson/JsonElement;
    .end local v5    # "favVisitorJson":Lorg/json/JSONObject;
    .end local v10    # "visitorObj":Lorg/json/JSONObject;
    .end local v12    # "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ LSS: doVisitorSync Error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 297
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/genie_connect/android/db/access/Udm;->setVisitorFavCache(Ljava/util/Set;)V

    .line 298
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ LSS: favouritevisitors # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 300
    return-wide v6

    .line 293
    :cond_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 294
    :catch_1
    move-exception v13

    goto :goto_1

    .line 283
    :catch_2
    move-exception v2

    .line 284
    .local v2, "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ LSS: doVisitorSync Error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 293
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 294
    :catch_3
    move-exception v13

    goto :goto_1

    .line 285
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ LSS: doVisitorSync Error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 293
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 294
    :catch_5
    move-exception v13

    goto :goto_1

    .line 287
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v2

    .line 288
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ LSS: doVisitorSync Error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 293
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_1

    .line 294
    :catch_7
    move-exception v13

    goto/16 :goto_1

    .line 289
    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_8
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ LSS: doVisitorSync Error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 293
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_1

    .line 294
    :catch_9
    move-exception v13

    goto/16 :goto_1

    .line 292
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v13

    .line 293
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 295
    :goto_2
    throw v13

    .line 294
    .local v2, "e":Ljava/io/IOException;
    :catch_a
    move-exception v13

    goto/16 :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v14

    goto :goto_2
.end method

.method private performSyncEvent(Ljava/lang/String;)Z
    .locals 22
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v15, 0x0

    .line 306
    .local v15, "res":Z
    const/4 v13, 0x0

    .line 312
    .local v13, "reader":Lcom/google/gson/stream/JsonReader;
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->sendUserData()I

    move-result v17

    if-nez v17, :cond_2

    const/16 v16, 0x1

    .line 313
    .local v16, "userDataSentOk":Z
    :goto_0
    const/4 v8, 0x0

    .line 315
    .local v8, "haveDeletedAgendaItems":Z
    if-eqz v16, :cond_1a

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 319
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->isDbLockedByOtherThreads(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v17

    if-nez v17, :cond_19

    .line 320
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 323
    :try_start_0
    new-instance v14, Lcom/google/gson/stream/JsonReader;

    new-instance v17, Ljava/io/InputStreamReader;

    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v19, "UTF-8"

    invoke-direct/range {v17 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    .end local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v14, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_1
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 326
    :goto_1
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 327
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    .line 329
    .local v12, "name":Ljava/lang/String;
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 330
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 332
    :goto_2
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 333
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->sanitiseEntityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 334
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ LSS: DoSyncMyEvent Got: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 337
    const-string v17, "adhocagendaitems"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 338
    const-string v12, "agendaitems"

    .line 342
    :cond_0
    const-string v17, "favouritesessions"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 343
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doFavouriteSessionsSync(Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 398
    .end local v12    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v13, v14

    .line 399
    .end local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_3
    :try_start_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ LSS: DoSyncMyEvent Error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 400
    const/4 v15, 0x0

    .line 420
    invoke-static {v13}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 421
    if-eqz v15, :cond_1

    .line 422
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 424
    :cond_1
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 435
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_4
    return v15

    .line 312
    .end local v8    # "haveDeletedAgendaItems":Z
    .end local v16    # "userDataSentOk":Z
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 344
    .end local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "haveDeletedAgendaItems":Z
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v16    # "userDataSentOk":Z
    :cond_3
    :try_start_3
    const-string v17, "favouritesubsessions"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 345
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doFavouriteSubSessionsSync(Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 401
    .end local v12    # "name":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v13, v14

    .line 402
    .end local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    .restart local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_5
    :try_start_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ LSS: DoSyncMyEvent Error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 403
    const/4 v15, 0x0

    .line 420
    invoke-static {v13}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 421
    if-eqz v15, :cond_4

    .line 422
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 424
    :cond_4
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_4

    .line 346
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_5
    :try_start_5
    const-string v17, "favouritevisitors"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 347
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doVisitorSync(Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;)J
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 404
    .end local v12    # "name":Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v13, v14

    .line 405
    .end local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v5, "e":Ljava/lang/NullPointerException;
    .restart local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_6
    :try_start_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ LSS: DoSyncMyEvent Error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 406
    const/4 v15, 0x0

    .line 420
    invoke-static {v13}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 421
    if-eqz v15, :cond_6

    .line 422
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 424
    :cond_6
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_4

    .line 348
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .end local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_7
    :try_start_7
    const-string v17, "failurenotifications"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 349
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->skipValue()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 407
    .end local v12    # "name":Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object v13, v14

    .line 408
    .end local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v5, "e":Lorg/json/JSONException;
    .restart local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_7
    :try_start_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ LSS: DoSyncMyEvent Error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 409
    const/4 v15, 0x0

    .line 420
    invoke-static {v13}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 421
    if-eqz v15, :cond_8

    .line 422
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 424
    :cond_8
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_4

    .line 350
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_9
    :try_start_9
    const-string v17, "messages"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doMessageSync(Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;)J
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 410
    .end local v12    # "name":Ljava/lang/String;
    :catch_4
    move-exception v5

    move-object v13, v14

    .line 411
    .end local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v5, "e":Ljava/lang/IllegalStateException;
    .restart local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_8
    :try_start_a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ LSS: DoSyncMyEvent Error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 412
    const/4 v15, 0x0

    .line 420
    invoke-static {v13}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 421
    if-eqz v15, :cond_a

    .line 422
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 424
    :cond_a
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_4

    .line 352
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    .end local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_b
    :try_start_b
    const-string v17, "gamesRecords"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 353
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doGamificationSync(Lcom/google/gson/stream/JsonReader;Landroid/database/sqlite/SQLiteDatabase;)J
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 413
    .end local v12    # "name":Ljava/lang/String;
    :catch_5
    move-exception v5

    move-object v13, v14

    .line 414
    .end local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v5, "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_9
    :try_start_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ LSS: DoSyncMyEvent Error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 415
    const/4 v15, 0x0

    .line 420
    invoke-static {v13}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 421
    if-eqz v15, :cond_c

    .line 422
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 424
    :cond_c
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_4

    .line 354
    .end local v5    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_d
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->SYNCABLE_ENTITIES:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 355
    new-instance v17, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct/range {v17 .. v17}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-static {v12}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v6

    .line 360
    .local v6, "egEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    const-string v17, "agendaitems"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 361
    if-nez v8, :cond_e

    .line 362
    invoke-static {v6, v4}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doDeletes(Lcom/genie_connect/common/db/entityfactory/EGEntity;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 363
    const/4 v8, 0x1

    .line 369
    :cond_e
    :goto_a
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 371
    const-wide/16 v10, 0x0

    .line 372
    .local v10, "itemCount":J
    :cond_f
    :goto_b
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mGson:Lcom/google/gson/Gson;

    move-object/from16 v17, v0

    const-class v18, Lcom/google/gson/JsonElement;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    .line 374
    .local v7, "ele":Lcom/google/gson/JsonElement;
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 375
    .local v9, "jObject":Lorg/json/JSONObject;
    invoke-static {v9}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 376
    if-eqz v4, :cond_f

    .line 377
    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    .line 378
    new-instance v17, Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mNamespace:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_b

    .line 416
    .end local v6    # "egEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v7    # "ele":Lcom/google/gson/JsonElement;
    .end local v9    # "jObject":Lorg/json/JSONObject;
    .end local v10    # "itemCount":J
    .end local v12    # "name":Ljava/lang/String;
    :catch_6
    move-exception v5

    move-object v13, v14

    .line 417
    .end local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v5, "e":Ljava/io/IOException;
    .restart local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_c
    :try_start_e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ LSS: DoSyncMyEvent Error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 418
    const/4 v15, 0x0

    .line 420
    invoke-static {v13}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 421
    if-eqz v15, :cond_10

    .line 422
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 424
    :cond_10
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_4

    .line 366
    .end local v5    # "e":Ljava/io/IOException;
    .end local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v6    # "egEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_11
    :try_start_f
    invoke-static {v6, v4}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->doDeletes(Lcom/genie_connect/common/db/entityfactory/EGEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_a

    .line 420
    .end local v6    # "egEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v12    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v17

    move-object v13, v14

    .end local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_d
    invoke-static {v13}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 421
    if-eqz v15, :cond_12

    .line 422
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 424
    :cond_12
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v17

    .line 381
    .end local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v6    # "egEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .restart local v10    # "itemCount":J
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_13
    :try_start_10
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 382
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ LSS: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " # "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 384
    .end local v6    # "egEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v10    # "itemCount":J
    :cond_14
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "^ LSS: DoSyncMyEvent Unknown Entity: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_2

    .line 388
    :cond_15
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->endObject()V

    goto/16 :goto_1

    .line 390
    :cond_16
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_1

    .line 394
    .end local v12    # "name":Ljava/lang/String;
    :cond_17
    invoke-virtual {v14}, Lcom/google/gson/stream/JsonReader;->endObject()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 396
    const/4 v15, 0x1

    .line 420
    invoke-static {v14}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 421
    if-eqz v15, :cond_18

    .line 422
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 424
    :cond_18
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v13, v14

    .line 425
    .end local v14    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v13    # "reader":Lcom/google/gson/stream/JsonReader;
    goto/16 :goto_4

    .line 427
    :cond_19
    const-string v17, "^ LSS: DoSyncMyEvent: database locked!"

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 428
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 431
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1a
    const-string v17, "^ LSS: doSyncMyEvent() Sync aborted!"

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 432
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 420
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v17

    goto :goto_d

    .line 416
    :catch_7
    move-exception v5

    goto/16 :goto_c

    .line 413
    :catch_8
    move-exception v5

    goto/16 :goto_9

    .line 410
    :catch_9
    move-exception v5

    goto/16 :goto_8

    .line 407
    :catch_a
    move-exception v5

    goto/16 :goto_7

    .line 404
    :catch_b
    move-exception v5

    goto/16 :goto_6

    .line 401
    :catch_c
    move-exception v5

    goto/16 :goto_5

    .line 398
    :catch_d
    move-exception v5

    goto/16 :goto_3
.end method

.method private persistGameScore(J)V
    .locals 5
    .param p1, "score"    # J

    .prologue
    .line 540
    iget-object v1, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mUdmNetwork:Lcom/genie_connect/android/services/lss/UdmNetwork;

    invoke-virtual {v2}, Lcom/genie_connect/android/services/lss/UdmNetwork;->getNamespace()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    .line 542
    .local v0, "editor":Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    invoke-virtual {v0, p1, p2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setVisitorGameScore(J)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    .line 543
    invoke-virtual {v0}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->apply()V

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ LSS: playerEventScore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method private printOutJson(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 528
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 529
    .local v2, "scanner":Ljava/util/Scanner;
    const-string v0, ""

    .line 530
    .local v0, "content":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_0
    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "scanner":Ljava/util/Scanner;
    :goto_1
    return-void

    .line 534
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private static sanitiseEntityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 620
    const-string v1, "favouriteActivityStreamPosts"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    .end local p0    # "name":Ljava/lang/String;
    .local v0, "tmp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 621
    .end local v0    # "tmp":Ljava/lang/String;
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "visitorsurveys"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .restart local v0    # "tmp":Ljava/lang/String;
    const-string v1, "favouritepois"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    const-string p0, "favouritepoi"

    goto :goto_0

    .line 625
    :cond_2
    const-string v1, "favouriteexhibitors"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 626
    const-string p0, "favouriteExhibitors"

    goto :goto_0

    :cond_3
    move-object p0, v0

    .line 629
    goto :goto_0
.end method

.method private sendUserData()I
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->fireQueue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static setMessageRead(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Boolean;)Z
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "id"    # J
    .param p3, "isRead"    # Ljava/lang/Boolean;

    .prologue
    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "filter":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "isRead"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 638
    const-string v2, "messages"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 639
    const/4 v2, 0x1

    .line 642
    :goto_0
    return v2

    .line 641
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LSS: Error while setting message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 642
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public sync(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "entitiesToSync":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 553
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v1

    .line 554
    .local v1, "isLoggedIn":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "udm_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "fileName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 558
    const-string v3, "^ LSS: No logged in user - Skipping Fav Syncing"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 559
    const-string v3, "messages"

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    iget-object v3, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mUdmNetwork:Lcom/genie_connect/android/services/lss/UdmNetwork;

    const-string v4, "messages"

    invoke-virtual {v3, v4, v0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->downloadMyEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultUdm;

    move-result-object v2

    .line 574
    .local v2, "result":Lcom/genie_connect/android/net/container/NetworkResultUdm;
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->isSuccesful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 575
    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->performSyncEvent(Ljava/lang/String;)Z

    .line 580
    :goto_1
    invoke-static {v2}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->deleteTempFile(Lcom/genie_connect/android/net/container/NetworkResultUdm;)V

    .line 582
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "isLoggedIn":Z
    .end local v2    # "result":Lcom/genie_connect/android/net/container/NetworkResultUdm;
    :cond_0
    :goto_2
    return-void

    .line 565
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "isLoggedIn":Z
    :cond_1
    const/4 v2, 0x0

    .line 566
    .restart local v2    # "result":Lcom/genie_connect/android/net/container/NetworkResultUdm;
    goto :goto_2

    .line 569
    .end local v2    # "result":Lcom/genie_connect/android/net/container/NetworkResultUdm;
    :cond_2
    iget-object v3, p0, Lcom/genie_connect/android/services/lss/UdmSyncManager;->mUdmNetwork:Lcom/genie_connect/android/services/lss/UdmNetwork;

    invoke-static {p1}, Lcom/eventgenie/android/utils/help/SetUtils;->convertStringSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->downloadMyEvent([Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultUdm;

    move-result-object v2

    .restart local v2    # "result":Lcom/genie_connect/android/net/container/NetworkResultUdm;
    goto :goto_0

    .line 577
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ LSS: There was an error getting MyEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method
