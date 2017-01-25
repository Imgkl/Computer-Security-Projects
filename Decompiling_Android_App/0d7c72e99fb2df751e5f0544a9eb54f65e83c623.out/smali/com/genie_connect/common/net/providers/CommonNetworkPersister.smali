.class public Lcom/genie_connect/common/net/providers/CommonNetworkPersister;
.super Lcom/genie_connect/common/net/providers/CommonNetworkBase;
.source "CommonNetworkPersister.java"


# instance fields
.field private final mFileHandler:Lcom/genie_connect/common/io/FileHandler;

.field private final mNetworkSettings:Lcom/genie_connect/common/platform/INetworkSettings;

.field private final mNotificationHandler:Lcom/genie_connect/common/platform/INotificationHandler;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/platform/INotificationHandler;Lcom/genie_connect/common/platform/INetworkSettings;Lcom/genie_connect/common/net/OkUrlFactoryWrapper;Lcom/genie_connect/common/io/FileHandler;)V
    .locals 0
    .param p1, "notificationHandler"    # Lcom/genie_connect/common/platform/INotificationHandler;
    .param p2, "networkSettings"    # Lcom/genie_connect/common/platform/INetworkSettings;
    .param p3, "urlFactory"    # Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
    .param p4, "fileHandler"    # Lcom/genie_connect/common/io/FileHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/common/net/providers/CommonNetworkBase;-><init>(Lcom/genie_connect/common/platform/INetworkSettings;Lcom/genie_connect/common/net/OkUrlFactoryWrapper;)V

    .line 83
    iput-object p1, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->mNotificationHandler:Lcom/genie_connect/common/platform/INotificationHandler;

    .line 84
    iput-object p2, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->mNetworkSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    .line 85
    iput-object p4, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->mFileHandler:Lcom/genie_connect/common/io/FileHandler;

    .line 86
    return-void
.end method

.method private broadcastSyncUpdateMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 141
    iget-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->mNotificationHandler:Lcom/genie_connect/common/platform/INotificationHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2, v2, p1}, Lcom/genie_connect/common/platform/INotificationHandler;->sendSyncUpdateBroadcast(IIILjava/lang/String;)V

    .line 142
    return-void
.end method

.method private downloadGmFileV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultGm;
    .locals 10
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "saveFileAs"    # Ljava/lang/String;
    .param p3, "dataversion"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ NET: downloadFile() - downloading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/common/utils/CommonLog;->info(Ljava/lang/String;)V

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ NET: downloadFile() -          to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/common/utils/CommonLog;->debug(Ljava/lang/String;)V

    .line 156
    new-instance v4, Lcom/genie_connect/common/net/container/NetworkResultGm;

    sget-object v6, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v4, v6}, Lcom/genie_connect/common/net/container/NetworkResultGm;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 157
    .local v4, "result":Lcom/genie_connect/common/net/container/NetworkResultGm;
    const/4 v3, -0x1

    .line 161
    .local v3, "responseCode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->getOkUrlFactory()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    move-result-object v1

    .line 165
    .local v1, "factory":Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
    const-wide/16 v6, 0xc8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v8}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 167
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 170
    .local v5, "uc":Ljava/net/HttpURLConnection;
    iget-object v6, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->mNetworkSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    invoke-interface {v6, v5, p3}, Lcom/genie_connect/common/platform/INetworkSettings;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 173
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 175
    invoke-static {v5, v3}, Lcom/genie_connect/common/net/providers/CommonNetworkUtils;->isRequestSuccessful(Ljava/net/HttpURLConnection;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    invoke-static {v5}, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->getResponseBody(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 179
    .local v2, "in":Ljava/io/InputStream;
    iget-object v6, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->mFileHandler:Lcom/genie_connect/common/io/FileHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, p2, v7}, Lcom/genie_connect/common/io/FileHandler;->writeToFile(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 181
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 182
    const/4 v6, 0x1

    sget-object v7, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v4, v6, v3, v7}, Lcom/genie_connect/common/net/container/NetworkResultGm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .end local v1    # "factory":Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "uc":Ljava/net/HttpURLConnection;
    :goto_0
    const-string v6, "^ NET: downloadFile() - download completed."

    invoke-static {v6}, Lcom/genie_connect/common/utils/CommonLog;->info(Ljava/lang/String;)V

    .line 197
    return-object v4

    .line 184
    .restart local v1    # "factory":Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
    .restart local v5    # "uc":Ljava/net/HttpURLConnection;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    sget-object v7, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v4, v6, v3, v7}, Lcom/genie_connect/common/net/container/NetworkResultGm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 187
    .end local v1    # "factory":Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
    .end local v5    # "uc":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ NET: downloadFile() - MalformedURLException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 190
    sget-object v6, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->MALFORMED_URL:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v4, v9, v3, v6}, Lcom/genie_connect/common/net/container/NetworkResultGm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ NET: downloadFile() - IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    sget-object v6, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v4, v9, v3, v6}, Lcom/genie_connect/common/net/container/NetworkResultGm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    goto :goto_0
.end method


# virtual methods
.method public downloadEntitySetToFile(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;ZLjava/io/File;III)Lcom/genie_connect/common/net/container/NetworkResult;
    .locals 14
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "dataVersion"    # Ljava/lang/String;
    .param p3, "broadCastUpdate"    # Z
    .param p4, "baseDir"    # Ljava/io/File;
    .param p5, "offset"    # I
    .param p6, "count"    # I
    .param p7, "totalAvailable"    # I

    .prologue
    .line 107
    if-nez p1, :cond_1

    const-string v9, "null"

    .line 109
    .local v9, "entityName":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p5

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p7

    if-eq v0, v2, :cond_0

    move/from16 v0, p7

    move/from16 v1, p6

    if-le v0, v1, :cond_0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->broadcastSyncUpdateMessage(Ljava/lang/String;)V

    .line 114
    :cond_0
    const/4 v3, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->getUrlParams(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, "param":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->mNetworkSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    invoke-interface {v3}, Lcom/genie_connect/common/platform/INetworkSettings;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/secure/rest/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 117
    .local v13, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {p0, v13, v2, v0}, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->downloadGmFileV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultGm;

    move-result-object v12

    .line 122
    .local v12, "result":Lcom/genie_connect/common/net/container/NetworkResultGm;
    invoke-virtual {v12}, Lcom/genie_connect/common/net/container/NetworkResultGm;->getResponseCode()I

    move-result v11

    .line 123
    .local v11, "responseCode":I
    invoke-virtual {v12}, Lcom/genie_connect/common/net/container/NetworkResultGm;->isSuccesful()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/genie_connect/common/net/utils/HttpAction;->UNKNOWN:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-static {v2, v11}, Lcom/genie_connect/common/net/providers/CommonNetworkUtils;->isRequestSuccessful(Lcom/genie_connect/common/net/utils/HttpAction;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ NET: HTTP code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/CommonLog;->info(Ljava/lang/String;)V

    .line 125
    const/4 v2, 0x1

    invoke-virtual {v12}, Lcom/genie_connect/common/net/container/NetworkResultGm;->getResponseCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Lcom/genie_connect/common/net/container/NetworkResultGm;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 132
    :goto_1
    return-object v12

    .line 107
    .end local v9    # "entityName":Ljava/lang/String;
    .end local v10    # "param":Ljava/lang/String;
    .end local v11    # "responseCode":I
    .end local v12    # "result":Lcom/genie_connect/common/net/container/NetworkResultGm;
    .end local v13    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 128
    .restart local v9    # "entityName":Ljava/lang/String;
    .restart local v10    # "param":Ljava/lang/String;
    .restart local v11    # "responseCode":I
    .restart local v12    # "result":Lcom/genie_connect/common/net/container/NetworkResultGm;
    .restart local v13    # "url":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ NET: HTTP code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ NET: The URL was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method
