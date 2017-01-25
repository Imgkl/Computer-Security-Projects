.class public Lcom/genie_connect/android/net/providers/NetworkSender;
.super Lcom/genie_connect/android/net/providers/NetworkBase;
.source "NetworkSender.java"


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
    .line 98
    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkSender;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # J

    .prologue
    .line 102
    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkSender;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authString"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authString"    # Ljava/lang/String;
    .param p3, "namespace"    # J

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 111
    return-void
.end method

.method private static convertJsonObjectToEntity(Lorg/json/JSONObject;)Lorg/apache/http/entity/StringEntity;
    .locals 4
    .param p0, "payload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 539
    .local v1, "utf8String":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .local v0, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 541
    const-string v2, "application/json;charset=utf-8"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 542
    return-object v0
.end method

.method private static getUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, "namevaluepairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    return-object v1

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/genie_connect/android/net/NetworkHelper;->getDummyPostEntity()Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v1

    goto :goto_0
.end method

.method private getUrlForFavouriting(Ljava/lang/String;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Ljava/lang/String;
    .locals 4
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "action"    # Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    .prologue
    .line 116
    const-string v1, "favouritesession"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    sget-object v1, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->BOOKMARK:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    if-ne p4, v1, :cond_0

    const-string v0, "addtofavourites"

    .line 120
    .local v0, "method":Ljava/lang/String;
    :goto_0
    const-string p1, "sessions"

    .line 131
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkSender;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/secure/rest/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/rpc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 117
    .end local v0    # "method":Ljava/lang/String;
    :cond_0
    const-string v0, "removefromfavourites"

    goto :goto_0

    .line 121
    :cond_1
    const-string v1, "favouritesubsession"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    sget-object v1, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->BOOKMARK:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    if-ne p4, v1, :cond_2

    const-string v0, "addtofavourites"

    .line 124
    .restart local v0    # "method":Ljava/lang/String;
    :goto_2
    const-string p1, "subsessions"

    goto :goto_1

    .line 123
    .end local v0    # "method":Ljava/lang/String;
    :cond_2
    const-string v0, "removefromfavourites"

    goto :goto_2

    .line 125
    :cond_3
    const-string v1, "sessions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "subsessions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 126
    :cond_4
    sget-object v1, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    if-ne p4, v1, :cond_5

    const-string v0, "addtoagenda"

    .restart local v0    # "method":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v0    # "method":Ljava/lang/String;
    :cond_5
    const-string v0, "removefromagenda"

    goto :goto_3

    .line 128
    :cond_6
    sget-object v1, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    if-ne p4, v1, :cond_7

    const-string v0, "addtofavourites"

    .restart local v0    # "method":Ljava/lang/String;
    :goto_4
    goto :goto_1

    .end local v0    # "method":Ljava/lang/String;
    :cond_7
    const-string v0, "removefromfavourites"

    goto :goto_4
.end method

.method private populateHeaderAndAddToFavQueue(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V
    .locals 4
    .param p1, "res"    # Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ NET: request queued: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getNamespace()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->populateHeaderInfo(Landroid/content/Context;J)V

    .line 246
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->updateQueue(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V

    .line 247
    return-void
.end method

.method private postUpdateForGson(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/genie_connect/android/net/container/gson/BaseGsonModel;",
            ">;)",
            "Lcom/genie_connect/common/net/container/NetworkResultGsonContent;"
        }
    .end annotation

    .prologue
    .line 387
    .local p3, "classToInflate":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/genie_connect/android/net/container/gson/BaseGsonModel;>;"
    new-instance v10, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    sget-object v11, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v10, v11}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 388
    .local v10, "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/genie_connect/android/net/providers/NetworkSender;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lcom/github/ignition/support/http/IgnitedHttp;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v7

    .line 389
    .local v7, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 391
    .local v4, "gson":Lcom/google/gson/Gson;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v11, v7, v14}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V

    .line 393
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ NET: postUpdateForGson() - "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 395
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getDebugLogStatus()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 397
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ NET: postUpdateForGson() Payload: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 402
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 403
    .local v5, "reader":Ljava/io/InputStreamReader;
    const/4 v9, -0x1

    .line 405
    .local v9, "responseCode":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 407
    .local v12, "startTime":J
    :try_start_1
    invoke-interface {v7}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v8

    .line 408
    .local v8, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v8}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v9

    .line 410
    invoke-static {v7, v9}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 411
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-static {v8}, Lcom/genie_connect/android/net/providers/NetworkSender;->getResponseBody(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/io/InputStream;

    move-result-object v11

    const-string v14, "UTF-8"

    invoke-direct {v6, v11, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .local v6, "reader":Ljava/io/InputStreamReader;
    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v4, v6, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setPayload(Ljava/lang/Object;)V

    .line 413
    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v9, v14}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v6

    .line 427
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 430
    .end local v8    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    invoke-virtual {v10, v14, v15}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setTimeElapsed(J)V

    .line 431
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isSaveNetworkDataToSd()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 432
    new-instance v11, Lcom/genie_connect/android/net/providers/ResponsePersister;

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v11, v14}, Lcom/genie_connect/android/net/providers/ResponsePersister;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v13, v0, v10}, Lcom/genie_connect/android/net/providers/ResponsePersister;->saveResponse(JLjava/lang/String;Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)V

    .line 434
    :cond_1
    return-object v10

    .line 415
    .restart local v8    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    :cond_2
    const/4 v11, 0x0

    :try_start_3
    sget-object v14, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v10, v11, v9, v14}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 417
    .end local v8    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    :catch_0
    move-exception v3

    .line 418
    .local v3, "e1":Ljava/net/ConnectException;
    :goto_3
    const/4 v11, 0x0

    :try_start_4
    sget-object v14, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v10, v11, v9, v14}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 419
    invoke-virtual {v3}, Ljava/net/ConnectException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 427
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    .line 420
    .end local v3    # "e1":Ljava/net/ConnectException;
    :catch_1
    move-exception v2

    .line 421
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    const/4 v11, 0x0

    :try_start_5
    sget-object v14, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v10, v11, v9, v14}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 422
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 427
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    .line 423
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 424
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    :goto_5
    const/4 v11, 0x0

    :try_start_6
    sget-object v14, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v10, v11, v9, v14}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 425
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 427
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    :catchall_0
    move-exception v11

    :goto_6
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v11

    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 423
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 420
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v2

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 417
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 399
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v9    # "responseCode":I
    .end local v12    # "startTime":J
    :catch_6
    move-exception v11

    goto/16 :goto_0

    .line 398
    :catch_7
    move-exception v11

    goto/16 :goto_0
.end method

.method private postUpdateForJson(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 453
    new-instance v5, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v8, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v5, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 454
    .local v5, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    iget-object v8, p0, Lcom/genie_connect/android/net/providers/NetworkSender;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v8, p1, p2}, Lcom/github/ignition/support/http/IgnitedHttp;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v2

    .line 456
    .local v2, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v8

    invoke-virtual {v8, v2, v9}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V

    .line 458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ NET: postUpdateForJson() - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 460
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getDebugLogStatus()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 462
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ NET: postUpdateForJson() Payload: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 467
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 469
    .local v6, "startTime":J
    :try_start_1
    invoke-interface {v2}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v3

    .line 470
    .local v3, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v3}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v4

    .line 472
    .local v4, "responseCode":I
    invoke-static {v2, v4}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v8

    if-eqz v8, :cond_1

    .line 474
    :try_start_2
    new-instance v8, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->getResponseBodyAsString(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/genie_connect/android/platform/json/GenieJsonArray;->fromRaw(Lorg/json/JSONArray;)Lcom/genie_connect/android/platform/json/GenieJsonArray;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setJsonArray(Lcom/genie_connect/common/platform/json/IJsonArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 479
    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v5, v8, v4, v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 495
    .end local v3    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v4    # "responseCode":I
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setTimeElapsed(J)V

    .line 496
    return-object v5

    .line 475
    .restart local v3    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v4    # "responseCode":I
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->getResponseBodyAsString(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setJsonObject(Lcom/genie_connect/common/platform/json/IJsonObject;)V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 484
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v4    # "responseCode":I
    :catch_1
    move-exception v1

    .line 485
    .local v1, "e1":Ljava/net/ConnectException;
    sget-object v8, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v10, v11, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 486
    invoke-virtual {v1}, Ljava/net/ConnectException;->printStackTrace()V

    goto :goto_2

    .line 481
    .end local v1    # "e1":Ljava/net/ConnectException;
    .restart local v3    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v4    # "responseCode":I
    :cond_1
    const/4 v8, 0x0

    :try_start_5
    sget-object v9, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v8, v4, v9}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 487
    .end local v3    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v4    # "responseCode":I
    :catch_2
    move-exception v0

    .line 488
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v8, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v10, v11, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 489
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 490
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 491
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v10, v11, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 464
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "startTime":J
    :catch_4
    move-exception v8

    goto :goto_0

    .line 463
    :catch_5
    move-exception v8

    goto :goto_0
.end method

.method private static sendFileMultipart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 27
    .param p0, "targetURL"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 567
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ NET: Posting Multipart to : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 569
    const-string v4, "=================================="

    .line 570
    .local v4, "BOUNDARY":Ljava/lang/String;
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v5, v0, [B

    .line 571
    .local v5, "buf":[B
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v17, "requestHeader":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v16, "requestFooter":Ljava/lang/StringBuilder;
    new-instance v19, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v22, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 574
    .local v19, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    const/4 v6, 0x0

    .line 575
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v18, -0x1

    .line 577
    .local v18, "responseCode":I
    const/4 v13, 0x0

    .line 580
    .local v13, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\"; filename=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 581
    .local v7, "contentDisposition":Ljava/lang/String;
    const-string v8, "Content-Type: application/octet-stream"

    .line 584
    .local v8, "contentType":Ljava/lang/String;
    const-string v22, "--"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v22, "=================================="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const/16 v22, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const/16 v22, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    const-string v22, "Content-Type: application/octet-stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const/16 v22, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    const/16 v22, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    const/16 v22, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    const-string v22, "--"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string v22, "=================================="

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v22, "--"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 603
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .local v14, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 605
    .local v20, "url":Ljava/net/URL;
    new-instance v22, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-static {}, Lcom/genie_connect/android/net/OkHttpClientSingleton;->getOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 608
    if-eqz p3, :cond_0

    .line 609
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 610
    .local v21, "usernamePassword":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/genie_connect/common/utils/crypt/HashHelper;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 611
    .local v11, "encodedUsernamePassword":Ljava/lang/String;
    const-string v22, "AUTHORIZATION"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Basic "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .end local v11    # "encodedUsernamePassword":Ljava/lang/String;
    .end local v21    # "usernamePassword":Ljava/lang/String;
    :cond_0
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 615
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 616
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 617
    const-string v22, "POST"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 618
    const-string v22, "CONTENT-TYPE"

    const-string v23, "multipart/form-data; boundary==================================="

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 622
    .local v9, "dataOS":Ljava/io/DataOutputStream;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    :goto_0
    :try_start_2
    invoke-virtual {v14, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v15

    .local v15, "readNum":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v15, v0, :cond_3

    .line 626
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v5, v0, v15}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 628
    .end local v15    # "readNum":I
    :catch_0
    move-exception v12

    .line 629
    .local v12, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v22, "^ NET: sendMultipart() Error reading file!"

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 630
    new-instance v22, Ljava/lang/Exception;

    const-string v23, "Error reading file!"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    .end local v9    # "dataOS":Ljava/io/DataOutputStream;
    .end local v12    # "ex":Ljava/io/IOException;
    .end local v20    # "url":Ljava/net/URL;
    :catch_1
    move-exception v10

    move-object v13, v14

    .line 650
    .end local v7    # "contentDisposition":Ljava/lang/String;
    .end local v8    # "contentType":Ljava/lang/String;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .local v10, "e":Ljava/lang/Exception;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    const-string v22, "^ NET: sendMultipart() Exception: "

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 651
    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getResponseCode()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 652
    const/16 v22, 0x0

    sget-object v23, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v18

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 655
    :cond_1
    if-eqz v6, :cond_2

    .line 656
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 659
    :cond_2
    invoke-static {v13}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 662
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ NET: sendMultipart() NetworkResult: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 663
    return-object v19

    .line 633
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "contentDisposition":Ljava/lang/String;
    .restart local v8    # "contentType":Ljava/lang/String;
    .restart local v9    # "dataOS":Ljava/io/DataOutputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "readNum":I
    .restart local v20    # "url":Ljava/net/URL;
    :cond_3
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 635
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 638
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 640
    move/from16 v0, v18

    invoke-static {v6, v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Ljava/net/HttpURLConnection;I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 641
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v18

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 655
    if-eqz v6, :cond_4

    .line 656
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 659
    :cond_4
    invoke-static {v14}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v13, v14

    .line 660
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 643
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    :cond_5
    const/16 v22, 0x0

    :try_start_6
    sget-object v23, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v18

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 644
    new-instance v22, Ljava/lang/Exception;

    const-string v23, "Received the response code %d from the URL %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v20, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 655
    .end local v9    # "dataOS":Ljava/io/DataOutputStream;
    .end local v15    # "readNum":I
    .end local v20    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v22

    move-object v13, v14

    .end local v7    # "contentDisposition":Ljava/lang/String;
    .end local v8    # "contentType":Ljava/lang/String;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v6, :cond_6

    .line 656
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 659
    :cond_6
    invoke-static {v13}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v22

    .line 655
    :catchall_1
    move-exception v22

    goto :goto_3

    .line 649
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method


# virtual methods
.method public deleteEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    .locals 14
    .param p1, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "entityId"    # Ljava/lang/Long;

    .prologue
    .line 351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/secure/rest/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%s/%s/"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 353
    .local v8, "url":Ljava/lang/String;
    new-instance v5, Lcom/genie_connect/android/net/container/NetworkResultStringContent;

    sget-object v9, Lcom/genie_connect/common/net/utils/HttpAction;->DELETE:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v5, v9}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 354
    .local v5, "result":Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    iget-object v9, p0, Lcom/genie_connect/android/net/providers/NetworkSender;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v9, v8}, Lcom/github/ignition/support/http/IgnitedHttp;->delete(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v2

    .line 356
    .local v2, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V

    .line 358
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NET: deleteEntity() - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 362
    .local v6, "startTime":J
    :try_start_0
    invoke-interface {v2}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v3

    .line 363
    .local v3, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v3}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v4

    .line 365
    .local v4, "responseCode":I
    invoke-static {v2, v4}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 366
    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->getResponseBodyAsString(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setContent(Ljava/lang/String;)V

    .line 367
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v4, v10}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    .end local v3    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v4    # "responseCode":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v5, v10, v11}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setTimeElapsed(J)V

    .line 381
    return-object v5

    .line 369
    .restart local v3    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v4    # "responseCode":I
    :cond_0
    const/4 v9, 0x0

    :try_start_1
    sget-object v10, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v9, v4, v10}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 372
    .end local v3    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v4    # "responseCode":I
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e1":Ljava/net/ConnectException;
    const/4 v9, 0x0

    const/4 v10, -0x1

    sget-object v11, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v9, v10, v11}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 374
    invoke-virtual {v1}, Ljava/net/ConnectException;->printStackTrace()V

    goto :goto_0

    .line 375
    .end local v1    # "e1":Ljava/net/ConnectException;
    :catch_1
    move-exception v0

    .line 376
    .local v0, "e":Ljava/io/IOException;
    const/4 v9, 0x0

    const/4 v10, -0x1

    sget-object v11, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v5, v9, v10, v11}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public makeGenericRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    :try_start_0
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 204
    const-string v5, "^NET: makeGenericRequest called with no HTTP Method"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    return v4

    .line 206
    :cond_1
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 207
    const-string v5, "^NET: makeGenericRequest called with no url"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/net/ConnectException;
    const-string v5, "^NET: Generic request failed. Connection error."

    invoke-static {v5, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/net/ConnectException;
    :cond_2
    :try_start_1
    const-string v6, "POST"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 215
    iget-object v6, p0, Lcom/genie_connect/android/net/providers/NetworkSender;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    new-instance v7, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v7, p3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2, v7}, Lcom/github/ignition/support/http/IgnitedHttp;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .line 225
    .local v1, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :goto_1
    invoke-interface {v1}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v2

    .line 226
    .local v2, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v2}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v3

    .line 228
    .local v3, "responseCode":I
    const-string v6, "^NET: Generic request to %s. server returned code %s."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 230
    invoke-static {v1, v3}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 231
    goto :goto_0

    .line 216
    .end local v1    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v2    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v3    # "responseCode":I
    :cond_3
    const-string v6, "GET"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 217
    iget-object v6, p0, Lcom/genie_connect/android/net/providers/NetworkSender;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v6, p2}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .restart local v1    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    goto :goto_1

    .line 218
    .end local v1    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :cond_4
    const-string v6, "PUT"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 219
    iget-object v6, p0, Lcom/genie_connect/android/net/providers/NetworkSender;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v6, p2}, Lcom/github/ignition/support/http/IgnitedHttp;->put(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .restart local v1    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    goto :goto_1

    .line 221
    .end local v1    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :cond_5
    const-string v5, "^NET: makeGenericRequest called with unknown HTTP Method %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 236
    :catch_1
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "^NET: Generic request failed. Encoding is not supported."

    invoke-static {v5, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public note(Ljava/lang/String;JLcom/genie_connect/android/db/access/Udm$NoteAction;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "action"    # Lcom/genie_connect/android/db/access/Udm$NoteAction;
    .param p5, "contents"    # Ljava/lang/String;
    .param p6, "forceQueue"    # Z

    .prologue
    .line 146
    sget-object v8, Lcom/genie_connect/android/db/access/Udm$NoteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    if-ne p4, v8, :cond_0

    const-string v2, "setnote"

    .line 147
    .local v2, "method":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/genie_connect/android/net/providers/NetworkSender;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/secure/rest/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/rpc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "url":Ljava/lang/String;
    sget-object v8, Lcom/genie_connect/android/db/access/Udm$NoteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    if-ne p4, v8, :cond_1

    invoke-static {p5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 152
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v3, "payload":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "note"

    invoke-static {v3, v8, p5}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 158
    :goto_1
    :try_start_1
    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->convertJsonObjectToEntity(Lorg/json/JSONObject;)Lorg/apache/http/entity/StringEntity;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 169
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :goto_2
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez p6, :cond_2

    .line 171
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ NET: note() - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 174
    :try_start_2
    iget-object v8, p0, Lcom/genie_connect/android/net/providers/NetworkSender;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v8, v7, v1}, Lcom/github/ignition/support/http/IgnitedHttp;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v4

    .line 175
    .local v4, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V

    .line 177
    invoke-interface {v4}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v5

    .line 178
    .local v5, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v5}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v6

    .line 180
    .local v6, "responseCode":I
    invoke-static {v4, v6}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    .line 191
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v5    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v6    # "responseCode":I
    :goto_3
    return-void

    .line 146
    .end local v2    # "method":Ljava/lang/String;
    .end local v3    # "payload":Lorg/json/JSONObject;
    .end local v7    # "url":Ljava/lang/String;
    :cond_0
    const-string v2, "removenote"

    goto/16 :goto_0

    .line 159
    .restart local v2    # "method":Ljava/lang/String;
    .restart local v3    # "payload":Lorg/json/JSONObject;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 165
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "payload":Lorg/json/JSONObject;
    :cond_1
    const/4 v3, 0x0

    .line 166
    .restart local v3    # "payload":Lorg/json/JSONObject;
    invoke-static {}, Lcom/genie_connect/android/net/NetworkHelper;->getDummyPostEntity()Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v1

    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_2

    .line 183
    :catch_1
    move-exception v0

    .line 184
    .local v0, "e":Ljava/net/ConnectException;
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 189
    .end local v0    # "e":Ljava/net/ConnectException;
    :cond_2
    if-nez v3, :cond_3

    const/4 v8, 0x0

    :goto_4
    invoke-static {v7, v8}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getNoteInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/genie_connect/android/net/providers/NetworkSender;->populateHeaderAndAddToFavQueue(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 155
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :catch_2
    move-exception v8

    goto :goto_1
.end method

.method public postActivityStreamComment(Ljava/lang/Long;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 9
    .param p1, "postId"    # Ljava/lang/Long;
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 335
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 338
    .local v1, "payload":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "comment"

    invoke-static {v1, v4, p2}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/secure/rest/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "activitystreamposts/%s/rpc/addcomment"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v4, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 344
    .local v2, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    const/4 v4, -0x1

    sget-object v5, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v2, v8, v4, v5}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 345
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public postEmailMyEvent(Ljava/util/List;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 10
    .param p2, "isLogged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;Z)",
            "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v6, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v4, v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 251
    .local v4, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 254
    .local v3, "payload":Lorg/json/JSONObject;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 255
    .local v2, "pair":Lorg/apache/http/NameValuePair;
    invoke-static {v3, v2}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Lorg/apache/http/NameValuePair;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pair":Lorg/apache/http/NameValuePair;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lorg/json/JSONException;
    const/4 v6, 0x0

    const/4 v7, -0x1

    sget-object v8, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v4, v6, v7, v8}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 268
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 271
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v4

    .line 259
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz p2, :cond_1

    .line 260
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/NetworkSender;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/secure/rest/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "visitors/rpc/emailmyevent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "url":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v5, v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v4

    goto :goto_1

    .line 262
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/NetworkSender;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/secure/rest/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "apps/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getNamespace()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/rpc/emailmyevent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_2
.end method

.method public postFavourite(Ljava/lang/String;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;Z)V
    .locals 8
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "action"    # Lcom/genie_connect/android/db/access/Udm$FavouriteAction;
    .param p5, "forceQueue"    # Z

    .prologue
    .line 283
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/genie_connect/android/net/providers/NetworkSender;->getUrlForFavouriting(Ljava/lang/String;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ NET: Favourite() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p5, :cond_0

    .line 289
    :try_start_0
    iget-object v5, p0, Lcom/genie_connect/android/net/providers/NetworkSender;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-static {}, Lcom/genie_connect/android/net/NetworkHelper;->getDummyPostEntity()Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/github/ignition/support/http/IgnitedHttp;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .line 290
    .local v1, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V

    .line 292
    invoke-interface {v1}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v2

    .line 293
    .local v2, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v2}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v3

    .line 295
    .local v3, "responseCode":I
    invoke-static {v1, v3}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 305
    .end local v1    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v2    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v3    # "responseCode":I
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/net/ConnectException;
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 304
    .end local v0    # "e":Ljava/net/ConnectException;
    :cond_0
    invoke-static {v4}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getFavInstance(Ljava/lang/String;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/genie_connect/android/net/providers/NetworkSender;->populateHeaderAndAddToFavQueue(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V

    goto :goto_0
.end method

.method public postFavouriteForGson(Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 4
    .param p1, "mEntity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "id"    # J
    .param p4, "action"    # Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    .prologue
    .line 308
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/genie_connect/android/net/providers/NetworkSender;->getUrlForFavouriting(Ljava/lang/String;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ NET: postFavouriteForGson() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 310
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-class v2, Lcom/genie_connect/android/net/container/gson/rpc/EmptyRpcResponseModel;

    invoke-virtual {p0, v0, v1, v2}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForGson(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v1

    return-object v1
.end method

.method public postMugshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 3
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "formField"    # Ljava/lang/String;

    .prologue
    .line 314
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, ""

    invoke-static {p1, v0, p3, v1, v2}, Lcom/genie_connect/android/net/providers/NetworkSender;->sendFileMultipart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method public postResetMyPassword(Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 7
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 322
    .local v1, "payload":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "username"

    invoke-static {v1, v4, p1}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/secure/rest/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "visitors/rpc/forgottenpassword"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 330
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v4, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 328
    .local v2, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    const/4 v4, 0x0

    const/4 v5, -0x1

    sget-object v6, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v2, v4, v5, v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 329
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public postUpdateForGson(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "payload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/genie_connect/android/net/container/gson/BaseGsonModel;",
            ">;)",
            "Lcom/genie_connect/common/net/container/NetworkResultGsonContent;"
        }
    .end annotation

    .prologue
    .line 438
    .local p3, "classToInflate":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/genie_connect/android/net/container/gson/BaseGsonModel;>;"
    new-instance v2, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    sget-object v3, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v2, v3}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 442
    .local v2, "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :try_start_0
    invoke-static {p2}, Lcom/genie_connect/android/net/providers/NetworkSender;->convertJsonObjectToEntity(Lorg/json/JSONObject;)Lorg/apache/http/entity/StringEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 449
    .local v1, "entity":Lorg/apache/http/entity/StringEntity;
    invoke-direct {p0, p1, v1, p3}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForGson(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :goto_0
    return-object v2

    .line 443
    .restart local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e2":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 445
    const/4 v3, 0x0

    const/4 v4, -0x1

    sget-object v5, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v2, v3, v4, v5}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_0
.end method

.method public postUpdateForJson(Ljava/lang/String;JLorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 8
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "payload"    # Lorg/json/JSONObject;

    .prologue
    .line 521
    new-instance v2, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v4, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 525
    .local v2, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :try_start_0
    invoke-static {p4}, Lcom/genie_connect/android/net/providers/NetworkSender;->convertJsonObjectToEntity(Lorg/json/JSONObject;)Lorg/apache/http/entity/StringEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 532
    .local v1, "entity":Lorg/apache/http/entity/StringEntity;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkSender;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/secure/rest/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v2

    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 526
    .restart local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e2":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 528
    const/4 v4, 0x0

    const/4 v5, -0x1

    sget-object v6, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v2, v4, v5, v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_0
.end method

.method public postUpdateForJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "payload"    # Lorg/json/JSONObject;

    .prologue
    .line 501
    new-instance v2, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v4, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v2, v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 505
    .local v2, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 506
    .local v3, "utf8String":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .local v1, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 508
    const-string v4, "application/json;charset=utf-8"

    invoke-virtual {v1, v4}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    invoke-direct {p0, p1, v1}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v2

    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v3    # "utf8String":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 509
    .restart local v2    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e2":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 511
    const/4 v4, 0x0

    const/4 v5, -0x1

    sget-object v6, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v2, v4, v5, v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_0
.end method
