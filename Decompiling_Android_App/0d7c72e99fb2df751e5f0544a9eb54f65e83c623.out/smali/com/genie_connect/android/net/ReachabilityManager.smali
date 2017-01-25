.class public Lcom/genie_connect/android/net/ReachabilityManager;
.super Ljava/lang/Object;
.source "ReachabilityManager.java"


# static fields
.field private static final CHECK_ENABLED:Z = false

.field private static final HTTP_TIMEOUT:I = 0x1388

.field private static final MAX_SERVER_VALIDITY_IN_MINUTES:I = 0x3c

.field private static final PRE_AGGREED_CONTENT:Ljava/lang/String; = "helloworld"

.field private static final PRE_AGGREED_CONTENT_PAGE:Ljava/lang/String; = "/login/ping.jsp"

.field private static final SERVER_LIST_ORDER:[I

.field public static final SERVER_SET_CI:I = 0xf

.field public static final SERVER_SET_CLIENT:I = 0xc

.field public static final SERVER_SET_CLIENTTEST:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVER_SET_CSR:I = 0xd

.field public static final SERVER_SET_DIRTY_0:I = 0x6

.field public static final SERVER_SET_DIRTY_1:I = 0x7

.field public static final SERVER_SET_DIRTY_2:I = 0x8

.field public static final SERVER_SET_DIRTY_3:I = 0x9

.field public static final SERVER_SET_DIRTY_4:I = 0x16

.field public static final SERVER_SET_FIX_0:I = 0x11

.field public static final SERVER_SET_FIX_1:I = 0x12

.field public static final SERVER_SET_FIX_2:I = 0x13

.field public static final SERVER_SET_FIX_3:I = 0x14

.field public static final SERVER_SET_FIX_4:I = 0x15

.field public static final SERVER_SET_LOCAL:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVER_SET_LOCAL_DEMO:I = 0x4

.field public static final SERVER_SET_PRODUCTION:I = 0x0

.field public static final SERVER_SET_QA:I = 0xa

.field public static final SERVER_SET_SALES:I = 0xe

.field public static final SERVER_SET_SECURE_ASIA:I = 0x10

.field public static final SERVER_SET_SPRINT:I = 0xb

.field public static final SERVER_SET_SYSTEST:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVER_SET_TEST:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mInstance:Lcom/genie_connect/android/net/ReachabilityManager;

.field private static final sLockObject:Ljava/lang/Object;


# instance fields
.field private volatile mCurrentServer:Ljava/lang/String;

.field private volatile mIsReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mLastCheck:Ljava/util/Calendar;

.field private volatile mSelectedServerSet:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mServer1:Ljava/lang/String;

.field private volatile mServer2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/genie_connect/android/net/ReachabilityManager;->mInstance:Lcom/genie_connect/android/net/ReachabilityManager;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/genie_connect/android/net/ReachabilityManager;->sLockObject:Ljava/lang/Object;

    .line 99
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/genie_connect/android/net/ReachabilityManager;->SERVER_LIST_ORDER:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0xe
        0xc
        0xd
        0xb
        0xa
        0x6
        0x7
        0x8
        0x9
        0x16
        0x11
        0x12
        0x13
        0x14
        0x15
        0xf
        0x10
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mCurrentServer:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mSelectedServerSet:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mIsReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    const-string v0, "^ REACH: new Reachability Manager"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/genie_connect/android/net/ReachabilityManager;->reset()V

    .line 55
    return-void
.end method

.method private doCheck(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    sget-object v2, Lcom/genie_connect/android/net/ReachabilityManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mLastCheck:Ljava/util/Calendar;

    .line 124
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-direct {p0, p1}, Lcom/genie_connect/android/net/ReachabilityManager;->populateServerList(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 130
    .local v0, "tmpServer":Ljava/lang/String;
    iget-object v1, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    const-string v2, "/login/ping.jsp"

    invoke-static {v1, v2}, Lcom/genie_connect/android/net/ReachabilityManager;->tryServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    .line 124
    .end local v0    # "tmpServer":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 132
    .restart local v0    # "tmpServer":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    const-string v2, "/login/ping.jsp"

    invoke-static {v1, v2}, Lcom/genie_connect/android/net/ReachabilityManager;->tryServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInstance()Lcom/genie_connect/android/net/ReachabilityManager;
    .locals 2

    .prologue
    .line 370
    sget-object v0, Lcom/genie_connect/android/net/ReachabilityManager;->mInstance:Lcom/genie_connect/android/net/ReachabilityManager;

    if-nez v0, :cond_1

    .line 372
    sget-object v1, Lcom/genie_connect/android/net/ReachabilityManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    sget-object v0, Lcom/genie_connect/android/net/ReachabilityManager;->mInstance:Lcom/genie_connect/android/net/ReachabilityManager;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcom/genie_connect/android/net/ReachabilityManager;

    invoke-direct {v0}, Lcom/genie_connect/android/net/ReachabilityManager;-><init>()V

    sput-object v0, Lcom/genie_connect/android/net/ReachabilityManager;->mInstance:Lcom/genie_connect/android/net/ReachabilityManager;

    .line 376
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_1
    sget-object v0, Lcom/genie_connect/android/net/ReachabilityManager;->mInstance:Lcom/genie_connect/android/net/ReachabilityManager;

    return-object v0

    .line 376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getPageContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "targetURL"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v7, "returnSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 386
    .local v3, "in":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 387
    .local v6, "page":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 388
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 389
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 391
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 392
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;

    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .local v4, "in":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 397
    .local v0, "buff":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 399
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 402
    .end local v0    # "buff":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 403
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v6    # "page":Ljava/net/URL;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_2
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v3, :cond_0

    .line 407
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 408
    :cond_0
    :goto_3
    throw v8

    .line 405
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v0    # "buff":Ljava/io/BufferedReader;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "page":Ljava/net/URL;
    :cond_1
    if-eqz v4, :cond_2

    .line 407
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 412
    :cond_2
    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 408
    :catch_1
    move-exception v8

    goto :goto_4

    .end local v0    # "buff":Ljava/io/BufferedReader;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "page":Ljava/net/URL;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v9

    goto :goto_3

    .line 405
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v6    # "page":Ljava/net/URL;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 402
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "page":Ljava/net/URL;
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public static getServerListOrder()[I
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/genie_connect/android/net/ReachabilityManager;->SERVER_LIST_ORDER:[I

    return-object v0
.end method

.method private hasServerValidityLapsed()Z
    .locals 12

    .prologue
    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 201
    .local v8, "now":Ljava/util/Calendar;
    iget-object v9, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mLastCheck:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 202
    .local v6, "milisThen":J
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 204
    .local v4, "milisNow":J
    sub-long v0, v4, v6

    .line 206
    .local v0, "diff":J
    const-wide/32 v10, 0xea60

    div-long v2, v0, v10

    .line 210
    .local v2, "diffMinutes":J
    const-wide/16 v10, 0x3c

    cmp-long v9, v2, v10

    if-ltz v9, :cond_0

    .line 211
    const/4 v9, 0x1

    .line 214
    :goto_0
    return v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private populateServerList(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mSelectedServerSet:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 300
    :goto_0
    :pswitch_0
    return-void

    .line 224
    :pswitch_1
    sget v0, Lcom/eventgenie/android/R$string;->rest_server:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 225
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_secondary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto :goto_0

    .line 228
    :pswitch_2
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_local_demo:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 229
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_local_demo:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto :goto_0

    .line 232
    :pswitch_3
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_dirty_0:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 233
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_dirty_0:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto :goto_0

    .line 236
    :pswitch_4
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_dirty_1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 237
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_dirty_1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto :goto_0

    .line 240
    :pswitch_5
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_dirty_2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 241
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_dirty_2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto :goto_0

    .line 244
    :pswitch_6
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_dirty_3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 245
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_dirty_3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto :goto_0

    .line 248
    :pswitch_7
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_dirty_4:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 249
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_dirty_4:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto :goto_0

    .line 252
    :pswitch_8
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_fix_0:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 253
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_fix_0:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 256
    :pswitch_9
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_fix_1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 257
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_fix_1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 260
    :pswitch_a
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_fix_2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 261
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_fix_2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 264
    :pswitch_b
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_fix_3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 265
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_fix_3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 268
    :pswitch_c
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_fix_4:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 269
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_fix_4:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 272
    :pswitch_d
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_qa:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 273
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_qa:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 276
    :pswitch_e
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_sprint:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 277
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_sprint:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 280
    :pswitch_f
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_client:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 281
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_client:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 284
    :pswitch_10
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_csr:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 285
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_csr:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 288
    :pswitch_11
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_sales:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 289
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_sales:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 292
    :pswitch_12
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_ci:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 293
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_ci:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 296
    :pswitch_13
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_secure_asia:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer1:Ljava/lang/String;

    .line 297
    sget v0, Lcom/eventgenie/android/R$string;->rest_server_url_secure_asia:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mServer2:Ljava/lang/String;

    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method

.method private selectServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 309
    const-string v2, ""

    .line 310
    .local v2, "server":Ljava/lang/String;
    const/4 v0, 0x0

    .line 313
    .local v0, "didWeCheck":Z
    iget-object v3, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mLastCheck:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mCurrentServer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 314
    :cond_0
    const-string v3, "^ REACH: First run."

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, p1}, Lcom/genie_connect/android/net/ReachabilityManager;->doCheck(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 316
    const/4 v0, 0x1

    .line 328
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_2

    .line 329
    :cond_1
    sget v3, Lcom/eventgenie/android/R$string;->rest_server:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    :cond_2
    iput-object v2, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mCurrentServer:Ljava/lang/String;

    .line 334
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mIsReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 336
    if-eqz v0, :cond_3

    .line 337
    const-string v3, "^ REACH: Notifying App of Server Update"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 338
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.eventgenie.android.BROADCAST_SERVER_CHECK_COMPLETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 343
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-object v2

    .line 318
    :cond_4
    invoke-direct {p0}, Lcom/genie_connect/android/net/ReachabilityManager;->hasServerValidityLapsed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 319
    const-string v3, "^ REACH: Server validity has expired (60)."

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/genie_connect/android/net/ReachabilityManager;->doCheck(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 321
    const/4 v0, 0x1

    goto :goto_0

    .line 324
    :cond_5
    iget-object v2, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mCurrentServer:Ljava/lang/String;

    goto :goto_0
.end method

.method private static tryServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getLastCheck()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mLastCheck:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSelectedServerSet()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mSelectedServerSet:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/genie_connect/android/net/ReachabilityManager;->selectServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerName(I)Ljava/lang/String;
    .locals 1
    .param p1, "serverId"    # I

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_0

    .line 194
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 156
    :pswitch_1
    const-string v0, "Production Server"

    goto :goto_0

    .line 158
    :pswitch_2
    const-string v0, "Local Server"

    goto :goto_0

    .line 160
    :pswitch_3
    const-string v0, "Dev Server 0"

    goto :goto_0

    .line 162
    :pswitch_4
    const-string v0, "Dev Server 1"

    goto :goto_0

    .line 164
    :pswitch_5
    const-string v0, "Dev Server 2"

    goto :goto_0

    .line 166
    :pswitch_6
    const-string v0, "Dev Server 3"

    goto :goto_0

    .line 168
    :pswitch_7
    const-string v0, "Dev Server 4"

    goto :goto_0

    .line 170
    :pswitch_8
    const-string v0, "Fix Server 0"

    goto :goto_0

    .line 172
    :pswitch_9
    const-string v0, "Fix Server 1"

    goto :goto_0

    .line 174
    :pswitch_a
    const-string v0, "Fix Server 2"

    goto :goto_0

    .line 176
    :pswitch_b
    const-string v0, "Fix Server 3"

    goto :goto_0

    .line 178
    :pswitch_c
    const-string v0, "Fix Server 4"

    goto :goto_0

    .line 180
    :pswitch_d
    const-string v0, "QA Server"

    goto :goto_0

    .line 182
    :pswitch_e
    const-string v0, "Sprint Server"

    goto :goto_0

    .line 184
    :pswitch_f
    const-string v0, "Client Server"

    goto :goto_0

    .line 186
    :pswitch_10
    const-string v0, "CSR Server"

    goto :goto_0

    .line 188
    :pswitch_11
    const-string v0, "Sales Server"

    goto :goto_0

    .line 190
    :pswitch_12
    const-string v0, "CI Server"

    goto :goto_0

    .line 192
    :pswitch_13
    const-string v0, "SECURE ASIA"

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mIsReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mIsReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mLastCheck:Ljava/util/Calendar;

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mCurrentServer:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public tryCurrentServer()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    iget-object v1, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mIsReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    const-string v1, "^ REACH: Network layer not ready!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mCurrentServer:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mCurrentServer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 356
    iget-object v0, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mCurrentServer:Ljava/lang/String;

    const-string v1, "/login/ping.jsp"

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/ReachabilityManager;->tryServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public useServerSet(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverSet"    # I

    .prologue
    .line 360
    invoke-static {p1}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/GlobalPreferences;->edit()Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    move-result-object v0

    .line 361
    .local v0, "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    invoke-virtual {v0, p2}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->setSelectedServerSet(I)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    .line 362
    invoke-virtual {v0}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->apply()V

    .line 363
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mSelectedServerSet:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ REACH: Using Server Set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/net/ReachabilityManager;->mSelectedServerSet:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/genie_connect/android/net/ReachabilityManager;->reset()V

    .line 367
    return-void
.end method
