.class public Lcom/julysystems/appx/AppXURLRequestTask;
.super Landroid/os/AsyncTask;
.source "AppXURLRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static URL_SUFFIX_DEVICEHASH:Ljava/lang/String;

.field private static cookieManager:Landroid/webkit/CookieManager;

.field private static cookieSyncManager:Landroid/webkit/CookieSyncManager;

.field private static requestInProgress:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/julysystems/appx/AppXURLRequestTask;",
            ">;"
        }
    .end annotation
.end field

.field private static requestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/julysystems/appx/AppXURLRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private redirectUrl:Ljava/lang/String;

.field private request:Lcom/julysystems/appx/AppXURLRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "&uidType=IMEI&appXVersion=1.2.5"

    sput-object v0, Lcom/julysystems/appx/AppXURLRequestTask;->URL_SUFFIX_DEVICEHASH:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXURLRequestTask;->requestQueue:Ljava/util/LinkedList;

    .line 30
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    sput-object v0, Lcom/julysystems/appx/AppXURLRequestTask;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    .line 31
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    sput-object v0, Lcom/julysystems/appx/AppXURLRequestTask;->cookieManager:Landroid/webkit/CookieManager;

    return-void
.end method

.method public constructor <init>(Lcom/julysystems/appx/AppXURLRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/julysystems/appx/AppXURLRequest;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->redirectUrl:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->errorMessage:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    .line 38
    return-void
.end method

.method public static addRequest(Lcom/julysystems/appx/AppXURLRequest;)V
    .locals 9
    .param p0, "request"    # Lcom/julysystems/appx/AppXURLRequest;

    .prologue
    const/4 v6, 0x0

    .line 41
    instance-of v5, p0, Lcom/julysystems/appx/AppXPageRequest;

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 42
    check-cast v2, Lcom/julysystems/appx/AppXPageRequest;

    .line 43
    .local v2, "req":Lcom/julysystems/appx/AppXPageRequest;
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXPageRequest;->isAutorefreshOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 44
    invoke-static {v6}, Lcom/julysystems/appx/AppXURLRequestTask;->cancelPendingPageRequests(Z)V

    .line 49
    .end local v2    # "req":Lcom/julysystems/appx/AppXPageRequest;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXURLRequest;->isForceRequest()Z

    move-result v5

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/julysystems/appx/AppXConstants;->isCachingEnabled:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXURLRequest;->getCacheDuration()I

    move-result v5

    if-lez v5, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/julysystems/appx/AppXCache;->getFromCache(Ljava/lang/String;)Lcom/julysystems/appx/AppXCacheItem;

    move-result-object v0

    .line 51
    .local v0, "cache":Lcom/julysystems/appx/AppXCacheItem;
    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXCacheItem;->getData()[B

    move-result-object v1

    .line 53
    .local v1, "data":[B
    if-eqz v1, :cond_3

    .line 55
    :try_start_0
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXCacheItem;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/julysystems/appx/AppXUtils;->processDataStartTime:J

    .line 57
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/julysystems/appx/AppXURLRequest;->processData([BZ)Z

    move-result v3

    .line 58
    .local v3, "sucess":Z
    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXURLRequest;->postExecute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "cache":Lcom/julysystems/appx/AppXCacheItem;
    .end local v1    # "data":[B
    .end local v3    # "sucess":Z
    :cond_1
    :goto_1
    return-void

    .line 46
    .restart local v2    # "req":Lcom/julysystems/appx/AppXPageRequest;
    :cond_2
    invoke-static {v6}, Lcom/julysystems/appx/AppXURLRequestTask;->cancelPendingRequests(Z)V

    goto :goto_0

    .line 62
    .end local v2    # "req":Lcom/julysystems/appx/AppXPageRequest;
    .restart local v0    # "cache":Lcom/julysystems/appx/AppXCacheItem;
    .restart local v1    # "data":[B
    :catch_0
    move-exception v5

    .line 68
    .end local v0    # "cache":Lcom/julysystems/appx/AppXCacheItem;
    .end local v1    # "data":[B
    :cond_3
    sget-object v6, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    monitor-enter v6

    .line 69
    :try_start_1
    sget-object v5, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    const/16 v7, 0x8

    if-ge v5, v7, :cond_5

    sget-object v5, Lcom/julysystems/appx/AppXURLRequestTask;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 70
    new-instance v4, Lcom/julysystems/appx/AppXURLRequestTask;

    invoke-direct {v4, p0}, Lcom/julysystems/appx/AppXURLRequestTask;-><init>(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 71
    .local v4, "urlRequestTask":Lcom/julysystems/appx/AppXURLRequestTask;
    sget-object v5, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v5, v7, :cond_4

    .line 73
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v7}, Lcom/julysystems/appx/AppXURLRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    :goto_2
    const-string v5, "AppXURLRequestTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Executing "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v8}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v4    # "urlRequestTask":Lcom/julysystems/appx/AppXURLRequestTask;
    :goto_3
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 75
    .restart local v4    # "urlRequestTask":Lcom/julysystems/appx/AppXURLRequestTask;
    :cond_4
    const/4 v5, 0x0

    :try_start_2
    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/julysystems/appx/AppXURLRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 79
    .end local v4    # "urlRequestTask":Lcom/julysystems/appx/AppXURLRequestTask;
    :cond_5
    sget-object v5, Lcom/julysystems/appx/AppXURLRequestTask;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static cancelPendingPageRequests(Z)V
    .locals 7
    .param p0, "rescheduleAutoRefresh"    # Z

    .prologue
    .line 84
    const-string v2, "Cancel request"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v3, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    monitor-enter v3

    .line 86
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 87
    .local v0, "pgRequests":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/julysystems/appx/AppXURLRequestTask;>;"
    sget-object v2, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    sget-object v2, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 85
    monitor-exit v3

    .line 99
    return-void

    .line 87
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/julysystems/appx/AppXURLRequestTask;

    .line 88
    .local v1, "r":Lcom/julysystems/appx/AppXURLRequestTask;
    iget-object v4, v1, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    instance-of v4, v4, Lcom/julysystems/appx/AppXPageRequest;

    if-eqz v4, :cond_0

    .line 89
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/julysystems/appx/AppXURLRequestTask;->cancel(Z)Z

    .line 90
    iget-object v4, v1, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    if-eqz v4, :cond_2

    .line 91
    const-string v4, "cancelPendingPageRequests"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Canceling page request "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v6}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v4, v1, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v4}, Lcom/julysystems/appx/AppXURLRequest;->cancel()V

    .line 94
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v0    # "pgRequests":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/julysystems/appx/AppXURLRequestTask;>;"
    .end local v1    # "r":Lcom/julysystems/appx/AppXURLRequestTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static cancelPendingRequests(Z)V
    .locals 6
    .param p0, "rescheduleAutoRefresh"    # Z

    .prologue
    .line 102
    const-string v1, "Cancel request"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v2, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    monitor-enter v2

    .line 105
    :try_start_0
    sget-object v1, Lcom/julysystems/appx/AppXURLRequestTask;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    sget-object v1, Lcom/julysystems/appx/AppXURLRequestTask;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 109
    sget-object v1, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    sget-object v1, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 104
    monitor-exit v2

    .line 118
    return-void

    .line 105
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXURLRequest;

    .line 106
    .local v0, "r":Lcom/julysystems/appx/AppXURLRequest;
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXURLRequest;->cancel()V

    goto :goto_0

    .line 104
    .end local v0    # "r":Lcom/julysystems/appx/AppXURLRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 109
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXURLRequestTask;

    .line 110
    .local v0, "r":Lcom/julysystems/appx/AppXURLRequestTask;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/julysystems/appx/AppXURLRequestTask;->cancel(Z)Z

    .line 111
    iget-object v3, v0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    if-eqz v3, :cond_0

    .line 112
    const-string v3, "cancelPendingRequests"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Canceling request "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v3, v0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v3}, Lcom/julysystems/appx/AppXURLRequest;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getServerData(Lcom/julysystems/appx/AppXURLRequest;)V
    .locals 26
    .param p1, "request"    # Lcom/julysystems/appx/AppXURLRequest;

    .prologue
    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXURLRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v10

    .line 336
    .local v10, "httpConn":Ljava/net/HttpURLConnection;
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXURLRequest;->isCancelled()Z

    move-result v20

    if-nez v20, :cond_0

    if-nez v10, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    :try_start_0
    const-string v20, "cache-control"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "cacheDuration":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 341
    const-string v20, "max-age="

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 343
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 344
    .local v15, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 345
    .local v13, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v20

    if-nez v20, :cond_8

    .line 360
    .end local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    sget-boolean v20, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v20, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/julysystems/appx/AppXPageRequest;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/julysystems/appx/AppXURLRequest;->start:J

    .line 363
    :cond_4
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 364
    .local v11, "is":Ljava/io/InputStream;
    const-string v20, "Content-Encoding"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, "contentEncoding":Ljava/lang/String;
    const-string v20, "gzip"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 366
    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v11    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    move-object v11, v12

    .line 368
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :cond_5
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v20

    const/16 v21, 0x1000

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 369
    .local v16, "len":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    move/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 370
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v11, v4}, Lcom/julysystems/appx/AppXUtils;->copyStream(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    .line 371
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 372
    .local v8, "data":[B
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 374
    sget-boolean v20, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v20, :cond_6

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/julysystems/appx/AppXPageRequest;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 375
    sget-object v20, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "Read Data : "

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/julysystems/appx/AppXURLRequest;->start:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sput-wide v20, Lcom/julysystems/appx/AppXUtils;->processDataStartTime:J

    .line 379
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/julysystems/appx/AppXURLRequest;->processData([BZ)Z

    move-result v18

    .line 380
    .local v18, "validData":Z
    if-eqz v18, :cond_7

    sget-boolean v20, Lcom/julysystems/appx/AppX;->histroyRequest:Z

    if-nez v20, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v20

    const-string v21, "ih=1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v20

    if-nez v20, :cond_7

    .line 382
    if-nez v6, :cond_a

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXURLRequest;->getCacheDuration()I

    move-result v5

    .line 383
    .local v5, "cacheDur":I
    :goto_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/julysystems/appx/AppXImageRequest;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v8, v5}, Lcom/julysystems/appx/AppXCache;->addToPermanentCache(Ljava/lang/String;[BI)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 402
    .end local v5    # "cacheDur":I
    :cond_7
    :goto_3
    if-eqz v10, :cond_0

    .line 404
    :try_start_4
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 405
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 346
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "contentEncoding":Ljava/lang/String;
    .end local v8    # "data":[B
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v16    # "len":I
    .end local v18    # "validData":Z
    .restart local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v15    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    :try_start_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 347
    .local v14, "key":Ljava/lang/String;
    const-string v20, "Set-Cookie"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 348
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 349
    .local v19, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    sput-object v20, Lcom/julysystems/appx/AppXURLRequest;->cookieHeaders:Ljava/util/List;

    .line 350
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_9
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 351
    .local v17, "val":Ljava/lang/String;
    sget-object v21, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    if-eqz v21, :cond_9

    .line 352
    sget-object v21, Lcom/julysystems/appx/AppXURLRequestTask;->cookieManager:Landroid/webkit/CookieManager;

    sget-object v22, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 356
    .end local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "val":Ljava/lang/String;
    .end local v19    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 357
    .local v9, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v20, "URLRequestTask"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Expections handling response headers "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 392
    .end local v6    # "cacheDuration":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 393
    .local v9, "e":Ljava/io/IOException;
    :try_start_7
    sget-object v20, Lcom/julysystems/appx/AppXConstants;->NETWORK_SERVER_ERR_MSG:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/julysystems/appx/AppXURLRequestTask;->errorMessage:Ljava/lang/String;

    .line 400
    const-string v20, "URLRequestTask"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Expections handling http response ::"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 402
    if-eqz v10, :cond_0

    .line 404
    :try_start_8
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 405
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 382
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "cacheDuration":Ljava/lang/String;
    .restart local v7    # "contentEncoding":Ljava/lang/String;
    .restart local v8    # "data":[B
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v16    # "len":I
    .restart local v18    # "validData":Z
    :cond_a
    :try_start_9
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_2

    .line 386
    .restart local v5    # "cacheDur":I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v8, v5}, Lcom/julysystems/appx/AppXCache;->addToCache(Ljava/lang/String;[BI)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 387
    .end local v5    # "cacheDur":I
    :catch_2
    move-exception v20

    goto/16 :goto_3

    .line 401
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "cacheDuration":Ljava/lang/String;
    .end local v7    # "contentEncoding":Ljava/lang/String;
    .end local v8    # "data":[B
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v16    # "len":I
    .end local v18    # "validData":Z
    :catchall_0
    move-exception v20

    .line 402
    if-eqz v10, :cond_c

    .line 404
    :try_start_a
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 405
    const/4 v10, 0x0

    .line 409
    :cond_c
    :goto_5
    throw v20

    .line 406
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v20

    goto/16 :goto_0

    .end local v9    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v21

    goto :goto_5

    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "cacheDuration":Ljava/lang/String;
    .restart local v7    # "contentEncoding":Ljava/lang/String;
    .restart local v8    # "data":[B
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v16    # "len":I
    .restart local v18    # "validData":Z
    :catch_5
    move-exception v20

    goto/16 :goto_0
.end method

.method private openHttpConnection(Lcom/julysystems/appx/AppXURLRequest;I)I
    .locals 20
    .param p1, "request"    # Lcom/julysystems/appx/AppXURLRequest;
    .param p2, "retry"    # I

    .prologue
    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/julysystems/appx/AppXURLRequestTask;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 238
    .local v13, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXURLRequestTask;->redirectUrl:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXURLRequestTask;->redirectUrl:Ljava/lang/String;

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_c

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXURLRequestTask;->redirectUrl:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_0
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/julysystems/appx/AppXURLRequestTask;->redirectUrl:Ljava/lang/String;

    .line 240
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXURLRequestTask;->redirectUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/julysystems/appx/AppXURLRequestTask;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "iPhoneMode=app&appMode=true&platform=android&appXVersion="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "1.2.5"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 243
    :cond_0
    const/4 v2, 0x0

    .line 245
    .local v2, "connectionUrl":Ljava/lang/String;
    sget-object v14, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    if-eqz v14, :cond_1

    sget-object v14, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-static {v13}, Lcom/julysystems/appx/AppXUtils;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 246
    :cond_1
    move-object v2, v13

    .line 255
    :goto_1
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/julysystems/appx/AppXPageRequest;

    if-eqz v14, :cond_2

    .line 256
    const-string v14, "Opening connection url is "

    invoke-static {v14, v2}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 261
    .local v10, "startView":J
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 262
    .local v6, "httpConn":Ljava/net/HttpURLConnection;
    sget-boolean v14, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/julysystems/appx/AppXPageRequest;

    if-eqz v14, :cond_3

    .line 263
    const/4 v14, 0x0

    sput-object v14, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    .line 264
    sget-object v14, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "Create connection : "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    .line 266
    :cond_3
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/julysystems/appx/AppXBackgroundRequest;

    if-eqz v14, :cond_4

    .line 267
    const-string v14, "POST"

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 268
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 269
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 272
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v12, "ua":Ljava/lang/StringBuilder;
    const-string v14, "Mozilla/5.0 (Linux; U; Android "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    sget-object v14, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    sget-object v14, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v14, "en-us; dream) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v14, "User-Agent"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v14, "Accept-Encoding"

    const-string v15, "gzip"

    invoke-virtual {v6, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v14, "x-july-client"

    const-string v15, "appx"

    invoke-virtual {v6, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/julysystems/appx/AppXRegIdBackgroundRequest;

    if-eqz v14, :cond_5

    .line 281
    sget-object v14, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 282
    .local v8, "regId":Ljava/lang/String;
    if-eqz v8, :cond_5

    const-string v14, ""

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 283
    const-string/jumbo v14, "x-july-androidregid"

    const-string v15, "appx"

    invoke-virtual {v6, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v8    # "regId":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .line 286
    .local v3, "cookie":Ljava/lang/String;
    sget-object v14, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    if-eqz v14, :cond_6

    .line 287
    sget-object v14, Lcom/julysystems/appx/AppXURLRequestTask;->cookieManager:Landroid/webkit/CookieManager;

    sget-object v15, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 289
    const-string v14, "Cookie"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_7
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/julysystems/appx/AppXBackgroundRequest;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v14, :cond_8

    .line 293
    :try_start_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/julysystems/appx/AppXURLRequest;->postParams:Ljava/lang/String;

    if-eqz v14, :cond_8

    .line 294
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 295
    .local v7, "os":Ljava/io/OutputStream;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/julysystems/appx/AppXURLRequest;->postParams:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V

    .line 296
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 305
    .end local v7    # "os":Ljava/io/OutputStream;
    :cond_8
    :goto_2
    :try_start_2
    sget-boolean v14, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v14, :cond_9

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/julysystems/appx/AppXPageRequest;

    if-eqz v14, :cond_9

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/julysystems/appx/AppXURLRequest;->start:J

    .line 308
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/julysystems/appx/AppXURLRequest;->setConnection(Ljava/net/HttpURLConnection;)V

    .line 309
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 310
    .local v9, "responseCode":I
    sget-boolean v14, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v14, :cond_a

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/julysystems/appx/AppXPageRequest;

    if-eqz v14, :cond_a

    .line 311
    sget-object v14, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "Connection URL:  "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    .line 312
    sget-object v14, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "Get Responsecode : "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/julysystems/appx/AppXURLRequest;->start:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    .line 315
    :cond_a
    const/16 v14, 0x12e

    if-ne v9, v14, :cond_b

    .line 316
    const-string v14, "Location"

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/julysystems/appx/AppXURLRequestTask;->redirectUrl:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 331
    .end local v3    # "cookie":Ljava/lang/String;
    .end local v6    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v9    # "responseCode":I
    .end local v10    # "startView":J
    .end local v12    # "ua":Ljava/lang/StringBuilder;
    :cond_b
    :goto_3
    return v9

    .line 239
    .end local v2    # "connectionUrl":Ljava/lang/String;
    :cond_c
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXURLRequestTask;->redirectUrl:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 248
    .restart local v2    # "connectionUrl":Ljava/lang/String;
    :cond_d
    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_e

    .line 249
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 252
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/julysystems/appx/AppXDeviceUtils;->getmd5HashUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/julysystems/appx/AppXURLRequestTask;->URL_SUFFIX_DEVICEHASH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&network="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/julysystems/appx/AppXDeviceUtils;->getNetworkType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&ip="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/julysystems/appx/AppXDeviceUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&mac="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/julysystems/appx/AppXDeviceUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 251
    :cond_e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 298
    .restart local v3    # "cookie":Ljava/lang/String;
    .restart local v6    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v10    # "startView":J
    .restart local v12    # "ua":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 299
    .local v4, "e":Ljava/net/UnknownHostException;
    :try_start_3
    const-string v14, "URLRequestTask"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 319
    .end local v3    # "cookie":Ljava/lang/String;
    .end local v4    # "e":Ljava/net/UnknownHostException;
    .end local v6    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v10    # "startView":J
    .end local v12    # "ua":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    .line 320
    .restart local v4    # "e":Ljava/net/UnknownHostException;
    const/4 v14, 0x3

    move/from16 v0, p2

    if-ne v0, v14, :cond_f

    .line 321
    const/4 v9, -0x2

    goto/16 :goto_3

    .line 300
    .end local v4    # "e":Ljava/net/UnknownHostException;
    .restart local v3    # "cookie":Ljava/lang/String;
    .restart local v6    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v10    # "startView":J
    .restart local v12    # "ua":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v4

    .line 301
    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "URLRequestTask"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 322
    .end local v3    # "cookie":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v10    # "startView":J
    .end local v12    # "ua":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v5

    .line 328
    .local v5, "e1":Ljava/lang/Exception;
    const-string v14, "URLRequestTask"

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v5    # "e1":Ljava/lang/Exception;
    :cond_f
    const/4 v9, -0x1

    goto/16 :goto_3
.end method

.method private resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 414
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mailto:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static showAlert(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v0, 0x0

    sput-boolean v0, Lcom/julysystems/appx/AppXUtils;->hideLoader:Z

    .line 422
    invoke-static {}, Lcom/julysystems/appx/AppXUtils;->dismissLoader()V

    .line 423
    sget-object v0, Lcom/julysystems/appx/AppX;->mAppXNetworkListner:Lcom/julysystems/appx/AppXNetworkListner;

    if-eqz v0, :cond_0

    .line 424
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->networkError(Ljava/lang/String;)V

    .line 425
    :cond_0
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 426
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 122
    const-string v6, "doInBackground"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "bReturn":Z
    :try_start_0
    iget-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    if-eqz v6, :cond_2

    .line 126
    const-string v6, "request not null"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v6}, Lcom/julysystems/appx/AppXURLRequest;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 128
    const-string v6, "request not cancelled "

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    const/4 v4, -0x1

    .line 131
    .local v4, "responseCode":I
    :try_start_1
    const-string v6, "Opening URL"

    iget-object v7, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v7}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x4

    if-lt v2, v6, :cond_1

    .line 155
    :goto_1
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    instance-of v6, v6, Lcom/julysystems/appx/AppXPageRequest;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v6}, Lcom/julysystems/appx/AppXURLRequest;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 156
    const/4 v6, -0x2

    if-ne v4, v6, :cond_9

    .line 157
    sget-object v6, Lcom/julysystems/appx/AppXConstants;->NETWORK_ERR_MSG:Ljava/lang/String;

    iput-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->errorMessage:Ljava/lang/String;

    .line 173
    :goto_2
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 192
    sget-object v7, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    monitor-enter v7

    .line 193
    :try_start_2
    sget-object v8, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v8, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 195
    :try_start_3
    sget-object v8, Lcom/julysystems/appx/AppXURLRequestTask;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/julysystems/appx/AppXURLRequest;

    .line 196
    .local v3, "nextRequest":Lcom/julysystems/appx/AppXURLRequest;
    if-eqz v3, :cond_0

    .line 197
    new-instance v5, Lcom/julysystems/appx/AppXURLRequestTask;

    invoke-direct {v5, v3}, Lcom/julysystems/appx/AppXURLRequestTask;-><init>(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 198
    .local v5, "urlRequestTask":Lcom/julysystems/appx/AppXURLRequestTask;
    sget-object v8, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v8}, Lcom/julysystems/appx/AppXURLRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 192
    .end local v3    # "nextRequest":Lcom/julysystems/appx/AppXURLRequest;
    .end local v5    # "urlRequestTask":Lcom/julysystems/appx/AppXURLRequestTask;
    :cond_0
    :goto_3
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 190
    .end local v2    # "i":I
    .end local v4    # "responseCode":I
    :goto_4
    return-object v6

    .line 133
    .restart local v2    # "i":I
    .restart local v4    # "responseCode":I
    :cond_1
    :try_start_5
    const-string v6, "Attempting connection "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v8}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v6}, Lcom/julysystems/appx/AppXURLRequest;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 135
    iget-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-direct {p0, v6, v2}, Lcom/julysystems/appx/AppXURLRequestTask;->openHttpConnection(Lcom/julysystems/appx/AppXURLRequest;I)I

    move-result v4

    .line 136
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_4

    .line 137
    const-string v6, "Got thre resp code as 200 "

    iget-object v7, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v7}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-direct {p0, v6}, Lcom/julysystems/appx/AppXURLRequestTask;->getServerData(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 139
    const/4 v0, 0x1

    .line 140
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->redirectUrl:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 175
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "URLRequestTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Expections handling response outside wait  :: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "responseCode":I
    :cond_2
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v6

    .line 192
    sget-object v7, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    monitor-enter v7

    .line 193
    :try_start_7
    sget-object v8, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v8, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 195
    :try_start_8
    sget-object v8, Lcom/julysystems/appx/AppXURLRequestTask;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/julysystems/appx/AppXURLRequest;

    .line 196
    .restart local v3    # "nextRequest":Lcom/julysystems/appx/AppXURLRequest;
    if-eqz v3, :cond_3

    .line 197
    new-instance v5, Lcom/julysystems/appx/AppXURLRequestTask;

    invoke-direct {v5, v3}, Lcom/julysystems/appx/AppXURLRequestTask;-><init>(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 198
    .restart local v5    # "urlRequestTask":Lcom/julysystems/appx/AppXURLRequestTask;
    sget-object v8, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v8}, Lcom/julysystems/appx/AppXURLRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 192
    .end local v3    # "nextRequest":Lcom/julysystems/appx/AppXURLRequest;
    .end local v5    # "urlRequestTask":Lcom/julysystems/appx/AppXURLRequestTask;
    :cond_3
    :goto_6
    :try_start_9
    monitor-exit v7

    goto/16 :goto_4

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v6

    .line 143
    .restart local v2    # "i":I
    .restart local v4    # "responseCode":I
    :cond_4
    :try_start_a
    const-string v6, "Got thre resp code as "

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    iget-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    instance-of v6, v6, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;

    if-eqz v6, :cond_5

    .line 145
    invoke-static {}, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->retryRegistration()V

    .line 147
    :cond_5
    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    .line 132
    :cond_6
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 152
    :cond_7
    const-string v6, "Request is cancelled. Won\'t retry"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    .line 191
    .end local v2    # "i":I
    .end local v4    # "responseCode":I
    :catchall_1
    move-exception v6

    .line 192
    sget-object v7, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    monitor-enter v7

    .line 193
    :try_start_b
    sget-object v8, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v8, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 195
    :try_start_c
    sget-object v8, Lcom/julysystems/appx/AppXURLRequestTask;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/julysystems/appx/AppXURLRequest;

    .line 196
    .restart local v3    # "nextRequest":Lcom/julysystems/appx/AppXURLRequest;
    if-eqz v3, :cond_8

    .line 197
    new-instance v5, Lcom/julysystems/appx/AppXURLRequestTask;

    invoke-direct {v5, v3}, Lcom/julysystems/appx/AppXURLRequestTask;-><init>(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 198
    .restart local v5    # "urlRequestTask":Lcom/julysystems/appx/AppXURLRequestTask;
    sget-object v8, Lcom/julysystems/appx/AppXURLRequestTask;->requestInProgress:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v8}, Lcom/julysystems/appx/AppXURLRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 192
    .end local v3    # "nextRequest":Lcom/julysystems/appx/AppXURLRequest;
    .end local v5    # "urlRequestTask":Lcom/julysystems/appx/AppXURLRequestTask;
    :cond_8
    :goto_8
    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 205
    throw v6

    .line 165
    .restart local v2    # "i":I
    .restart local v4    # "responseCode":I
    :cond_9
    :try_start_e
    sget-object v6, Lcom/julysystems/appx/AppXConstants;->CONNECTION_ERR_MSG:Ljava/lang/String;

    iput-object v6, p0, Lcom/julysystems/appx/AppXURLRequestTask;->errorMessage:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    .line 201
    :catch_1
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v6

    .line 186
    .end local v2    # "i":I
    .end local v4    # "responseCode":I
    :cond_a
    :try_start_10
    const-string v6, "request is cancelled "

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_5

    .line 201
    :catch_2
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_6

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw v6
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXURLRequestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "onCancelled"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXURLRequest;->cancel()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v0, "onCancelled"

    const-string/jumbo v1, "url is null"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "onPostExecute"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing onpostexecute request not null "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXURLRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXURLRequest;->postExecute()V

    .line 214
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXURLRequest;->cancel()V

    .line 221
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    .line 222
    return-void

    .line 216
    :cond_0
    const-string v0, "onPostExecute"

    const-string v1, "Executing onpostexecute request isnull "

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->errorMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/julysystems/appx/AppXURLRequestTask;->showAlert(Ljava/lang/String;)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequestTask;->request:Lcom/julysystems/appx/AppXURLRequest;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXURLRequest;->onFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXURLRequestTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
