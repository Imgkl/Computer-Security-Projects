.class public Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;
.super Ljava/lang/Object;
.source "LiveSyncServiceStaticMethods.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;,
        Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$FavPostsRequestParams;,
        Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;
    }
.end annotation


# static fields
.field public static final DELETE_POST_ENDPOINT:Ljava/lang/String; = "/secure/rest/activitystreamposts/%s"

.field public static final REMOVE_FAV_ENDPOINT:Ljava/lang/String; = "/secure/rest/activitystreamposts/%s/rpc/removefromfavourites"

.field public static final REPORT_ENDPOINT:Ljava/lang/String; = "/secure/rest/activitystreamposts/%s/rpc/report_abuse"

.field public static final SET_FAV_ENDPOINT:Ljava/lang/String; = "/secure/rest/activitystreamposts/%s/rpc/addtofavourites"

.field public static final SYNCMYEVENT_ENDPOINT:Ljava/lang/String; = "/secure/rest/visitors/rpc/syncmyevent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static deletePost(Ljava/lang/Long;J)Z
    .locals 11
    .param p0, "id"    # Ljava/lang/Long;
    .param p1, "namespace"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v1

    .line 179
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 180
    .local v0, "client":Lcom/squareup/okhttp/OkHttpClient;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/secure/rest/activitystreamposts/%s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v5}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v5, v4}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/Request$Builder;->delete()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    const-string v6, "EGNAMESPACE"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    const-string v6, "AUTHORIZATION"

    invoke-static {v1}, Lcom/genie_connect/android/net/providers/NetworkBase;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    .line 192
    .local v2, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v3

    .line 193
    .local v3, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->isSuccessful()Z

    move-result v5

    return v5
.end method

.method public static doActivityStreamPostSync(Landroid/content/Context;Lcom/genie_connect/android/net/providers/NetworkDownloader;IIZLjava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lorg/json/JSONArray;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloader"    # Lcom/genie_connect/android/net/providers/NetworkDownloader;
    .param p2, "limit"    # I
    .param p3, "offset"    # I
    .param p4, "deleteOthers"    # Z
    .param p5, "namespace"    # Ljava/lang/Long;
    .param p6, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p7, "entityId"    # J

    .prologue
    .line 206
    const-string v0, "associated%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p6}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "query":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 207
    invoke-static/range {v0 .. v6}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->doActivityStreamPostSync(Landroid/content/Context;Lcom/genie_connect/android/net/providers/NetworkDownloader;IIZLjava/lang/Long;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private static doActivityStreamPostSync(Landroid/content/Context;Lcom/genie_connect/android/net/providers/NetworkDownloader;IIZLjava/lang/Long;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloader"    # Lcom/genie_connect/android/net/providers/NetworkDownloader;
    .param p2, "limit"    # I
    .param p3, "offset"    # I
    .param p4, "deleteOthers"    # Z
    .param p5, "namespace"    # Ljava/lang/Long;
    .param p6, "query"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v7, 0x0

    .line 239
    .local v7, "activityStreamPosts":Lorg/json/JSONArray;
    const-string v1, "^ LSS: starting doActivityStreamPostSync... [Limit %s] [Offset %s] [Delete current %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 243
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p1

    move v4, p2

    move v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZZIILjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v8

    .line 247
    .local v8, "activityStreamPostsNetworkResult":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonArray()Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/platform/json/GenieJsonArray;

    invoke-virtual {v1}, Lcom/genie_connect/android/platform/json/GenieJsonArray;->getRawArray()Lorg/json/JSONArray;

    move-result-object v3

    .line 250
    .end local v7    # "activityStreamPosts":Lorg/json/JSONArray;
    .local v3, "activityStreamPosts":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 251
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB(I)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 253
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->isDbLockedByOtherThreads(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 256
    :try_start_0
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v1, p0

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->persistJsonArray(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lorg/json/JSONArray;ZLjava/lang/Long;)V

    .line 258
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 275
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v3

    .line 259
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v9

    .line 260
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ LSS: doActivityStreamPostSync() Transaction Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 266
    :cond_0
    const-string v1, "^ LSS: doActivityStreamPostSync(): database locked!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const-string v1, "^ LSS: doActivityStreamPostSync() Transaction Error: JSONArray invalid"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v3    # "activityStreamPosts":Lorg/json/JSONArray;
    .restart local v7    # "activityStreamPosts":Lorg/json/JSONArray;
    :cond_2
    const-string v1, "^ LSS: doActivityStreamPostSync() Transaction Error: NetResult invalid"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ LSS: doActivityStreamPostSync() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move-object v3, v7

    .end local v7    # "activityStreamPosts":Lorg/json/JSONArray;
    .restart local v3    # "activityStreamPosts":Lorg/json/JSONArray;
    goto :goto_0
.end method

.method public static doActivityStreamPostSync(Landroid/content/Context;Lcom/genie_connect/android/net/providers/NetworkDownloader;IIZLjava/lang/Long;Z)Lorg/json/JSONArray;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloader"    # Lcom/genie_connect/android/net/providers/NetworkDownloader;
    .param p2, "limit"    # I
    .param p3, "offset"    # I
    .param p4, "deleteOthers"    # Z
    .param p5, "namespace"    # Ljava/lang/Long;
    .param p6, "hideEntityRelatedPosts"    # Z

    .prologue
    .line 219
    const/4 v6, 0x0

    .line 221
    .local v6, "query":Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 222
    const-string v6, "hasAssociatedData=false"

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 225
    invoke-static/range {v0 .. v6}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->doActivityStreamPostSync(Landroid/content/Context;Lcom/genie_connect/android/net/providers/NetworkDownloader;IIZLjava/lang/Long;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static parsePostsFromJSON(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "result"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/model/ActivityStreamPost;>;"
    if-eqz p0, :cond_0

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 283
    :try_start_0
    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v3}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 291
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static persistActivityStreamPosts(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/Long;)V
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "deleteOthers"    # Z
    .param p4, "namespace"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "listEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/model/ActivityStreamPost;>;"
    const/4 v0, 0x0

    .line 299
    .local v0, "count":I
    new-instance v4, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-direct {v4, p0}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 301
    .local v4, "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    if-eqz p3, :cond_0

    .line 302
    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v5}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5, v6}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v1

    .line 304
    .local v1, "e":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    invoke-virtual {v1, v4}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J

    .line 306
    .end local v1    # "e":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 311
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    invoke-virtual {v5}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/android/platform/json/GenieJsonObject;

    invoke-virtual {v5}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->getRawObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 312
    .local v2, "entityJson":Lorg/json/JSONObject;
    const-string v6, "isFavourite"

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    invoke-virtual {v5}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getIsFavourite()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    const/4 v6, 0x0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v4, v6, v8, v9}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    .end local v2    # "entityJson":Lorg/json/JSONObject;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ LSS: persistEGEntities() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " persisted."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public static persistJsonArray(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lorg/json/JSONArray;ZLjava/lang/Long;)V
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entityName"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "array"    # Lorg/json/JSONArray;
    .param p4, "deleteOthers"    # Z
    .param p5, "namespace"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 326
    .local v3, "length":I
    new-instance v4, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-direct {v4, p0}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 329
    .local v4, "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    const/4 v0, 0x0

    .line 331
    .local v0, "count":I
    if-eqz p4, :cond_0

    .line 332
    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v5}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-virtual {v5, p2}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v1

    .line 333
    .local v1, "e":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    invoke-virtual {v1, v4}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J

    .line 336
    .end local v1    # "e":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 337
    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v5}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v1

    .line 340
    .restart local v1    # "e":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    const/4 v5, 0x0

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "e":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ LSS: persistJsonArray() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " persisted."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public static reportPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 13
    .param p0, "focus"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "namespace"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v4

    .line 384
    .local v4, "mContext":Landroid/content/Context;
    const-string v8, "application/json; charset=utf-8"

    invoke-static {v8}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 385
    .local v0, "JSON":Lcom/squareup/okhttp/MediaType;
    const-string/jumbo v8, "{\"focus\":\"%s\", \"content\":\"%s\", \"typeother\":\"%s\"}"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "json":Ljava/lang/String;
    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 388
    .local v2, "client":Lcom/squareup/okhttp/OkHttpClient;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/secure/rest/activitystreamposts/%s/rpc/report_abuse"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, "url":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 392
    .local v1, "body":Lcom/squareup/okhttp/RequestBody;
    new-instance v8, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v8}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v8, v7}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v8

    const-string v9, "EGNAMESPACE"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v8

    const-string v9, "AUTHORIZATION"

    invoke-static {v4}, Lcom/genie_connect/android/net/providers/NetworkBase;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v5

    .line 400
    .local v5, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {v2, v5}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v6

    .line 401
    .local v6, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->isSuccessful()Z

    move-result v8

    return v8
.end method

.method public static setFavourite(ZJJ)Z
    .locals 11
    .param p0, "newDesiredState"    # Z
    .param p1, "id"    # J
    .param p3, "namespace"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 350
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v3

    .line 351
    .local v3, "context":Landroid/content/Context;
    const-string v7, "application/json; charset=utf-8"

    invoke-static {v7}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 353
    .local v0, "JSON":Lcom/squareup/okhttp/MediaType;
    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 355
    .local v2, "client":Lcom/squareup/okhttp/OkHttpClient;
    if-eqz p0, :cond_0

    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/secure/rest/activitystreamposts/%s/rpc/addtofavourites"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "url":Ljava/lang/String;
    :goto_0
    const-string v7, ""

    invoke-static {v0, v7}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    .line 367
    .local v1, "body":Lcom/squareup/okhttp/RequestBody;
    new-instance v7, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v7}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v7, v6}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v7

    const-string v8, "EGNAMESPACE"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v7

    const-string v8, "AUTHORIZATION"

    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkBase;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v4

    .line 375
    .local v4, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {v2, v4}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v5

    .line 376
    .local v5, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v5}, Lcom/squareup/okhttp/Response;->isSuccessful()Z

    move-result v7

    return v7

    .line 361
    .end local v1    # "body":Lcom/squareup/okhttp/RequestBody;
    .end local v4    # "request":Lcom/squareup/okhttp/Request;
    .end local v5    # "response":Lcom/squareup/okhttp/Response;
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/secure/rest/activitystreamposts/%s/rpc/removefromfavourites"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "url":Ljava/lang/String;
    goto :goto_0
.end method
