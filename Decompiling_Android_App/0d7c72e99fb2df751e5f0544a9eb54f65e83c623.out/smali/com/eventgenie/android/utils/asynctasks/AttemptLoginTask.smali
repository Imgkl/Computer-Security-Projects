.class public Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;
.super Landroid/os/AsyncTask;
.source "AttemptLoginTask.java"

# interfaces
.implements Lcom/genie_connect/common/net/NetworkHeaders;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/genie_connect/android/net/container/NetworkResultAuth;",
        ">;",
        "Lcom/genie_connect/common/net/NetworkHeaders;"
    }
.end annotation


# instance fields
.field private final mAuthString:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mNamespace:J

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authString"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "namespace"    # Ljava/lang/Long;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->mAuthString:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->mUrl:Ljava/lang/String;

    .line 38
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->mNamespace:J

    .line 39
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultAuth;
    .locals 24
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 43
    new-instance v14, Lcom/genie_connect/android/net/container/NetworkResultAuth;

    sget-object v19, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lcom/genie_connect/android/net/container/NetworkResultAuth;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 44
    .local v14, "netResult":Lcom/genie_connect/android/net/container/NetworkResultAuth;
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getHttpClient(Landroid/content/Context;Z)Lcom/github/ignition/support/http/IgnitedHttp;

    move-result-object v11

    .line 45
    .local v11, "http":Lcom/github/ignition/support/http/IgnitedHttp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->mUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v15

    .line 47
    .local v15, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    new-instance v6, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->mAuthString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .local v6, "dl":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    invoke-virtual {v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->mNamespace:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeadersForLogin(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;J)V

    .line 51
    const/16 v17, -0x1

    .line 54
    .local v17, "responseCode":I
    :try_start_0
    invoke-interface {v15}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v16

    .line 55
    .local v16, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface/range {v16 .. v16}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v17

    .line 56
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "^ LOGINTASK: res "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 57
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "^ LOGINTASK: HTTP code         : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 59
    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 60
    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    .line 61
    .local v10, "gson":Lcom/google/gson/Gson;
    invoke-static/range {v16 .. v16}, Lcom/genie_connect/android/net/providers/NetworkBase;->getResponseBodyAsString(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/lang/String;

    move-result-object v19

    const-class v20, Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;

    .line 65
    .local v18, "userProfile":Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->mNamespace:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_1

    .line 66
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 67
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->setVisitor(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    .line 103
    .end local v10    # "gson":Lcom/google/gson/Gson;
    .end local v16    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v18    # "userProfile":Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;
    :cond_0
    :goto_0
    return-object v14

    .line 69
    .restart local v10    # "gson":Lcom/google/gson/Gson;
    .restart local v16    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v18    # "userProfile":Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;
    :cond_1
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 70
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->setVisitor(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    .line 72
    invoke-virtual {v14}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->isSuccesful()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v8

    .line 75
    .local v8, "egdb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getFavouritableEntities()[Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "arrayFavs":[Ljava/lang/String;
    move-object v4, v5

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_2

    aget-object v9, v4, v12

    .line 78
    .local v9, "entity":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/genie_connect/android/db/access/Udm;->favouritesUpload(Ljava/lang/String;)Z

    .line 77
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 80
    .end local v9    # "entity":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/access/Udm;->notablesUpload()V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 88
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "arrayFavs":[Ljava/lang/String;
    .end local v8    # "egdb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v10    # "gson":Lcom/google/gson/Gson;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v18    # "userProfile":Lcom/genie_connect/android/net/container/gson/rpc/WhoamiRpcModel;
    :catch_0
    move-exception v7

    .line 89
    .local v7, "e":Ljava/net/ConnectException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "^ LOGINTASK: attemptUserLogin(): ConnectException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 90
    const/16 v19, 0x0

    sget-object v20, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 91
    invoke-virtual {v7}, Ljava/net/ConnectException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v7    # "e":Ljava/net/ConnectException;
    .restart local v16    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    :cond_3
    const/16 v19, 0x0

    :try_start_1
    sget-object v20, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 92
    .end local v16    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    :catch_1
    move-exception v7

    .line 93
    .local v7, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "^ LOGINTASK: attemptUserLogin(): JsonSyntaxException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 94
    const/16 v19, 0x0

    sget-object v20, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 95
    invoke-virtual {v7}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto/16 :goto_0

    .line 96
    .end local v7    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_2
    move-exception v7

    .line 97
    .local v7, "e":Ljava/io/IOException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "^ LOGINTASK: attemptUserLogin(): IOException:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 98
    const/16 v19, 0x0

    sget-object v20, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 99
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;->doInBackground([Ljava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultAuth;

    move-result-object v0

    return-object v0
.end method
