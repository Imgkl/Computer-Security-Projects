.class Lcom/genie_connect/android/services/lss/UdmNetwork;
.super Lcom/genie_connect/android/net/providers/NetworkBase;
.source "UdmNetwork.java"


# static fields
.field private static final SYNCMYEVENT_ENDPOINT:Ljava/lang/String; = "/secure/rest/visitors/rpc/syncmyevent"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/genie_connect/android/net/providers/NetworkBase;-><init>(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private static varargs buildJSONPayload([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "entityTypes"    # [Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p0}, Lcom/genie_connect/android/db/access/UdmEntityLists;->translateEntitiesToSyncables([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 207
    .local v0, "entities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 209
    .local v3, "payload":Lorg/json/JSONObject;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "entity":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/genie_connect/android/services/lss/UdmNetwork;->camelCaser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v4

    goto :goto_0

    .line 215
    .end local v1    # "entity":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private static camelCaser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "entity"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v0, "favouriteExhibitors"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string p0, "favouriteExhibitors"

    .line 254
    .end local p0    # "entity":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 232
    .restart local p0    # "entity":Ljava/lang/String;
    :cond_1
    const-string v0, "favouritespeakers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    const-string p0, "favouriteSpeakers"

    goto :goto_0

    .line 235
    :cond_2
    const-string v0, "favouriteproducts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    const-string p0, "favouriteProducts"

    goto :goto_0

    .line 238
    :cond_3
    const-string v0, "favouritedownloadables"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    const-string p0, "favouriteDownloadables"

    goto :goto_0

    .line 241
    :cond_4
    const-string v0, "favouritevisitors"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    const-string p0, "favouriteVisitors"

    goto :goto_0

    .line 244
    :cond_5
    const-string v0, "favouritepoi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 245
    const-string p0, "favouritePois"

    goto :goto_0

    .line 247
    :cond_6
    const-string v0, "agendaitems"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 248
    const-string p0, "agendaItems"

    goto :goto_0

    .line 249
    :cond_7
    const-string v0, "favouritesession"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 250
    const-string p0, "favouriteSessions"

    goto :goto_0

    .line 251
    :cond_8
    const-string v0, "favouritesubsession"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string p0, "favouriteSubSessions"

    goto :goto_0
.end method

.method private doMyEventDownload(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultUdm;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "payload"    # Lorg/json/JSONObject;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v10, Lcom/genie_connect/android/net/container/NetworkResultUdm;

    sget-object v14, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v10, v14}, Lcom/genie_connect/android/net/container/NetworkResultUdm;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 81
    .local v10, "result":Lcom/genie_connect/android/net/container/NetworkResultUdm;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ LSS: doMyEventDownload() Payload: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 82
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ LSS: doMyEventDownload() URL    : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 84
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 87
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 92
    .local v12, "startTime":J
    :try_start_0
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-direct {v11, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 93
    .local v11, "utf8String":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    const-string v14, "UTF-8"

    invoke-direct {v3, v11, v14}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v3, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v14, "UTF-8"

    invoke-virtual {v3, v14}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 95
    const-string v14, "application/json;charset=utf-8"

    invoke-virtual {v3, v14}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/genie_connect/android/services/lss/UdmNetwork;->mIgnitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v3}, Lcom/github/ignition/support/http/IgnitedHttp;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v7

    .line 100
    .local v7, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->getNetworkHeaderUtils()Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->addRequestHeaders(Lcom/github/ignition/support/http/IgnitedHttpRequest;Ljava/lang/String;)V

    .line 101
    invoke-interface {v7}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v8

    .line 103
    .local v8, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v8}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v9

    .line 104
    .local v9, "responseCode":I
    invoke-static {v7, v9}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 105
    move-object/from16 v5, p3

    .line 106
    .local v5, "filePath":Ljava/lang/String;
    invoke-static {v8}, Lcom/genie_connect/android/services/lss/UdmNetwork;->getResponseBody(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/io/InputStream;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/genie_connect/android/services/lss/UdmNetwork;->downloadStream(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v6

    .line 108
    .local v6, "ok":Z
    if-eqz v6, :cond_2

    .line 109
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ LSS: doMyEventDownload() Sucessfully downloaded my event: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 110
    const/4 v14, 0x1

    sget-object v15, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v10, v14, v9, v15}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 150
    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "ok":Z
    .end local v7    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v8    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v9    # "responseCode":I
    .end local v11    # "utf8String":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    invoke-virtual {v10, v14, v15}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->setTimeElapsed(J)V

    .line 151
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->setFilePath(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isSaveNetworkDataToSd()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 154
    new-instance v14, Lcom/genie_connect/android/net/providers/ResponsePersister;

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/genie_connect/android/net/providers/ResponsePersister;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v12, v13, v0, v10}, Lcom/genie_connect/android/net/providers/ResponsePersister;->saveResponse(JLjava/lang/String;Lcom/genie_connect/android/net/container/NetworkResultUdm;)V

    .line 157
    :cond_1
    return-object v10

    .line 115
    .restart local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v6    # "ok":Z
    .restart local v7    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v8    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v9    # "responseCode":I
    .restart local v11    # "utf8String":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v14, "^ LSS: doMyEventDownload() error downloading MyEvent"

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 116
    const/4 v14, 0x0

    sget-object v15, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->ERROR_PERSISITNG_RESPONSE:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v10, v14, v9, v15}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 128
    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "ok":Z
    .end local v7    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v8    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v9    # "responseCode":I
    .end local v11    # "utf8String":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v14, "^ LSS: UnsupportedEncodingException() IOException."

    invoke-static {v14, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 130
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 131
    const/4 v14, 0x0

    const/4 v15, -0x1

    sget-object v16, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v15, v0}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_0

    .line 122
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v7    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v8    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .restart local v9    # "responseCode":I
    .restart local v11    # "utf8String":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    :try_start_2
    sget-object v15, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v10, v14, v9, v15}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 136
    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v7    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v8    # "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .end local v9    # "responseCode":I
    .end local v11    # "utf8String":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 137
    .local v2, "e":Ljava/net/ConnectException;
    const-string v14, "^ LSS: doMyEventDownload() ConnectException."

    invoke-static {v14, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    const/4 v14, 0x0

    const/4 v15, -0x1

    sget-object v16, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v15, v0}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_0

    .line 142
    .end local v2    # "e":Ljava/net/ConnectException;
    :catch_2
    move-exception v2

    .line 143
    .local v2, "e":Ljava/io/IOException;
    const-string v14, "^ LSS: doMyEventDownload() IOException."

    invoke-static {v14, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 144
    const/4 v14, 0x0

    const/4 v15, -0x1

    sget-object v16, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v15, v0}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_0
.end method


# virtual methods
.method public downloadMyEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultUdm;
    .locals 8
    .param p1, "entityType"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 164
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/secure/rest/visitors/rpc/syncmyevent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-static {v4}, Lcom/genie_connect/android/services/lss/UdmNetwork;->buildJSONPayload([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 168
    .local v1, "payload":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->getNamespace()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullSyncMyEventDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "filePath":Ljava/lang/String;
    invoke-direct {p0, v3, v1, v0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->doMyEventDownload(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultUdm;

    move-result-object v2

    .line 178
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "payload":Lorg/json/JSONObject;
    .end local v3    # "url":Ljava/lang/String;
    .local v2, "result":Lcom/genie_connect/android/net/container/NetworkResultUdm;
    :goto_0
    return-object v2

    .line 171
    .end local v2    # "result":Lcom/genie_connect/android/net/container/NetworkResultUdm;
    :cond_0
    new-instance v2, Lcom/genie_connect/android/net/container/NetworkResultUdm;

    sget-object v4, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v2, v4}, Lcom/genie_connect/android/net/container/NetworkResultUdm;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 172
    .restart local v2    # "result":Lcom/genie_connect/android/net/container/NetworkResultUdm;
    const/4 v4, -0x1

    sget-object v5, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->ERROR_PERSISITNG_RESPONSE:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v2, v7, v4, v5}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_0
.end method

.method public downloadMyEvent([Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultUdm;
    .locals 12
    .param p1, "entityTypes"    # [Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 182
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 183
    .local v1, "entityType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ UDM downloadMyEvent entity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "entityType":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ UDM downloadMyEvent to"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 186
    new-instance v6, Lcom/genie_connect/android/net/container/NetworkResultUdm;

    sget-object v8, Lcom/genie_connect/common/net/utils/HttpAction;->POST:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v6, v8}, Lcom/genie_connect/android/net/container/NetworkResultUdm;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 189
    .local v6, "result":Lcom/genie_connect/android/net/container/NetworkResultUdm;
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 190
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/secure/rest/visitors/rpc/syncmyevent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "url":Ljava/lang/String;
    invoke-static {p1}, Lcom/genie_connect/android/services/lss/UdmNetwork;->buildJSONPayload([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 193
    .local v5, "payload":Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/UdmNetwork;->getNamespace()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullSyncMyEventDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "filePath":Ljava/lang/String;
    invoke-direct {p0, v7, v5, v2}, Lcom/genie_connect/android/services/lss/UdmNetwork;->doMyEventDownload(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/genie_connect/android/net/container/NetworkResultUdm;

    move-result-object v6

    .line 202
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v5    # "payload":Lorg/json/JSONObject;
    .end local v7    # "url":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 196
    :cond_1
    const/4 v8, 0x0

    const/4 v9, -0x1

    sget-object v10, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->ERROR_PERSISITNG_RESPONSE:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v6, v8, v9, v10}, Lcom/genie_connect/android/net/container/NetworkResultUdm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_1
.end method
