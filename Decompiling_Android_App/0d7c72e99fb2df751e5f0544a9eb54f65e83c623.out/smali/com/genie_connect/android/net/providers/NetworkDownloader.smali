.class public Lcom/genie_connect/android/net/providers/NetworkDownloader;
.super Lcom/genie_connect/android/net/providers/NetworkBase;
.source "NetworkDownloader.java"


# static fields
.field public static final REQUEST_CMS_ALL_APPS:I = 0x0

.field public static final REQUEST_CMS_ARCHIVED_APPS:I = 0x2

.field public static final REQUEST_CMS_LIVE_APPS:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 83
    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # J

    .prologue
    .line 87
    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authString"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authString"    # Ljava/lang/String;
    .param p3, "namespace"    # J

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 96
    return-void
.end method

.method private getLiveData(Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 358
    new-instance v5, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v8, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v5, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 359
    .local v5, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getOkUrlFactory()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    move-result-object v8

    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 361
    .local v0, "con":Ljava/net/HttpURLConnection;
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v8

    invoke-virtual {v8, v0, v10}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 363
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ NET: getLiveData() - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 364
    const/4 v4, -0x1

    .line 366
    .local v4, "responseCode":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 368
    .local v6, "startTime":J
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 369
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 371
    invoke-static {v0, v4}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Ljava/net/HttpURLConnection;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 372
    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getResponseBodyAsString(Ljava/net/URLConnection;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 375
    .local v3, "res":Ljava/lang/String;
    :try_start_1
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/genie_connect/android/platform/json/GenieJsonArray;->fromRaw(Lorg/json/JSONArray;)Lcom/genie_connect/android/platform/json/GenieJsonArray;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setJsonArray(Lcom/genie_connect/common/platform/json/IJsonArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 380
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNextRangeStart(Ljava/net/HttpURLConnection;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setNextRangeStart(I)V

    .line 381
    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRangeMax(Ljava/net/HttpURLConnection;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setRangeMax(J)V

    .line 382
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v4, v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 384
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ NET: HTTP code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getNextRangeStart()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getRangeMax()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 401
    .end local v3    # "res":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setTimeElapsed(J)V

    .line 402
    return-object v5

    .line 376
    .restart local v3    # "res":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setJsonObject(Lcom/genie_connect/common/platform/json/IJsonObject;)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 391
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "res":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 392
    .local v2, "e1":Ljava/net/ConnectException;
    sget-object v8, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v12, v4, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 393
    invoke-virtual {v2}, Ljava/net/ConnectException;->printStackTrace()V

    goto :goto_1

    .line 387
    .end local v2    # "e1":Ljava/net/ConnectException;
    :cond_0
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ NET: HTTP code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 388
    const/4 v8, 0x0

    sget-object v9, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v8, v4, v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 394
    :catch_2
    move-exception v1

    .line 395
    .restart local v1    # "e":Lorg/json/JSONException;
    sget-object v8, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v12, v4, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 396
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 397
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 398
    .local v1, "e":Ljava/io/IOException;
    sget-object v8, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v12, v4, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 399
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public doHeadRequestForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 18
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/secure/rest/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, "url":Ljava/lang/String;
    new-instance v9, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v13, Lcom/genie_connect/common/net/utils/HttpAction;->HEAD:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v9, v13}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 102
    .local v9, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    const/4 v8, -0x1

    .line 104
    .local v8, "responseCode":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ NET: doHeadRequestForEntity() - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 108
    .local v10, "startTime":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getOkUrlFactory()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    move-result-object v13

    invoke-static {v12}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 109
    .local v4, "httpUrlConn":Ljava/net/HttpURLConnection;
    const-string v13, "HEAD"

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 110
    const/16 v13, 0x1388

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 111
    const/16 v13, 0x1388

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v13

    const/4 v14, 0x0

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v13, v4, v14, v0, v1}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;J)V

    .line 114
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 115
    invoke-static {v4, v8}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Ljava/net/HttpURLConnection;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 116
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0x12c0

    invoke-direct {v5, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 117
    .local v5, "in":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v7, "responseBuffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 121
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 148
    .end local v4    # "httpUrlConn":Ljava/net/HttpURLConnection;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "responseBuffer":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 149
    .local v3, "e1":Ljava/net/ConnectException;
    const/4 v13, 0x0

    sget-object v14, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v9, v13, v8, v14}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 150
    invoke-virtual {v3}, Ljava/net/ConnectException;->printStackTrace()V

    .line 155
    .end local v3    # "e1":Ljava/net/ConnectException;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v9, v14, v15}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setTimeElapsed(J)V

    .line 156
    return-object v9

    .line 124
    .restart local v4    # "httpUrlConn":Ljava/net/HttpURLConnection;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "responseBuffer":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 126
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    if-lez v13, :cond_1

    .line 128
    :try_start_2
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setJsonObject(Lcom/genie_connect/common/platform/json/IJsonObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    :cond_1
    :goto_2
    const/4 v13, -0x1

    :try_start_3
    invoke-virtual {v9, v13}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setNextRangeStart(I)V

    .line 138
    const-wide/16 v14, -0x1

    invoke-virtual {v9, v14, v15}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setRangeMax(J)V

    .line 139
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v8, v14}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 140
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ NET: HTTP code: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getNextRangeStart()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getRangeMax()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 151
    .end local v4    # "httpUrlConn":Ljava/net/HttpURLConnection;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "responseBuffer":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    .line 152
    .local v2, "e":Ljava/io/IOException;
    const/4 v13, 0x0

    sget-object v14, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v9, v13, v8, v14}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 153
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "httpUrlConn":Ljava/net/HttpURLConnection;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "responseBuffer":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v3

    .line 131
    .local v3, "e1":Lorg/json/JSONException;
    :try_start_4
    new-instance v13, Lorg/json/JSONArray;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/genie_connect/android/platform/json/GenieJsonArray;->fromRaw(Lorg/json/JSONArray;)Lcom/genie_connect/android/platform/json/GenieJsonArray;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setJsonArray(Lcom/genie_connect/common/platform/json/IJsonArray;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 132
    :catch_3
    move-exception v13

    goto :goto_2

    .line 144
    .end local v3    # "e1":Lorg/json/JSONException;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "responseBuffer":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ NET: HTTP code: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 145
    const/4 v13, 0x0

    sget-object v14, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v9, v13, v8, v14}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method public getActivityStreamComments(Ljava/lang/Long;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 4
    .param p1, "postId"    # Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    .line 239
    const-string v1, "activityStreamPost=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "query":Ljava/lang/String;
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0, v1, v3, v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    return-object v1
.end method

.method public getApps(I)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ NET: Getting apps... Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 186
    const/4 v6, 0x0

    .line 189
    .local v6, "additionalParams":Ljava/lang/String;
    :goto_0
    const-class v1, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getLiveDataArray(Ljava/lang/Class;Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v0

    return-object v0

    .line 177
    .end local v6    # "additionalParams":Ljava/lang/String;
    :pswitch_0
    const/4 v6, 0x0

    .line 178
    .restart local v6    # "additionalParams":Ljava/lang/String;
    goto :goto_0

    .line 180
    .end local v6    # "additionalParams":Ljava/lang/String;
    :pswitch_1
    const-string v6, "isArchived=false"

    .line 181
    .restart local v6    # "additionalParams":Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v6    # "additionalParams":Ljava/lang/String;
    :pswitch_2
    const-string v6, "isArchived=true"

    .line 184
    .restart local v6    # "additionalParams":Ljava/lang/String;
    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getConfig(JLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "namespace"    # J
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/secure/rest/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "configs/1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "url":Ljava/lang/String;
    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .line 194
    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getHttpBodyAsString(Ljava/lang/String;ZJLjava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultStringContent;

    move-result-object v7

    .line 195
    .local v7, "tmp":Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    const-string v1, "^ NET: Getting app config ... URL: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->getResponseCode()I

    move-result v0

    .line 198
    .local v0, "responseCode":I
    sget-object v1, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-static {v1, v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/genie_connect/common/net/utils/HttpAction;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "^ NET: Got app config."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 4
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "id"    # J

    .prologue
    .line 207
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->contructEntityUrl(Lcom/genie_connect/common/db/entityfactory/GenieEntity;JZ)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ NET: getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getLiveData(Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    return-object v1
.end method

.method public getEntityAsGson(Ljava/lang/Class;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 19
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "id"    # J
    .param p5, "dataVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/genie_connect/android/net/container/gson/BaseGsonModel;",
            ">;",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/genie_connect/common/net/container/NetworkResultGsonContent;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/genie_connect/android/net/container/gson/BaseGsonModel;>;"
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->contructEntityUrl(Lcom/genie_connect/common/db/entityfactory/GenieEntity;JZ)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ NET: getEntityAsGson() - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 217
    .local v16, "startTime":J
    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v11

    .line 218
    .local v11, "gson":Lcom/google/gson/Gson;
    new-instance v15, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    sget-object v5, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v15, v5}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 219
    .local v15, "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNamespace()J

    move-result-wide v8

    move-object/from16 v5, p0

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getHttpBodyAsString(Ljava/lang/String;ZJLjava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultStringContent;

    move-result-object v13

    .line 220
    .local v13, "resTmp":Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->getResponseCode()I

    move-result v14

    .line 223
    .local v14, "responseCode":I
    :try_start_0
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->isSuccesful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->getContent()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;

    .line 225
    .local v12, "o":Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v12, v5}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setPayload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v15, v5, v14, v7}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v12    # "o":Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-virtual {v15, v8, v9}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setTimeElapsed(J)V

    .line 235
    return-object v15

    .line 228
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->getResponseCode()I

    move-result v7

    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->getInternalErrorCode()Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-result-object v8

    invoke-virtual {v15, v5, v7, v8}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v4

    .line 231
    .local v4, "e":Lcom/google/gson/JsonSyntaxException;
    const/4 v5, 0x0

    sget-object v7, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v15, v5, v14, v7}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 232
    invoke-virtual {v4}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 6
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "full"    # Z

    .prologue
    const/4 v4, -0x1

    .line 249
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZZII)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method public getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 7
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "full"    # Z
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 245
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v4

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZZIILjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method public getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZZII)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 7
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "full"    # Z
    .param p3, "sortByTimestamp"    # Z
    .param p4, "limit"    # I
    .param p5, "offset"    # I

    .prologue
    .line 255
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZZIILjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method public getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZZIILjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 4
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "full"    # Z
    .param p3, "sortByTimestamp"    # Z
    .param p4, "limit"    # I
    .param p5, "offset"    # I
    .param p6, "query"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/secure/rest/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?liveStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_0

    const-string v1, "&sort(-timestamp)"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v1, "&_full"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez p5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&_offset="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez p4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&_limit="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ NET: getting EntityCollection2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ NET: getting EntityCollection2 url - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getLiveData(Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    return-object v1

    .line 261
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    :cond_1
    const-string v1, ""

    goto/16 :goto_1

    :cond_2
    const-string v1, ""

    goto/16 :goto_2

    :cond_3
    const-string v1, ""

    goto :goto_3

    :cond_4
    const-string v1, ""

    goto :goto_4
.end method

.method public getHttpBodyAsString(Ljava/lang/String;Z)Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "addGenieHeaders"    # Z

    .prologue
    .line 276
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getHttpBodyAsString(Ljava/lang/String;ZJLjava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultStringContent;

    move-result-object v0

    return-object v0
.end method

.method public getHttpBodyAsString(Ljava/lang/String;ZJLjava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defaultHeaders"    # Z
    .param p3, "namespace"    # J
    .param p5, "version"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v12, "^ NET: getHttpBodyAsString(%s , %s , %s , %s )"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    aput-object p5, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 283
    new-instance v8, Lcom/genie_connect/android/net/container/NetworkResultStringContent;

    sget-object v12, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v8, v12}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 284
    .local v8, "result":Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    const/4 v7, -0x1

    .line 285
    .local v7, "responseCode":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 288
    .local v10, "startTime":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getOkUrlFactory()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 291
    .local v4, "conn":Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_0

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v4, v13}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 297
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->getHeaderList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 298
    const-string v12, "^ NET: request Headers:"

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->getHeaderList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 300
    .local v9, "stringStringPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ NET: Header: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 315
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "stringStringPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 316
    .local v5, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ NET: Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 317
    const/4 v12, 0x0

    sget-object v13, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v8, v12, v7, v13}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 322
    .end local v5    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-virtual {v8, v12, v13}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setTimeElapsed(J)V

    .line 323
    return-object v8

    .line 294
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v12

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v12, v4, v0, v1, v2}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 318
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v5

    .line 319
    .local v5, "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ NET: Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 320
    const/4 v12, 0x0

    sget-object v13, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v8, v12, v7, v13}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_2

    .line 304
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    :cond_1
    :try_start_2
    const-string v12, "^ NET: URL:"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 306
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 308
    invoke-static {v4, v7}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Ljava/net/HttpURLConnection;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 309
    const/4 v12, 0x1

    sget-object v13, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v8, v12, v7, v13}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 310
    invoke-static {v4}, Lcom/genie_connect/android/net/providers/NetworkBase;->getResponseBodyAsString(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setContent(Ljava/lang/String;)V

    goto :goto_2

    .line 312
    :cond_2
    const/4 v12, 0x0

    sget-object v13, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v8, v12, v7, v13}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 313
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setContent(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public getLatestDataVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/secure/rest/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataversions?liveStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&timestamp=%3E"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&sort(timestamp)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "url":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ NET: Getting dataversions since "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 337
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0, v5, v7}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getHttpBodyAsString(Ljava/lang/String;Z)Lcom/genie_connect/android/net/container/NetworkResultStringContent;

    move-result-object v3

    .line 338
    .local v3, "res":Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->getResponseCode()I

    move-result v4

    .line 340
    .local v4, "responseCode":I
    sget-object v7, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-static {v7, v4}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/genie_connect/common/net/utils/HttpAction;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 343
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 344
    .local v2, "o":Lorg/json/JSONObject;
    const-string v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "version":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ NET: Got dataversion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "res":Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    .end local v4    # "responseCode":I
    .end local v6    # "version":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 354
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getLiveDataArray(Ljava/lang/Class;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 7
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "full"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/genie_connect/android/net/container/gson/BaseGsonModel;",
            ">;",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Z)",
            "Lcom/genie_connect/common/net/container/NetworkResultGsonContent;"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/genie_connect/android/net/container/gson/BaseGsonModel;>;"
    const/4 v4, 0x0

    .line 406
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getLiveDataArray(Ljava/lang/Class;Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v0

    return-object v0
.end method

.method public getLiveDataArray(Ljava/lang/Class;Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 33
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "full"    # Z
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "modifiedSince"    # Ljava/lang/String;
    .param p6, "additionalParams"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/genie_connect/android/net/container/gson/BaseGsonModel;",
            ">;",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/genie_connect/common/net/container/NetworkResultGsonContent;"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/genie_connect/android/net/container/gson/BaseGsonModel;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 412
    .local v28, "time1":J
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v14

    .line 414
    .local v14, "entityName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: Getting Live Data Array of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for app ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNamespace()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 416
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getOffsetLimit(Z)I

    move-result v18

    .line 417
    .local v18, "offsetLimit":I
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v15

    .line 418
    .local v15, "gson":Lcom/google/gson/Gson;
    new-instance v23, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    sget-object v4, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 420
    .local v23, "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    const/16 v22, -0x1

    .line 421
    .local v22, "responseCode":I
    const/16 v25, 0x1

    .line 428
    .local v25, "runOk":Z
    const/16 v17, 0x0

    .line 431
    .local v17, "nextOffset":I
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v24, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 435
    .local v26, "startTime":J
    :goto_0
    if-eqz v25, :cond_1

    if-ltz v17, :cond_1

    .line 436
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getUrlParams(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 438
    .local v19, "param":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/secure/rest/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 440
    .local v32, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v20

    .line 441
    .local v20, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V

    .line 444
    :try_start_0
    invoke-interface/range {v20 .. v20}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v21

    .line 445
    .local v21, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface/range {v21 .. v21}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v22

    .line 447
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNextRangeStart(Lcom/github/ignition/support/http/IgnitedHttpResponse;)I

    move-result v17

    .line 449
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRangeMax(Lcom/github/ignition/support/http/IgnitedHttpResponse;)I

    move-result v16

    .line 451
    .local v16, "maxOffet":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: HTTP code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 453
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static/range {v21 .. v21}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getResponseBody(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static/range {p1 .. p1}, Lcom/eventgenie/android/utils/help/GsonHelper;->getListTypeForClass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    invoke-virtual/range {v23 .. v24}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setPayload(Ljava/lang/Object;)V

    .line 458
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNextRangeStart(Lcom/github/ignition/support/http/IgnitedHttpResponse;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setNextRangeStart(I)V

    .line 459
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRangeMax(Lcom/github/ignition/support/http/IgnitedHttpResponse;)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setRangeMax(J)V

    .line 460
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 469
    .end local v16    # "maxOffet":I
    .end local v21    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    :catch_0
    move-exception v11

    .line 470
    .local v11, "e1":Ljava/net/ConnectException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: getLiveDataArray() for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ConnectException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: The URL was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v11}, Ljava/net/ConnectException;->printStackTrace()V

    .line 473
    const/16 v25, 0x0

    .line 474
    sget-object v4, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto/16 :goto_0

    .line 462
    .end local v11    # "e1":Ljava/net/ConnectException;
    .restart local v21    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: HTTP code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: The URL was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 465
    const/16 v25, 0x0

    .line 466
    sget-object v4, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 475
    .end local v21    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    :catch_1
    move-exception v12

    .line 476
    .local v12, "e3":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: getLiveDataArray() for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: The URL was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 479
    const/16 v25, 0x0

    .line 480
    sget-object v4, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto/16 :goto_0

    .line 481
    .end local v12    # "e3":Ljava/io/IOException;
    :catch_2
    move-exception v13

    .line 482
    .local v13, "e4":Lcom/google/gson/JsonSyntaxException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: getLiveDataArray() for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' JsonSyntaxException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: The URL was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v13}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 485
    const/16 v25, 0x0

    .line 486
    const/4 v4, 0x0

    sget-object v5, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1, v5}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto/16 :goto_0

    .line 490
    .end local v13    # "e4":Lcom/google/gson/JsonSyntaxException;
    .end local v19    # "param":Ljava/lang/String;
    .end local v20    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v32    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 492
    .local v30, "time2":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: getLiveDataArray() - \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' Time taken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v30, v28

    invoke-static {v6, v7}, Lcom/genie_connect/android/utils/string/StringUtils;->getHumanReadableTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v26

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setTimeElapsed(J)V

    .line 494
    return-object v23
.end method

.method public getRecommendedVisitors()Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 3

    .prologue
    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/secure/rest/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "visitors/rpc/recommend?_full"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "url":Ljava/lang/String;
    const-string v1, "^ NET: recommendedvisitors..."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 500
    invoke-direct {p0, v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getLiveData(Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    return-object v1
.end method

.method public getUserMugshotUpload(J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 3
    .param p1, "visitorId"    # J

    .prologue
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/secure/rest/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "visitors/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/rpc/getmugshotuploadurl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ NET: Getting image upload path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getLiveData(Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    return-object v1
.end method

.method public getUserProfile()Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 3

    .prologue
    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/secure/rest/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "visitors/rpc/whoami"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "url":Ljava/lang/String;
    const-string v1, "^ NET: whoami?..."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 512
    invoke-direct {p0, v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getLiveData(Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    return-object v1
.end method

.method public getVisitors(Ljava/lang/String;I)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 3
    .param p1, "searchParams"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/secure/rest/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "visitors/rpc/search?_full&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "url":Ljava/lang/String;
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&_limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getOffsetLimit(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string v1, "^ NET: searching visitors..."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 526
    invoke-direct {p0, v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getLiveData(Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    return-object v1
.end method
