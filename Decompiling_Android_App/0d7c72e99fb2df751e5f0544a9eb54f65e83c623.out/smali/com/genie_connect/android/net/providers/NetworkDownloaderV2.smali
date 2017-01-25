.class public Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;
.super Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;
.source "NetworkDownloaderV2.java"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mReachabilityManager:Lcom/genie_connect/android/net/ReachabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/net/ReachabilityManager;Lcom/genie_connect/common/platform/INetworkSettings;Lcom/genie_connect/common/platform/json/IJsonManager;Lcom/genie_connect/common/net/OkUrlFactoryWrapper;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p2, "reachabilityManager"    # Lcom/genie_connect/android/net/ReachabilityManager;
    .param p3, "settings"    # Lcom/genie_connect/common/platform/INetworkSettings;
    .param p4, "manager"    # Lcom/genie_connect/common/platform/json/IJsonManager;
    .param p5, "urlFactory"    # Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p3, p4, p5}, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;-><init>(Lcom/genie_connect/common/platform/INetworkSettings;Lcom/genie_connect/common/platform/json/IJsonManager;Lcom/genie_connect/common/net/OkUrlFactoryWrapper;)V

    .line 82
    iput-object p1, p0, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->mAppContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->mReachabilityManager:Lcom/genie_connect/android/net/ReachabilityManager;

    .line 84
    return-void
.end method

.method private getEntityData(Ljava/lang/Class;Ljava/lang/String;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;
    .locals 13
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 160
    new-instance v6, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;

    sget-object v7, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v6, v7}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 162
    .local v6, "result":Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;, "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent<Ljava/util/List<TT;>;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->getOkUrlFactory()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    move-result-object v7

    invoke-static {p2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 165
    .local v0, "con":Ljava/net/HttpURLConnection;
    iget-object v7, p0, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->mSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    invoke-interface {v7, v0, v11}, Lcom/genie_connect/common/platform/INetworkSettings;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NET: getStringData() - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 168
    const/4 v5, -0x1

    .line 170
    .local v5, "responseCode":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 172
    .local v8, "startTime":J
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 173
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 175
    invoke-static {v0, v5}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Ljava/net/HttpURLConnection;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 176
    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->getResponseBody(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v4

    .line 178
    .local v4, "res":Ljava/io/InputStream;
    iget-object v7, p0, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->mJsonManager:Lcom/genie_connect/common/platform/json/IJsonManager;

    invoke-interface {v7, v4, p1}, Lcom/genie_connect/common/platform/json/IJsonManager;->deserializeListOfEntities(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 180
    .local v3, "entity":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v6, v3}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->setContent(Ljava/lang/Object;)V

    .line 182
    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->getNextRangeStart(Ljava/net/HttpURLConnection;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->setNextRangeStart(I)V

    .line 183
    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->getRangeMax(Ljava/net/HttpURLConnection;)I

    move-result v7

    int-to-long v10, v7

    invoke-virtual {v6, v10, v11}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->setRangeMax(J)V

    .line 184
    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v5, v10}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NET: HTTP code: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->getNextRangeStart()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " / "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->getRangeMax()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    .end local v3    # "entity":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "res":Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v6, v10, v11}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->setTimeElapsed(J)V

    .line 201
    return-object v6

    .line 189
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ NET: HTTP code: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 190
    const/4 v7, 0x0

    sget-object v10, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v6, v7, v5, v10}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e1":Ljava/net/ConnectException;
    sget-object v7, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v6, v12, v5, v7}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 195
    invoke-virtual {v2}, Ljava/net/ConnectException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v2    # "e1":Ljava/net/ConnectException;
    :catch_1
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v6, v12, v5, v7}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getRestServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->mReachabilityManager:Lcom/genie_connect/android/net/ReachabilityManager;

    iget-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs getEntityCollection(Ljava/lang/Class;ZII[Lorg/apache/http/NameValuePair;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;
    .locals 10
    .param p2, "full"    # Z
    .param p3, "offset"    # I
    .param p4, "limit"    # I
    .param p5, "params"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;ZII[",
            "Lorg/apache/http/NameValuePair;",
            ")",
            "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 127
    :try_start_0
    const-string v8, "ENTITY_NAME"

    invoke-virtual {p1, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "entityName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v6, "url":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->getRestServer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/secure/rest/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v8, "?liveStatus=4"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    if-eqz p2, :cond_0

    const-string v8, "&_full"

    :goto_0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    if-lez p3, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&_offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    if-lez p4, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&_limit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    if-eqz p5, :cond_3

    .line 139
    move-object v0, p5

    .local v0, "arr$":[Lorg/apache/http/NameValuePair;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 140
    .local v5, "param":Lorg/apache/http/NameValuePair;
    const-string v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 134
    .end local v0    # "arr$":[Lorg/apache/http/NameValuePair;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "param":Lorg/apache/http/NameValuePair;
    :cond_0
    const-string v8, ""

    goto :goto_0

    .line 135
    :cond_1
    const-string v8, ""

    goto :goto_1

    .line 136
    :cond_2
    const-string v8, ""

    goto :goto_2

    .line 147
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->getEntityData(Ljava/lang/Class;Ljava/lang/String;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 155
    .end local v1    # "entityName":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/StringBuilder;
    :goto_4
    return-object v7

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "entity class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not have an ENTITY_NAME field"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 151
    .end local v2    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 152
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "entity class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not have an accessible ENTITY_NAME field"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public varargs getEntityCollection(Ljava/lang/Class;Z[Lorg/apache/http/NameValuePair;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;
    .locals 6
    .param p2, "full"    # Z
    .param p3, "params"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z[",
            "Lorg/apache/http/NameValuePair;",
            ")",
            "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, -0x1

    .line 110
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->getEntityCollection(Ljava/lang/Class;ZII[Lorg/apache/http/NameValuePair;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;

    move-result-object v0

    return-object v0
.end method

.method public varargs getEntityCollection(Ljava/lang/Class;[Lorg/apache/http/NameValuePair;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;
    .locals 6
    .param p2, "params"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Lorg/apache/http/NameValuePair;",
            ")",
            "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, -0x1

    .line 99
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/net/providers/NetworkDownloaderV2;->getEntityCollection(Ljava/lang/Class;ZII[Lorg/apache/http/NameValuePair;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;

    move-result-object v0

    return-object v0
.end method
