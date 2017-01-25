.class public Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;
.super Ljava/lang/Object;
.source "FireAndForgetQueueNetwork.java"

# interfaces
.implements Lcom/genie_connect/common/net/NetworkHeaders;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .line 131
    iput-object p1, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method private addRequestHeaders(Lorg/apache/http/HttpRequest;)V
    .locals 9
    .param p1, "req"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 137
    if-eqz p1, :cond_1

    .line 138
    iget-object v7, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-virtual {v7}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestHeaders()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "headers":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 141
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "headerArray":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 145
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 146
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "lineArray":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 149
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v6    # "lineArray":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "headerArray":[Ljava/lang/String;
    .end local v2    # "headers":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    const-string v7, "^ FFQNET: addRequestHeaders() INVALID REQUEST"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 165
    :cond_2
    return-void
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
    .line 170
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 174
    const-string/jumbo v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v0, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 177
    const-string v1, "application/json;charset=utf-8"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-object v0

    .line 179
    .end local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    iget-object v1, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-virtual {v1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    goto :goto_0

    .line 182
    .end local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_1
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    iget-object v1, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-virtual {v1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    goto :goto_0

    .line 185
    .end local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_2
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    iget-object v1, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-virtual {v1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    goto :goto_0
.end method

.method private static declared-synchronized formatHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v1, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;

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
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # J

    .prologue
    .line 65
    const-class v8, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;

    monitor-enter v8

    :try_start_0
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getGmUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "guid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 68
    :cond_0
    const-string v6, "^ FFQNET: Invalid setup. Aborting header compilation"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const/4 v6, 0x0

    .line 98
    :goto_0
    monitor-exit v8

    return-object v6

    .line 72
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;

    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkBase;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, p0, v6, p1, p2}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 80
    .local v2, "headerUtils":Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;
    invoke-virtual {v2}, Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;->getHeaderList()Ljava/util/List;

    move-result-object v3

    .line 82
    .local v3, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 83
    .local v1, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->formatHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 65
    .end local v0    # "guid":Ljava/lang/String;
    .end local v1    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "headerUtils":Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;
    .end local v3    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    .line 98
    .restart local v0    # "guid":Ljava/lang/String;
    .restart local v2    # "headerUtils":Lcom/genie_connect/android/net/providers/NetworkHeaderUtils;
    .restart local v3    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 103
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 105
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 108
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 109
    const/4 v3, 0x1

    .line 120
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v3

    .line 115
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    const-string v4, "^ FFQNET: isConnected() = false - cm is null!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "^ FFQNET: isConnected() = false - error!"

    invoke-static {v4, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private methodPost()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 203
    :try_start_0
    iget-object v8, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-virtual {v8}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-virtual {v9}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "targetUrl":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FAVQNET: POST URL : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-virtual {v9}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 211
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 212
    .local v1, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v2}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->addRequestHeaders(Lorg/apache/http/HttpRequest;)V

    .line 215
    iget-object v8, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-virtual {v8}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestBody()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->convertToHttpEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 218
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 220
    .local v4, "res":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 222
    .local v3, "line":Lorg/apache/http/StatusLine;
    if-eqz v3, :cond_0

    .line 223
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 224
    .local v5, "responseCode":I
    invoke-static {v2, v5}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lorg/apache/http/client/methods/HttpRequestBase;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 225
    const/4 v7, 0x1

    .line 235
    .end local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "line":Lorg/apache/http/StatusLine;
    .end local v4    # "res":Lorg/apache/http/HttpResponse;
    .end local v5    # "responseCode":I
    .end local v6    # "targetUrl":Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 206
    :cond_1
    iget-object v8, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-virtual {v8}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestTargetUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .restart local v6    # "targetUrl":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v6    # "targetUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FFQNET: methodPost(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public send()Z
    .locals 2

    .prologue
    .line 240
    const-string v0, "POST"

    iget-object v1, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->mItem:Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-virtual {v1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->methodPost()Z

    move-result v0

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
