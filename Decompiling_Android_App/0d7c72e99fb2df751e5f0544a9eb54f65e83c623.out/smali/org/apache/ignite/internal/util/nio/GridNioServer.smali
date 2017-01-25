.class public Lorg/apache/ignite/internal/util/nio/GridNioServer;
.super Ljava/lang/Object;
.source "GridNioServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/nio/GridNioServer$1;,
        Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;,
        Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;,
        Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;,
        Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;,
        Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;,
        Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;,
        Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;,
        Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BUF_META_KEY:I

.field private static final BUF_SSL_SYSTEM_META_KEY:I

.field public static final DFLT_SEND_QUEUE_LIMIT:I = 0x400

.field public static final DFLT_SES_WRITE_TIMEOUT:I = 0x1388

.field private static final ERR_WAIT_TIME:J = 0x7d0L


# instance fields
.field private final acceptThread:Lorg/apache/ignite/thread/IgniteThread;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private balanceIdx:I
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final clientThreads:[Lorg/apache/ignite/thread/IgniteThread;

.field private final clientWorkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer",
            "<TT;>.AbstractNioClientWorker;>;"
        }
    .end annotation
.end field

.field private volatile closed:Z

.field private final directBuf:Z

.field private final directMode:Z

.field private final filterChain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain",
            "<TT;>;"
        }
    .end annotation
.end field

.field private formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private volatile idleTimeout:J

.field private final locAddr:Ljava/net/InetSocketAddress;

.field private final log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

.field private final order:Ljava/nio/ByteOrder;

.field private final sessions:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridConcurrentHashSet",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private skipRecoveryPred:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private skipWrite:Z

.field private final sndQueueLimit:I

.field private final sockRcvBuf:I

.field private final sockSndBuf:I

.field private sslFilter:Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

.field private final tcpNoDelay:Z

.field private volatile writeTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    .line 68
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->BUF_META_KEY:I

    .line 71
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->BUF_SSL_SYSTEM_META_KEY:I

    .line 153
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_1
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private varargs constructor <init>(Ljava/net/InetAddress;ILorg/apache/ignite/IgniteLogger;ILjava/lang/String;ZZLjava/nio/ByteOrder;Lorg/apache/ignite/internal/util/nio/GridNioServerListener;IIIZZLorg/apache/ignite/internal/util/nio/GridNioMetricsListener;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;Lorg/apache/ignite/lang/IgnitePredicate;[Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V
    .locals 21
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p4, "selectorCnt"    # I
    .param p5, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "tcpNoDelay"    # Z
    .param p7, "directBuf"    # Z
    .param p8, "order"    # Ljava/nio/ByteOrder;
    .param p10, "sockSndBuf"    # I
    .param p11, "sockRcvBuf"    # I
    .param p12, "sndQueueLimit"    # I
    .param p13, "directMode"    # Z
    .param p14, "daemon"    # Z
    .param p15, "metricsLsnr"    # Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;
    .param p16, "formatter"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .param p18, "filters"    # [Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "I",
            "Lorg/apache/ignite/IgniteLogger;",
            "I",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/nio/ByteOrder;",
            "Lorg/apache/ignite/internal/util/nio/GridNioServerListener",
            "<TT;>;IIIZZ",
            "Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;[",
            "Lorg/apache/ignite/internal/util/nio/GridNioFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    .local p9, "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<TT;>;"
    .local p17, "skipRecoveryPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-wide/16 v4, 0x1388

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->writeTimeout:J

    .line 113
    const-wide/16 v4, 0x1b58

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->idleTimeout:J

    .line 135
    new-instance v4, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sessions:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .line 200
    const-string v4, "addr"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    const-string v4, "lsnr"

    move-object/from16 v0, p9

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    const-string v4, "log"

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    const-string v4, "order"

    move-object/from16 v0, p8

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    const/4 v4, -0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    if-lez p2, :cond_1

    const v4, 0xffff

    move/from16 v0, p2

    if-ge v0, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const-string v5, "port"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 206
    if-lez p4, :cond_2

    const/4 v4, 0x1

    :goto_1
    const-string v5, "selectorCnt"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 207
    if-ltz p11, :cond_3

    const/4 v4, 0x1

    :goto_2
    const-string v5, "sockRcvBuf"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 208
    if-ltz p10, :cond_4

    const/4 v4, 0x1

    :goto_3
    const-string v5, "sockSndBuf"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 209
    if-ltz p12, :cond_5

    const/4 v4, 0x1

    :goto_4
    const-string v5, "sndQueueLimit"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 211
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->log:Lorg/apache/ignite/IgniteLogger;

    .line 212
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->directBuf:Z

    .line 213
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->order:Ljava/nio/ByteOrder;

    .line 214
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->tcpNoDelay:Z

    .line 215
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sockRcvBuf:I

    .line 216
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sockSndBuf:I

    .line 217
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sndQueueLimit:I

    .line 219
    new-instance v4, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    new-instance v5, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p9

    move-object/from16 v2, p18

    invoke-direct {v4, v0, v1, v5, v2}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;-><init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/nio/GridNioServerListener;Lorg/apache/ignite/internal/util/nio/GridNioFilter;[Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->filterChain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    .line 221
    if-eqz p13, :cond_7

    .line 222
    move-object/from16 v16, p18

    .local v16, "arr$":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    aget-object v17, v16, v18

    .line 223
    .local v17, "filter":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    move-object/from16 v0, v17

    instance-of v4, v0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    if-eqz v4, :cond_6

    .line 224
    check-cast v17, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    .end local v17    # "filter":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sslFilter:Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    .line 226
    sget-boolean v4, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sslFilter:Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->directMode()Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 205
    .end local v16    # "arr$":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 206
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 207
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 208
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 209
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 222
    .restart local v16    # "arr$":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .restart local v18    # "i$":I
    .restart local v19    # "len$":I
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 231
    .end local v16    # "arr$":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    :cond_7
    const/4 v4, -0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_8

    .line 233
    new-instance v4, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->locAddr:Ljava/net/InetSocketAddress;

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->locAddr:Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->createSelector(Ljava/net/SocketAddress;)Ljava/nio/channels/Selector;

    move-result-object v9

    .line 238
    .local v9, "acceptSelector":Ljava/nio/channels/Selector;
    new-instance v10, Lorg/apache/ignite/thread/IgniteThread;

    new-instance v4, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;

    const-string v7, "nio-acceptor"

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/nio/channels/Selector;)V

    invoke-direct {v10, v4}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->acceptThread:Lorg/apache/ignite/thread/IgniteThread;

    .line 245
    .end local v9    # "acceptSelector":Ljava/nio/channels/Selector;
    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientWorkers:Ljava/util/List;

    .line 246
    move/from16 v0, p4

    new-array v4, v0, [Lorg/apache/ignite/thread/IgniteThread;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientThreads:[Lorg/apache/ignite/thread/IgniteThread;

    .line 248
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    move/from16 v0, p4

    if-ge v12, v0, :cond_a

    .line 249
    if-eqz p13, :cond_9

    new-instance v10, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "grid-nio-worker-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v11, p0

    move-object/from16 v13, p5

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    move-object/from16 v20, v10

    .line 253
    .local v20, "worker":Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.AbstractNioClientWorker;"
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientWorkers:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientThreads:[Lorg/apache/ignite/thread/IgniteThread;

    new-instance v5, Lorg/apache/ignite/thread/IgniteThread;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    aput-object v5, v4, v12

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientThreads:[Lorg/apache/ignite/thread/IgniteThread;

    aget-object v4, v4, v12

    move/from16 v0, p14

    invoke-virtual {v4, v0}, Lorg/apache/ignite/thread/IgniteThread;->setDaemon(Z)V

    .line 248
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 241
    .end local v12    # "i":I
    .end local v20    # "worker":Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.AbstractNioClientWorker;"
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->locAddr:Ljava/net/InetSocketAddress;

    .line 242
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->acceptThread:Lorg/apache/ignite/thread/IgniteThread;

    goto :goto_6

    .line 249
    .restart local v12    # "i":I
    :cond_9
    new-instance v10, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "grid-nio-worker-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v11, p0

    move-object/from16 v13, p5

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    move-object/from16 v20, v10

    goto :goto_8

    .line 260
    :cond_a
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->directMode:Z

    .line 261
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    .line 262
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .line 264
    if-eqz p17, :cond_b

    .end local p17    # "skipRecoveryPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    :goto_9
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->skipRecoveryPred:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 265
    return-void

    .line 264
    .restart local p17    # "skipRecoveryPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    :cond_b
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object p17

    goto :goto_9
.end method

.method synthetic constructor <init>(Ljava/net/InetAddress;ILorg/apache/ignite/IgniteLogger;ILjava/lang/String;ZZLjava/nio/ByteOrder;Lorg/apache/ignite/internal/util/nio/GridNioServerListener;IIIZZLorg/apache/ignite/internal/util/nio/GridNioMetricsListener;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;Lorg/apache/ignite/lang/IgnitePredicate;[Lorg/apache/ignite/internal/util/nio/GridNioFilter;Lorg/apache/ignite/internal/util/nio/GridNioServer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/net/InetAddress;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/IgniteLogger;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Ljava/nio/ByteOrder;
    .param p9, "x8"    # Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    .param p10, "x9"    # I
    .param p11, "x10"    # I
    .param p12, "x11"    # I
    .param p13, "x12"    # Z
    .param p14, "x13"    # Z
    .param p15, "x14"    # Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;
    .param p16, "x15"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .param p17, "x16"    # Lorg/apache/ignite/lang/IgnitePredicate;
    .param p18, "x17"    # [Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .param p19, "x18"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    invoke-direct/range {p0 .. p18}, Lorg/apache/ignite/internal/util/nio/GridNioServer;-><init>(Ljava/net/InetAddress;ILorg/apache/ignite/IgniteLogger;ILjava/lang/String;ZZLjava/nio/ByteOrder;Lorg/apache/ignite/internal/util/nio/GridNioServerListener;IIIZZLorg/apache/ignite/internal/util/nio/GridNioMetricsListener;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;Lorg/apache/ignite/lang/IgnitePredicate;[Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sslFilter:Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->BUF_SSL_SYSTEM_META_KEY:I

    return v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/util/nio/GridNioServer;Ljava/net/SocketAddress;)Ljava/nio/channels/Selector;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;
    .param p1, "x1"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->createSelector(Ljava/net/SocketAddress;)Ljava/nio/channels/Selector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->closed:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/util/nio/GridNioServer;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->writeTimeout:J

    return-wide v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/util/nio/GridNioServer;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->idleTimeout:J

    return-wide v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->directMode:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/util/nio/GridNioServer;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sndQueueLimit:I

    return v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/GridConcurrentHashSet;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sessions:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->locAddr:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->tcpNoDelay:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sockSndBuf:I

    return v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/util/nio/GridNioServer;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sockRcvBuf:I

    return v0
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/util/nio/GridNioServer;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->offerBalanced(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->directBuf:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Ljava/nio/ByteOrder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->filterChain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->BUF_META_KEY:I

    return v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->skipWrite:Z

    return v0
.end method

.method public static builder()Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;-><init>()V

    return-object v0
.end method

.method private createSelector(Ljava/net/SocketAddress;)Ljava/nio/channels/Selector;
    .locals 5
    .param p1, "addr"    # Ljava/net/SocketAddress;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    const/4 v1, 0x0

    .line 554
    .local v1, "selector":Ljava/nio/channels/Selector;
    const/4 v2, 0x0

    .line 558
    .local v2, "srvrCh":Ljava/nio/channels/ServerSocketChannel;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    .line 560
    if-eqz p1, :cond_1

    .line 562
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v2

    .line 564
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 566
    iget v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sockRcvBuf:I

    if-lez v3, :cond_0

    .line 567
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    iget v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sockRcvBuf:I

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 570
    :cond_0
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 574
    const/16 v3, 0x10

    invoke-virtual {v2, v1, v3}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :cond_1
    return-object v1

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 581
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/nio/channels/Selector;Lorg/apache/ignite/IgniteLogger;)V

    .line 583
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    const-string v4, "Failed to initialize NIO selector."

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private declared-synchronized offerBalanced(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V
    .locals 2
    .param p1, "req"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .prologue
    .line 591
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientWorkers:Ljava/util/List;

    iget v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->balanceIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->access$000(Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    .line 593
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->balanceIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->balanceIdx:I

    .line 595
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->balanceIdx:I

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientWorkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 596
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->balanceIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :cond_0
    monitor-exit p0

    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private send0(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;Z)V
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .param p3, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    .local p2, "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 377
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 379
    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p1, p2}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->offerSystemFuture(Lorg/apache/ignite/internal/util/nio/GridNioFuture;)I

    move-result v0

    .line 381
    .local v0, "msgCnt":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->closed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    invoke-virtual {p1, p2}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->removeFuture(Lorg/apache/ignite/internal/util/nio/GridNioFuture;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    # invokes: Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->connectionClosed()V
    invoke-static {p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$100(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    .line 388
    :cond_2
    :goto_1
    return-void

    .line 379
    .end local v0    # "msgCnt":I
    :cond_3
    invoke-virtual {p1, p2}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->offerFuture(Lorg/apache/ignite/internal/util/nio/GridNioFuture;)I

    move-result v0

    goto :goto_0

    .line 385
    .restart local v0    # "msgCnt":I
    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 387
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientWorkers:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->selectorIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;

    invoke-static {v1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->access$000(Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    goto :goto_1
.end method


# virtual methods
.method public close(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, p1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move-object v1, p1

    .line 323
    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 325
    .local v1, "impl":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->closed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 332
    :goto_0
    return-object v0

    .line 328
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->CLOSE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;-><init>(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;)V

    .line 330
    .local v0, "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientWorkers:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->selectorIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->access$000(Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    goto :goto_0
.end method

.method public createSession(Ljava/nio/channels/SocketChannel;Ljava/util/Map;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 3
    .param p1, "ch"    # Ljava/nio/channels/SocketChannel;
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SocketChannel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "*>;)",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    .local p2, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;*>;"
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 495
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;-><init>(Ljava/nio/channels/SocketChannel;ZLjava/util/Map;)V

    .line 497
    .local v1, "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<Lorg/apache/ignite/internal/util/nio/GridNioSession;>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->offerBalanced(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v1    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<Lorg/apache/ignite/internal/util/nio/GridNioSession;>;"
    :goto_0
    return-object v1

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public idleTimeout()J
    .locals 2

    .prologue
    .line 531
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->idleTimeout:J

    return-wide v0
.end method

.method public idleTimeout(J)V
    .locals 1
    .param p1, "idleTimeout"    # J

    .prologue
    .line 540
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->idleTimeout:J

    .line 541
    return-void
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->locAddr:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public outboundMessagesQueueSize()I
    .locals 4

    .prologue
    .line 1580
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    const/4 v1, 0x0

    .line 1582
    .local v1, "res":I
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sessions:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 1583
    .local v2, "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->writeQueueSize()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 1585
    .end local v2    # "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    :cond_0
    return v1
.end method

.method pauseResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 5
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "op"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, p1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 468
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->PAUSE_READ:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    if-eq p2, v2, :cond_1

    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->RESUME_READ:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    if-eq p2, v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    move-object v1, p1

    .line 470
    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 472
    .local v1, "impl":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->closed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to pause/resume reads (connection was closed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 480
    :goto_0
    return-object v0

    .line 476
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    invoke-direct {v0, v1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;-><init>(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;)V

    .line 478
    .local v0, "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientWorkers:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->selectorIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->access$000(Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    goto :goto_0
.end method

.method public resend(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 9
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 434
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    instance-of v6, p1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 436
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->recoveryDescriptor()Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    move-result-object v4

    .line 438
    .local v4, "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->messagesFutures()Ljava/util/Deque;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Deque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 439
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->messagesFutures()Ljava/util/Deque;

    move-result-object v2

    .line 441
    .local v2, "futs":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 442
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resend messages [rmtNode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msgCnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_1
    move-object v5, p1

    .line 444
    check-cast v5, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 446
    .local v5, "ses0":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 448
    .local v1, "fut0":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 449
    .local v0, "fut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->messageThread(Z)V

    .line 451
    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .end local v0    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    # invokes: Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->resetSession(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;)V
    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$200(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;)V

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {v5, v2}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->resend(Ljava/util/Collection;)V

    .line 457
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientWorkers:Ljava/util/List;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->selectorIndex()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;

    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .end local v1    # "fut0":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    invoke-static {v6, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->access$000(Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    .line 459
    .end local v2    # "futs":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "ses0":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    :cond_3
    return-void
.end method

.method send(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, p1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move-object v1, p1

    .line 343
    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 345
    .local v1, "impl":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REQUIRE_WRITE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    invoke-direct {v0, v1, v2, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;-><init>(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;Ljava/nio/ByteBuffer;)V

    .line 347
    .local v0, "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->send0(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;Z)V

    .line 349
    return-object v0
.end method

.method send(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, p1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move-object v1, p1

    .line 360
    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 362
    .local v1, "impl":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REQUIRE_WRITE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->skipRecoveryPred:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v3, p2}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;-><init>(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;Lorg/apache/ignite/plugin/extensions/communication/Message;Z)V

    .line 365
    .local v0, "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->send0(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;Z)V

    .line 367
    return-object v0
.end method

.method public sendSystem(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sendSystem(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public sendSystem(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p3    # Lorg/apache/ignite/lang/IgniteInClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;>;)",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    .local p3, "lsnr":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, p1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move-object v1, p1

    .line 414
    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 416
    .local v1, "impl":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REQUIRE_WRITE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->skipRecoveryPred:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v3, p2}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;-><init>(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;Lorg/apache/ignite/plugin/extensions/communication/Message;Z)V

    .line 419
    .local v0, "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    if-eqz p3, :cond_1

    .line 420
    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 422
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridNioServer;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 425
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->send0(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;Z)V

    .line 427
    return-object v0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 280
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->filterChain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->start()V

    .line 282
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->acceptThread:Lorg/apache/ignite/thread/IgniteThread;

    if-eqz v4, :cond_0

    .line 283
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->acceptThread:Lorg/apache/ignite/thread/IgniteThread;

    invoke-virtual {v4}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientThreads:[Lorg/apache/ignite/thread/IgniteThread;

    .local v0, "arr$":[Lorg/apache/ignite/thread/IgniteThread;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 286
    .local v3, "thread":Lorg/apache/ignite/thread/IgniteThread;
    invoke-virtual {v3}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v3    # "thread":Lorg/apache/ignite/thread/IgniteThread;
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 293
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->closed:Z

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->closed:Z

    .line 297
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->acceptThread:Lorg/apache/ignite/thread/IgniteThread;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 298
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->acceptThread:Lorg/apache/ignite/thread/IgniteThread;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 300
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientWorkers:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Ljava/lang/Iterable;)V

    .line 301
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->clientWorkers:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z

    .line 303
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->filterChain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->stop()V

    .line 305
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTimeout()J
    .locals 2

    .prologue
    .line 512
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->writeTimeout:J

    return-wide v0
.end method

.method public writeTimeout(J)V
    .locals 1
    .param p1, "writeTimeout"    # J

    .prologue
    .line 521
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>;"
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer;->writeTimeout:J

    .line 522
    return-void
.end method
