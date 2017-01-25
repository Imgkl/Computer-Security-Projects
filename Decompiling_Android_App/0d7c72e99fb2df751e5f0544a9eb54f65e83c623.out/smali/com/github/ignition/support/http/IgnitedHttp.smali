.class public Lcom/github/ignition/support/http/IgnitedHttp;
.super Ljava/lang/Object;
.source "IgnitedHttp.java"


# static fields
.field public static final DEFAULT_HTTP_USER_AGENT:Ljava/lang/String; = "Android/Ignition"

.field public static final DEFAULT_MAX_CONNECTIONS:I = 0x4

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x7530

.field public static final DEFAULT_WAIT_FOR_CONNECTION_TIMEOUT:I = 0x7530

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private defaultHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/ignition/support/http/IgnitedHttp;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->defaultHeaders:Ljava/util/HashMap;

    .line 72
    invoke-virtual {p0}, Lcom/github/ignition/support/http/IgnitedHttp;->setupHttpClient()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->defaultHeaders:Ljava/util/HashMap;

    .line 76
    invoke-virtual {p0}, Lcom/github/ignition/support/http/IgnitedHttp;->setupHttpClient()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/http/IgnitedHttp;->listenForConnectivityChanges(Landroid/content/Context;)V

    .line 78
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 272
    new-instance v0, Lcom/github/ignition/support/http/HttpDelete;

    iget-object v1, p0, Lcom/github/ignition/support/http/IgnitedHttp;->defaultHeaders:Ljava/util/HashMap;

    invoke-direct {v0, p0, p1, v1}, Lcom/github/ignition/support/http/HttpDelete;-><init>(Lcom/github/ignition/support/http/IgnitedHttp;Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public disableResponseCache(Z)V
    .locals 1
    .param p1, "wipe"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

    invoke-virtual {v0}, Lcom/github/ignition/support/http/cache/HttpResponseCache;->clear()V

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

    .line 186
    return-void
.end method

.method public enableResponseCache(IJI)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "expirationInMinutes"    # J
    .param p4, "maxConcurrentThreads"    # I

    .prologue
    .line 147
    new-instance v0, Lcom/github/ignition/support/http/cache/HttpResponseCache;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/github/ignition/support/http/cache/HttpResponseCache;-><init>(IJI)V

    iput-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

    .line 149
    return-void
.end method

.method public enableResponseCache(Landroid/content/Context;IJII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I
    .param p3, "expirationInMinutes"    # J
    .param p5, "maxConcurrentThreads"    # I
    .param p6, "diskCacheStorageDevice"    # I

    .prologue
    .line 173
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/github/ignition/support/http/IgnitedHttp;->enableResponseCache(IJI)V

    .line 174
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

    invoke-virtual {v0, p1, p6}, Lcom/github/ignition/support/http/cache/HttpResponseCache;->enableDiskCache(Landroid/content/Context;I)Z

    .line 175
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cached"    # Z

    .prologue
    .line 249
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

    invoke-virtual {v0, p1}, Lcom/github/ignition/support/http/cache/HttpResponseCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/github/ignition/support/http/cache/CachedHttpRequest;

    iget-object v1, p0, Lcom/github/ignition/support/http/IgnitedHttp;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;

    invoke-direct {v0, v1, p1}, Lcom/github/ignition/support/http/cache/CachedHttpRequest;-><init>(Lcom/github/ignition/support/http/cache/HttpResponseCache;Ljava/lang/String;)V

    .line 252
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/github/ignition/support/http/HttpGet;

    iget-object v1, p0, Lcom/github/ignition/support/http/IgnitedHttp;->defaultHeaders:Ljava/util/HashMap;

    invoke-direct {v0, p0, p1, v1}, Lcom/github/ignition/support/http/HttpGet;-><init>(Lcom/github/ignition/support/http/IgnitedHttp;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public getDefaultHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->defaultHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/impl/client/AbstractHttpClient;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    return-object v0
.end method

.method public declared-synchronized getResponseCache()Lcom/github/ignition/support/http/cache/HttpResponseCache;
    .locals 1

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->responseCache:Lcom/github/ignition/support/http/cache/HttpResponseCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public listenForConnectivityChanges(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/github/ignition/support/http/ConnectionChangedBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/github/ignition/support/http/ConnectionChangedBroadcastReceiver;-><init>(Lcom/github/ignition/support/http/IgnitedHttp;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method public post(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v0, Lcom/github/ignition/support/http/HttpPost;

    iget-object v1, p0, Lcom/github/ignition/support/http/IgnitedHttp;->defaultHeaders:Ljava/util/HashMap;

    invoke-direct {v0, p0, p1, v1}, Lcom/github/ignition/support/http/HttpPost;-><init>(Lcom/github/ignition/support/http/IgnitedHttp;Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "payload"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 260
    new-instance v0, Lcom/github/ignition/support/http/HttpPost;

    iget-object v1, p0, Lcom/github/ignition/support/http/IgnitedHttp;->defaultHeaders:Ljava/util/HashMap;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/github/ignition/support/http/HttpPost;-><init>(Lcom/github/ignition/support/http/IgnitedHttp;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 264
    new-instance v0, Lcom/github/ignition/support/http/HttpPut;

    iget-object v1, p0, Lcom/github/ignition/support/http/IgnitedHttp;->defaultHeaders:Ljava/util/HashMap;

    invoke-direct {v0, p0, p1, v1}, Lcom/github/ignition/support/http/HttpPut;-><init>(Lcom/github/ignition/support/http/IgnitedHttp;Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "payload"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 268
    new-instance v0, Lcom/github/ignition/support/http/HttpPut;

    iget-object v1, p0, Lcom/github/ignition/support/http/IgnitedHttp;->defaultHeaders:Ljava/util/HashMap;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/github/ignition/support/http/HttpPut;-><init>(Lcom/github/ignition/support/http/IgnitedHttp;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public setConnectionTimeout(I)V
    .locals 4
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 289
    return-void
.end method

.method public setDefaultHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->defaultHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public setGzipEncodingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    new-instance v1, Lcom/github/ignition/support/http/gzip/GzipHttpRequestInterceptor;

    invoke-direct {v1}, Lcom/github/ignition/support/http/gzip/GzipHttpRequestInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 124
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    new-instance v1, Lcom/github/ignition/support/http/gzip/GzipHttpResponseInterceptor;

    invoke-direct {v1}, Lcom/github/ignition/support/http/gzip/GzipHttpResponseInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    const-class v1, Lcom/github/ignition/support/http/gzip/GzipHttpRequestInterceptor;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 127
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    const-class v1, Lcom/github/ignition/support/http/gzip/GzipHttpResponseInterceptor;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setHttpClient(Lorg/apache/http/impl/client/AbstractHttpClient;)V
    .locals 0
    .param p1, "httpClient"    # Lorg/apache/http/impl/client/AbstractHttpClient;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 197
    return-void
.end method

.method public setMaximumConnections(I)V
    .locals 1
    .param p1, "maxConnections"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 277
    return-void
.end method

.method public setPortForScheme(Ljava/lang/String;I)V
    .locals 2
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 312
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 313
    .local v0, "_scheme":Lorg/apache/http/conn/scheme/Scheme;
    iget-object v1, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 314
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .param p1, "socketTimeout"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 301
    return-void
.end method

.method protected setupHttpClient()V
    .locals 8

    .prologue
    const/16 v7, 0x1bb

    const/4 v6, 0x4

    .line 81
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 83
    .local v1, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    const-wide/16 v4, 0x7530

    invoke-static {v1, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 84
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v3, v6}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 86
    invoke-static {v1, v6}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    const/16 v3, 0x7530

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 88
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 89
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 90
    const-string v3, "Android/Ignition"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 92
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 93
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 94
    sget v3, Lcom/github/ignition/support/IgnitedDiagnostics;->ANDROID_API_LEVEL:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    .line 95
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v3, v4, v5, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 103
    :goto_0
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 104
    .local v0, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 105
    return-void

    .line 100
    .end local v0    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    :cond_0
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    new-instance v5, Lcom/github/ignition/support/http/ssl/EasySSLSocketFactory;

    invoke-direct {v5}, Lcom/github/ignition/support/http/ssl/EasySSLSocketFactory;-><init>()V

    invoke-direct {v3, v4, v5, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0
.end method

.method public updateProxySettings(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 213
    if-nez p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v6, p0, Lcom/github/ignition/support/http/IgnitedHttp;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 217
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 219
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 220
    .local v2, "nwInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 223
    sget-object v6, Lcom/github/ignition/support/http/IgnitedHttp;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_5

    .line 225
    invoke-static {p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "proxyHost":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 227
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    .line 229
    :cond_2
    invoke-static {p1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v5

    .line 230
    .local v5, "proxyPort":I
    if-ne v5, v8, :cond_3

    .line 231
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    .line 233
    :cond_3
    if-eqz v4, :cond_4

    if-le v5, v8, :cond_4

    .line 234
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 235
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    const-string v6, "http.route.default-proxy"

    invoke-interface {v1, v6, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0

    .line 237
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    :cond_4
    const-string v6, "http.route.default-proxy"

    invoke-interface {v1, v6, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0

    .line 240
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    :cond_5
    const-string v6, "http.route.default-proxy"

    invoke-interface {v1, v6, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method
