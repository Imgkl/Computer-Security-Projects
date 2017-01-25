.class public Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;
.super Ljava/lang/Object;
.source "FavQueueNetwork.java"

# interfaces
.implements Lcom/genie_connect/common/net/NetworkHeaders;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    .line 67
    iput-object p1, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private addRequestHeaders(Lorg/apache/http/HttpRequest;)V
    .locals 14
    .param p1, "req"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 71
    if-nez p1, :cond_1

    .line 72
    const-string v10, "^ FAVQNET: addRequestHeaders() INVALID REQUEST"

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v10, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestHeaders()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "headers":Ljava/lang/String;
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 79
    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 80
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "headerArray":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v7, v0, v5

    .line 83
    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 84
    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "lineArray":[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 89
    const-string v10, "AUTHORIZATION"

    aget-object v11, v8, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "Basic YW5vbnltb3VzOmd1ZXN0"

    aget-object v11, v8, v13

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 95
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorAuthString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "authString":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 98
    const-string v2, "AUTHORIZATION"

    .line 99
    .local v2, "header":Ljava/lang/String;
    move-object v9, v1

    .line 110
    .end local v1    # "authString":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v2, v9}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v2    # "header":Ljava/lang/String;
    .end local v8    # "lineArray":[Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    .restart local v1    # "authString":Ljava/lang/String;
    .restart local v8    # "lineArray":[Ljava/lang/String;
    :cond_3
    aget-object v2, v8, v12

    .line 103
    .restart local v2    # "header":Ljava/lang/String;
    aget-object v9, v8, v13

    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_1

    .line 106
    .end local v1    # "authString":Ljava/lang/String;
    .end local v2    # "header":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    aget-object v2, v8, v12

    .line 107
    .restart local v2    # "header":Ljava/lang/String;
    aget-object v9, v8, v13

    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method private convertToHttpEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 3
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 126
    const-string/jumbo v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v0, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 129
    const-string v1, "application/json;charset=utf-8"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-object v0

    .line 131
    .end local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    goto :goto_0

    .line 134
    .end local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_1
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    goto :goto_0

    .line 137
    .end local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_2
    invoke-static {}, Lcom/genie_connect/android/net/NetworkHelper;->getDummyPostEntity()Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v0

    .restart local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    goto :goto_0
.end method

.method private static declared-synchronized formatHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 202
    const-class v1, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getHeaders(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # J

    .prologue
    .line 206
    const-class v3, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getGmUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "guid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    .line 209
    :cond_0
    const-string v2, "^ FAVQNET: Invalid setup. Aborting header compilation"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    const/4 v2, 0x0

    .line 226
    :goto_0
    monitor-exit v3

    return-object v2

    .line 213
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "AUTHORIZATION"

    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkBase;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->formatHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v2, "EGNAMESPACE"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->formatHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v2, "ACCEPT-ENCODING"

    const-string v4, "gzip"

    invoke-static {v2, v4}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->formatHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v2, "X-GC-PLATFORM-VERSION"

    const-string v4, "2.70"

    invoke-static {v2, v4}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->formatHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v2, "X-GM-PLATFORM"

    invoke-static {}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getGmPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->formatHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v2, "X-GM-USER-AGENT"

    invoke-static {p0}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/net/providers/UserAgentUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getGmUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->formatHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v2, "X-GM-UUID"

    invoke-static {v2, v0}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->formatHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 206
    .end local v0    # "guid":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 231
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 233
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 236
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 237
    const/4 v3, 0x1

    .line 248
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v3

    .line 243
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    const-string v4, "^ FAVQNET: isConnected() = false - cm is null!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "^ FAVQNET: isConnected() = false - error!"

    invoke-static {v4, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private methodPost()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 147
    :try_start_0
    iget-object v9, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "targetUrl":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ FAVQNET: POST URL : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n.. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 156
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 157
    .local v1, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v2}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->addRequestHeaders(Lorg/apache/http/HttpRequest;)V

    .line 160
    iget-object v9, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestBody()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->convertToHttpEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 163
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 164
    .local v4, "res":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 166
    .local v3, "line":Lorg/apache/http/StatusLine;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ FAVQNET: StatusLine  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 168
    if-eqz v3, :cond_4

    .line 169
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 170
    .local v5, "responseCode":I
    invoke-static {v2, v5}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lorg/apache/http/client/methods/HttpRequestBase;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 171
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ FAVQNET: RESULT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 189
    .end local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "line":Lorg/apache/http/StatusLine;
    .end local v4    # "res":Lorg/apache/http/HttpResponse;
    .end local v5    # "responseCode":I
    .end local v6    # "targetUrl":Ljava/lang/String;
    :goto_1
    return v7

    .line 150
    :cond_0
    iget-object v9, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "targetUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 173
    .restart local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "line":Lorg/apache/http/StatusLine;
    .restart local v4    # "res":Lorg/apache/http/HttpResponse;
    .restart local v5    # "responseCode":I
    :cond_1
    const/16 v9, 0x1f4

    if-eq v5, v9, :cond_2

    const/16 v9, 0x191

    if-eq v5, v9, :cond_2

    const/16 v9, 0x190

    if-ne v5, v9, :cond_3

    .line 176
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ FAVQNET: ignoring: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    .end local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "line":Lorg/apache/http/StatusLine;
    .end local v4    # "res":Lorg/apache/http/HttpResponse;
    .end local v5    # "responseCode":I
    .end local v6    # "targetUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FAVQNET: methodPost(): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    move v7, v8

    .line 189
    goto :goto_1

    .line 179
    .restart local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "line":Lorg/apache/http/StatusLine;
    .restart local v4    # "res":Lorg/apache/http/HttpResponse;
    .restart local v5    # "responseCode":I
    .restart local v6    # "targetUrl":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FAVQNET: RESULT: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v5    # "responseCode":I
    :cond_4
    move v7, v8

    .line 182
    goto :goto_1
.end method


# virtual methods
.method public send()Z
    .locals 2

    .prologue
    .line 194
    const-string v0, "POST"

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->mItem:Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->methodPost()Z

    move-result v0

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
