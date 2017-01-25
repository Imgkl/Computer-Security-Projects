.class public abstract Lcom/github/ignition/support/http/IgnitedHttpRequestBase;
.super Ljava/lang/Object;
.source "IgnitedHttpRequestBase.java"

# interfaces
.implements Lcom/github/ignition/support/http/IgnitedHttpRequest;
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/ignition/support/http/IgnitedHttpRequest;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Lcom/github/ignition/support/http/IgnitedHttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field protected static final HTTP_CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final MAX_RETRIES:I = 0x5


# instance fields
.field private executionCount:I

.field protected expectedStatusCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

.field protected ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

.field protected maxRetries:I

.field private oldConnTimeout:I

.field private oldSocketTimeout:I

.field protected request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private timeoutChanged:Z


# direct methods
.method constructor <init>(Lcom/github/ignition/support/http/IgnitedHttp;)V
    .locals 1
    .param p1, "http"    # Lcom/github/ignition/support/http/IgnitedHttp;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->expectedStatusCodes:Ljava/util/Set;

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->maxRetries:I

    .line 61
    iput-object p1, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    .line 62
    invoke-virtual {p1}, Lcom/github/ignition/support/http/IgnitedHttp;->getHttpClient()Lorg/apache/http/impl/client/AbstractHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 63
    return-void
.end method

.method private retryRequest(Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;Ljava/io/IOException;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 2
    .param p1, "retryHandler"    # Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;
    .param p2, "cause"    # Ljava/io/IOException;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 149
    sget-object v0, Lcom/github/ignition/support/http/IgnitedHttp;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Intercepting exception that wasn\'t handled by HttpClient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->executionCount:I

    invoke-virtual {p1}, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->getTimesRetried()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->executionCount:I

    .line 151
    iget v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->executionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->executionCount:I

    invoke-virtual {p1, p2, v0, p3}, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic expecting([Ljava/lang/Integer;)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Integer;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->expecting([Ljava/lang/Integer;)Lcom/github/ignition/support/http/IgnitedHttpRequestBase;

    move-result-object v0

    return-object v0
.end method

.method public varargs expecting([Ljava/lang/Integer;)Lcom/github/ignition/support/http/IgnitedHttpRequestBase;
    .locals 2
    .param p1, "statusCodes"    # [Ljava/lang/Integer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->expectedStatusCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    return-object p0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 156
    .local v3, "status":I
    iget-object v4, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->expectedStatusCodes:Ljava/util/Set;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->expectedStatusCodes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->expectedStatusCodes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected status code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 161
    :cond_0
    new-instance v0, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;

    invoke-direct {v0, p1}, Lcom/github/ignition/support/http/IgnitedHttpResponseImpl;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 162
    .local v0, "bhttpr":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    iget-object v4, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v4}, Lcom/github/ignition/support/http/IgnitedHttp;->getResponseCache()Lcom/github/ignition/support/http/cache/HttpResponseCache;

    move-result-object v1

    .line 163
    .local v1, "responseCache":Lcom/github/ignition/support/http/cache/HttpResponseCache;
    if-eqz v1, :cond_1

    .line 164
    new-instance v2, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    invoke-interface {v0}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getResponseBodyAsBytes()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;-><init>(I[B)V

    .line 165
    .local v2, "responseData":Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;
    invoke-virtual {p0}, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/github/ignition/support/http/cache/HttpResponseCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v2    # "responseData":Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retries(I)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->retries(I)Lcom/github/ignition/support/http/IgnitedHttpRequestBase;

    move-result-object v0

    return-object v0
.end method

.method public retries(I)Lcom/github/ignition/support/http/IgnitedHttpRequestBase;
    .locals 1
    .param p1, "retries"    # I

    .prologue
    const/4 v0, 0x5

    .line 79
    if-gez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->maxRetries:I

    .line 86
    :goto_0
    return-object p0

    .line 81
    :cond_0
    if-le p1, v0, :cond_1

    .line 82
    iput v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->maxRetries:I

    goto :goto_0

    .line 84
    :cond_1
    iput p1, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->maxRetries:I

    goto :goto_0
.end method

.method public send()Lcom/github/ignition/support/http/IgnitedHttpResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v6, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;

    iget v7, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->maxRetries:I

    invoke-direct {v6, v7}, Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;-><init>(I)V

    .line 108
    .local v6, "retryHandler":Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;
    iget-object v7, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v7, v6}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 110
    new-instance v2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 118
    .local v2, "context":Lorg/apache/http/protocol/HttpContext;
    const/4 v5, 0x1

    .line 119
    .local v5, "retry":Z
    const/4 v0, 0x0

    .local v0, "cause":Ljava/io/IOException;
    move-object v1, v0

    .line 120
    .end local v0    # "cause":Ljava/io/IOException;
    .local v1, "cause":Ljava/io/IOException;
    :goto_0
    if-eqz v5, :cond_3

    .line 122
    :try_start_0
    iget-object v7, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v7, v8, p0, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/ignition/support/http/IgnitedHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-boolean v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->timeoutChanged:Z

    if-eqz v8, :cond_0

    .line 135
    iget-object v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    iget v9, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->oldConnTimeout:I

    invoke-virtual {v8, v9}, Lcom/github/ignition/support/http/IgnitedHttp;->setConnectionTimeout(I)V

    .line 136
    iget-object v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    iget v9, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->oldSocketTimeout:I

    invoke-virtual {v8, v9}, Lcom/github/ignition/support/http/IgnitedHttp;->setSocketTimeout(I)V

    :cond_0
    return-object v7

    .line 123
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/io/IOException;
    move-object v0, v3

    .line 125
    .end local v1    # "cause":Ljava/io/IOException;
    .restart local v0    # "cause":Ljava/io/IOException;
    :try_start_1
    invoke-direct {p0, v6, v0, v2}, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->retryRequest(Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;Ljava/io/IOException;Lorg/apache/http/protocol/HttpContext;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 134
    iget-boolean v7, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->timeoutChanged:Z

    if-eqz v7, :cond_1

    .line 135
    iget-object v7, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    iget v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->oldConnTimeout:I

    invoke-virtual {v7, v8}, Lcom/github/ignition/support/http/IgnitedHttp;->setConnectionTimeout(I)V

    .line 136
    iget-object v7, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    iget v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->oldSocketTimeout:I

    invoke-virtual {v7, v8}, Lcom/github/ignition/support/http/IgnitedHttp;->setSocketTimeout(I)V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    move-object v1, v0

    .end local v0    # "cause":Ljava/io/IOException;
    .restart local v1    # "cause":Ljava/io/IOException;
    goto :goto_0

    .line 126
    :catch_1
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NPE in HttpClient"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .end local v1    # "cause":Ljava/io/IOException;
    .restart local v0    # "cause":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v6, v0, v2}, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->retryRequest(Lcom/github/ignition/support/http/IgnitedHttpRequestRetryHandler;Ljava/io/IOException;Lorg/apache/http/protocol/HttpContext;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    .line 134
    iget-boolean v7, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->timeoutChanged:Z

    if-eqz v7, :cond_1

    .line 135
    iget-object v7, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    iget v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->oldConnTimeout:I

    invoke-virtual {v7, v8}, Lcom/github/ignition/support/http/IgnitedHttp;->setConnectionTimeout(I)V

    .line 136
    iget-object v7, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    iget v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->oldSocketTimeout:I

    invoke-virtual {v7, v8}, Lcom/github/ignition/support/http/IgnitedHttp;->setSocketTimeout(I)V

    goto :goto_1

    .line 134
    .end local v0    # "cause":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "cause":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    move-object v0, v1

    .end local v1    # "cause":Ljava/io/IOException;
    .restart local v0    # "cause":Ljava/io/IOException;
    :goto_2
    iget-boolean v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->timeoutChanged:Z

    if-eqz v8, :cond_2

    .line 135
    iget-object v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    iget v9, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->oldConnTimeout:I

    invoke-virtual {v8, v9}, Lcom/github/ignition/support/http/IgnitedHttp;->setConnectionTimeout(I)V

    .line 136
    iget-object v8, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    iget v9, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->oldSocketTimeout:I

    invoke-virtual {v8, v9}, Lcom/github/ignition/support/http/IgnitedHttp;->setSocketTimeout(I)V

    :cond_2
    throw v7

    .line 142
    .end local v0    # "cause":Ljava/io/IOException;
    .restart local v1    # "cause":Ljava/io/IOException;
    :cond_3
    new-instance v4, Ljava/net/ConnectException;

    invoke-direct {v4}, Ljava/net/ConnectException;-><init>()V

    .line 143
    .local v4, "ex":Ljava/net/ConnectException;
    invoke-virtual {v4, v1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v4

    .line 134
    .end local v1    # "cause":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/net/ConnectException;
    .restart local v0    # "cause":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method public unwrap()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public withTimeout(I)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    const/16 v2, 0x7530

    .line 90
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->oldSocketTimeout:I

    .line 92
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->oldConnTimeout:I

    .line 96
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v0, p1}, Lcom/github/ignition/support/http/IgnitedHttp;->setSocketTimeout(I)V

    .line 97
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->ignitedHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v0, p1}, Lcom/github/ignition/support/http/IgnitedHttp;->setConnectionTimeout(I)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;->timeoutChanged:Z

    .line 100
    return-object p0
.end method
