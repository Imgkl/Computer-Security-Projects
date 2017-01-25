.class public Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"

# interfaces
.implements Lorg/apache/ignite/IgniteDataStreamer;
.implements Ljava/util/concurrent/Delayed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$IsolatedUpdater;,
        Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;,
        Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/IgniteDataStreamer",
        "<TK;TV;>;",
        "Ljava/util/concurrent/Delayed;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DFLT_MAX_REMAP_CNT:I = 0x20

.field private static final ISOLATED_UPDATER:Lorg/apache/ignite/stream/StreamReceiver;

.field private static isWarningPrinted:Z

.field private static log:Lorg/apache/ignite/IgniteLogger;

.field private static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activeFuts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private autoFlushFreq:J

.field private bufMappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl",
            "<TK;TV;>.Buffer;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private bufSize:I

.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

.field private final cacheName:Ljava/lang/String;

.field private final cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

.field private final cacheObjProc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

.field private volatile cancelled:Z

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private depCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final flushQ:Ljava/util/concurrent/DelayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/DelayQueue",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile jobPda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

.field private volatile lastFlushTime:J

.field private maxRemapCnt:I

.field private parallelOps:I

.field private final publicFut:Lorg/apache/ignite/lang/IgniteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private rcvr:Lorg/apache/ignite/stream/StreamReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/stream/StreamReceiver",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final rmvActiveFut:Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private skipStore:Z

.field private final topic:Ljava/lang/Object;

.field private topicBytes:[B

.field private updaterBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->$assertionsDisabled:Z

    .line 61
    new-instance v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$IsolatedUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$IsolatedUpdater;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ISOLATED_UPDATER:Lorg/apache/ignite/stream/StreamReceiver;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;Ljava/util/concurrent/DelayQueue;)V
    .locals 7
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/DelayQueue",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    .local p3, "flushQ":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ISOLATED_UPDATER:Lorg/apache/ignite/stream/StreamReceiver;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;

    .line 83
    const/16 v1, 0x400

    iput v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufSize:I

    .line 87
    const/16 v1, 0x10

    iput v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->parallelOps:I

    .line 93
    new-instance v1, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v1}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufMappings:Ljava/util/concurrent/ConcurrentMap;

    .line 118
    new-instance v1, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->activeFuts:Ljava/util/Collection;

    .line 122
    new-instance v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rmvActiveFut:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 144
    new-instance v1, Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    .line 147
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->lastFlushTime:J

    .line 159
    const/16 v1, 0x20

    iput v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->maxRemapCnt:I

    .line 174
    sget-boolean v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 176
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 177
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjProc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    .line 179
    sget-object v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v1, :cond_1

    .line 180
    sget-object v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {p1, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 182
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    .line 184
    .local v0, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v0, :cond_2

    .line 185
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_2
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, p2, v2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->contextForCache(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    .line 188
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->flushQ:Ljava/util/concurrent/DelayQueue;

    .line 191
    new-instance v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$2;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Lorg/apache/ignite/internal/GridKernalContext;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 219
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v3, 0xc

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xb

    aput v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 222
    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_DATASTREAM:Lorg/apache/ignite/internal/GridTopic;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/GridTopic;->topic(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topic:Ljava/lang/Object;

    .line 224
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topic:Ljava/lang/Object;

    new-instance v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$3;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$3;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 243
    sget-object v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    sget-object v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added response listener within topic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topic:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 246
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerFuture;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerFuture;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 248
    new-instance v1, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->publicFut:Lorg/apache/ignite/lang/IgniteFuture;

    .line 249
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->activeFuts:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->parallelOps:I

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufSize:I

    return v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->skipStore:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/stream/StreamReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->updaterBytes:[B

    return-object v0
.end method

.method static synthetic access$1802(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    .param p1, "x1"    # [B

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->updaterBytes:[B

    return-object p1
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topicBytes:[B

    return-object v0
.end method

.method static synthetic access$1902(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    .param p1, "x1"    # [B

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topicBytes:[B

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufMappings:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topic:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->jobPda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->depCls:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjProc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cancelled:Z

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 59
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->maxRemapCnt:I

    return v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Ljava/util/Collection;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->load0(Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Ljava/util/Collection;I)V

    return-void
.end method

.method private doFlush()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 679
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->lastFlushTime:J

    .line 681
    const/4 v2, 0x0

    .line 683
    .local v2, "activeFuts0":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgniteInternalFuture;>;"
    const/4 v4, 0x0

    .line 685
    .local v4, "doneCnt":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->activeFuts:Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 686
    .local v8, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-interface {v8}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v14

    if-nez v14, :cond_1

    .line 687
    if-nez v2, :cond_0

    .line 688
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "activeFuts0":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgniteInternalFuture;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->activeFuts:Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    int-to-double v14, v14

    const-wide v16, 0x3ff3333333333333L    # 1.2

    mul-double v14, v14, v16

    double-to-int v14, v14

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 690
    .restart local v2    # "activeFuts0":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgniteInternalFuture;>;"
    :cond_0
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 693
    :cond_1
    invoke-interface {v8}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 695
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 699
    .end local v8    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 757
    :cond_3
    :goto_1
    return-void

    .line 733
    .local v6, "err":Z
    .local v10, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    .local v13, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    :cond_4
    if-eqz v6, :cond_b

    .line 703
    .end local v6    # "err":Z
    .end local v10    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    .end local v13    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    :cond_5
    const/4 v13, 0x0

    .line 705
    .restart local v13    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufMappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v14}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    .line 706
    .local v3, "buf":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->flush()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v9

    .line 708
    .local v9, "flushFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    if-eqz v9, :cond_6

    .line 709
    if-nez v13, :cond_7

    .line 710
    new-instance v13, Ljava/util/ArrayDeque;

    .end local v13    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufMappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v14}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    invoke-direct {v13, v14}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 712
    .restart local v13    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    :cond_7
    invoke-interface {v13, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 716
    .end local v3    # "buf":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    .end local v9    # "flushFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_8
    if-eqz v13, :cond_b

    .line 717
    sget-boolean v14, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->$assertionsDisabled:Z

    if-nez v14, :cond_9

    invoke-interface {v13}, Ljava/util/Queue;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 719
    :cond_9
    const/4 v6, 0x0

    .line 721
    .restart local v6    # "err":Z
    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .restart local v10    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    :goto_3
    if-eqz v10, :cond_4

    .line 723
    :try_start_0
    invoke-interface {v10}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_4
    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    check-cast v10, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .restart local v10    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    goto :goto_3

    .line 725
    :catch_0
    move-exception v5

    .line 726
    .local v5, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v14, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v14}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 727
    sget-object v14, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to flush buffer: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 729
    :cond_a
    const/4 v6, 0x1

    goto :goto_4

    .line 738
    .end local v5    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v6    # "err":Z
    .end local v10    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    :cond_b
    const/4 v4, 0x0

    .line 740
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_d

    .line 741
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 743
    .local v7, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;
    if-nez v7, :cond_c

    .line 744
    add-int/lit8 v4, v4, 0x1

    .line 740
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 745
    :cond_c
    invoke-interface {v7}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 746
    invoke-interface {v7}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 748
    add-int/lit8 v4, v4, 0x1

    .line 750
    const/4 v14, 0x0

    invoke-interface {v2, v11, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 756
    .end local v7    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ne v4, v14, :cond_5

    goto/16 :goto_1
.end method

.method private enterBusy()V
    .locals 2

    .prologue
    .line 262
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data streamer has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    return-void
.end method

.method private leaveBusy()V
    .locals 1

    .prologue
    .line 270
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .line 271
    return-void
.end method

.method private load0(Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Ljava/util/Collection;I)V
    .locals 26
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "remaps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .local p2, "resFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    .local p3, "activeKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 516
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->isWarningPrinted:Z

    if-nez v3, :cond_2

    .line 517
    monitor-enter p0

    .line 518
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->allowOverwrite()Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->isWarningPrinted:Z

    if-nez v3, :cond_1

    .line 519
    sget-object v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Data streamer will not overwrite existing cache entries for better performance (to change, set allowOverwrite to true)"

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 523
    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->isWarningPrinted:Z

    .line 524
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :cond_2
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 529
    .local v20, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->jobPda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-nez v3, :cond_5

    const/16 v18, 0x1

    .line 531
    .local v18, "initPda":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    .line 535
    .local v14, "entry":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    :try_start_1
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getKey()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v19

    .line 537
    .local v19, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-nez v19, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    .end local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_0
    move-exception v11

    .line 550
    .local v11, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 645
    .end local v11    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v14    # "entry":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    :cond_4
    :goto_1
    return-void

    .line 524
    .end local v18    # "initPda":Z
    .end local v20    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 529
    .restart local v20    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;>;"
    :cond_5
    const/16 v18, 0x0

    goto :goto_0

    .line 539
    .restart local v14    # "entry":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    .restart local v18    # "initPda":Z
    .restart local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_6
    if-eqz v18, :cond_7

    .line 540
    :try_start_3
    new-instance v4, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v8, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v3

    const/4 v8, 0x1

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v3, v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    aput-object v3, v6, v8

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;

    aput-object v8, v6, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->jobPda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 544
    const/16 v18, 0x0

    .line 547
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->nodes(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/List;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v22

    .line 555
    .local v22, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 556
    new-instance v3, Lorg/apache/ignite/cluster/ClusterTopologyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to map key to node (no nodes with cache found in topology) [infos="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", cacheName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/cluster/ClusterTopologyException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 540
    .end local v22    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 563
    .restart local v22    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_9
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/cluster/ClusterNode;

    .line 564
    .local v21, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    .line 566
    .local v10, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    if-nez v10, :cond_a

    .line 567
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_a
    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 573
    .end local v10    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .end local v14    # "entry":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v21    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v22    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 574
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    .line 576
    .local v7, "nodeId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufMappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    .line 578
    .local v9, "buf":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    if-nez v9, :cond_d

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufMappings:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    .end local v9    # "buf":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Lorg/apache/ignite/cluster/ClusterNode;)V

    .restart local v9    # "buf":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    invoke-interface {v4, v7, v9}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    .line 581
    .local v23, "old":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    if-eqz v23, :cond_d

    .line 582
    move-object/from16 v9, v23

    .line 585
    .end local v23    # "old":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    :cond_d
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 587
    .local v5, "entriesForNode":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p2

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$5;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Ljava/util/UUID;I)V

    .line 628
    .local v2, "lsnr":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    :try_start_4
    invoke-virtual {v9, v5, v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->update(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    :try_end_4
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v15

    .line 636
    .local v15, "f":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    if-nez v3, :cond_c

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufMappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v7, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 638
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->onNodeLeft()V

    .line 640
    :cond_e
    if-eqz v15, :cond_c

    .line 641
    new-instance v3, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to wait for request completion (node has left): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_4

    .line 630
    .end local v15    # "f":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    :catch_1
    move-exception v13

    .line 631
    .local v13, "e1":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_1
.end method

.method private nextFlushTime()J
    .locals 4

    .prologue
    .line 895
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->lastFlushTime:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->autoFlushFreq:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private nodes(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    move-result-object v0

    .line 655
    .local v0, "aff":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;
    const/4 v2, 0x0

    .line 657
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->allowOverwrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 658
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->mapKeyToPrimaryAndBackups(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 666
    :cond_0
    :goto_0
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 667
    new-instance v3, Lorg/apache/ignite/internal/cluster/ClusterTopologyServerNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find server node for cache (all affinity nodes have left the grid or cache was stopped): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/cluster/ClusterTopologyServerNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 660
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 662
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v1, :cond_0

    .line 663
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 670
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public addData(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x1

    .line 489
    const-string v2, "key"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjProc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-interface {v2, v3, p1, v4}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheKeyObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 492
    .local v0, "key0":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjProc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-interface {v2, v3, p2, v4}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 494
    .local v1, "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    new-instance v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addDataInternal(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v2

    return-object v2
.end method

.method public addData(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v7, 0x1

    .line 382
    const-string v6, "entries"

    invoke-static {p1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->enterBusy()V

    .line 387
    :try_start_0
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 389
    .local v5, "resFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rmvActiveFut:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 391
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->activeFuts:Ljava/util/Collection;

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 393
    const/4 v4, 0x0

    .line 395
    .local v4, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 396
    new-instance v4, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .end local v4    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->capacity(I)I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x1

    invoke-direct {v4, v6, v7, v8}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>(IFI)V

    .line 398
    .restart local v4    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 399
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjProc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v6, v7, v8, v9}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheKeyObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 415
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v5    # "resFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    :try_start_1
    new-instance v6, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;

    invoke-direct {v6, v0}, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->leaveBusy()V

    .end local v0    # "e":Lorg/apache/ignite/IgniteException;
    :goto_1
    return-object v6

    .line 402
    .restart local v4    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v5    # "resFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    :cond_0
    :try_start_2
    new-instance v6, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;

    invoke-direct {v6, p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V

    const/4 v7, 0x0

    new-array v7, v7, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v6, v7}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    .line 411
    .local v1, "entries0":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v4, v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->load0(Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Ljava/util/Collection;I)V

    .line 413
    new-instance v6, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-direct {v6, v5}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->leaveBusy()V

    goto :goto_1

    .end local v1    # "entries0":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .end local v4    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v5    # "resFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->leaveBusy()V

    throw v6
.end method

.method public addData(Ljava/util/Map$Entry;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const-string v0, "entry"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addData(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    return-object v0
.end method

.method public addData(Ljava/util/Map;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const-string v0, "entries"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addData(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    return-object v0
.end method

.method public addDataInternal(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    const/4 v6, 0x1

    .line 445
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->enterBusy()V

    .line 447
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 450
    .local v4, "resFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rmvActiveFut:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 452
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->activeFuts:Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 454
    const/4 v3, 0x0

    .line 456
    .local v3, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 457
    new-instance v3, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .end local v3    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->capacity(I)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>(IFI)V

    .line 459
    .restart local v3    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    .line 460
    .local v1, "entry":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getKey()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 467
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 470
    instance-of v5, v0, Ljava/lang/Error;

    if-eqz v5, :cond_1

    .line 471
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->leaveBusy()V

    throw v5

    .line 463
    .restart local v3    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-direct {p0, p1, v4, v3, v5}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->load0(Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Ljava/util/Collection;I)V

    .line 465
    new-instance v5, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-direct {v5, v4}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->leaveBusy()V

    .end local v3    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :goto_1
    return-object v5

    .line 473
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_3
    new-instance v5, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;

    invoke-direct {v5, v0}, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->leaveBusy()V

    goto :goto_1
.end method

.method public addDataInternal(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ")",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    invoke-direct {v0, p1, p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addDataInternal(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    return-object v0
.end method

.method public allowOverwrite(Z)V
    .locals 4
    .param p1, "allow"    # Z

    .prologue
    .line 304
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->allowOverwrite()Z

    move-result v1

    if-ne p1, v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    .line 309
    .local v0, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v0, :cond_1

    .line 310
    new-instance v1, Ljavax/cache/CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get node for cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->individual()Lorg/apache/ignite/stream/StreamReceiver;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ISOLATED_UPDATER:Lorg/apache/ignite/stream/StreamReceiver;

    goto :goto_1
.end method

.method public allowOverwrite()Z
    .locals 2

    .prologue
    .line 299
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;

    sget-object v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ISOLATED_UPDATER:Lorg/apache/ignite/stream/StreamReceiver;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public autoFlushFrequency()J
    .locals 2

    .prologue
    .line 354
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->autoFlushFreq:J

    return-wide v0
.end method

.method public autoFlushFrequency(J)V
    .locals 7
    .param p1, "autoFlushFreq"    # J

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    const-wide/16 v4, 0x0

    .line 359
    cmp-long v2, p1, v4

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string v3, "autoFlushFreq >= 0"

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 361
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->autoFlushFreq:J

    .line 363
    .local v0, "old":J
    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 364
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->autoFlushFreq:J

    .line 366
    cmp-long v2, p1, v4

    if-eqz v2, :cond_2

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 367
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->flushQ:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/DelayQueue;->add(Ljava/util/concurrent/Delayed;)Z

    .line 371
    :cond_0
    :goto_1
    return-void

    .line 359
    .end local v0    # "old":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 368
    .restart local v0    # "old":J
    :cond_2
    cmp-long v2, p1, v4

    if-nez v2, :cond_0

    .line 369
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->flushQ:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/DelayQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 864
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->close(Z)V

    .line 865
    return-void
.end method

.method public close(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 808
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->closeEx(Z)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public closeEx(Z)V
    .locals 7
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 820
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 853
    :cond_0
    return-void

    .line 823
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->block()V

    .line 825
    sget-object v4, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 826
    sget-object v4, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Closing data streamer [ldr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cancel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 828
    :cond_2
    const/4 v1, 0x0

    .line 832
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz p1, :cond_3

    .line 833
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cancelled:Z

    .line 835
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufMappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    .line 836
    .local v0, "buf":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->cancelAll()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 845
    .end local v0    # "buf":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 846
    .local v2, "e0":Lorg/apache/ignite/IgniteCheckedException;
    move-object v1, v2

    .line 849
    .end local v2    # "e0":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 851
    if-eqz v1, :cond_0

    .line 852
    throw v1

    .line 839
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->doFlush()V

    .line 841
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 843
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topic:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 4
    .param p1, "o"    # Ljava/util/concurrent/Delayed;

    .prologue
    .line 900
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->nextFlushTime()J

    move-result-wide v0

    check-cast p1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .end local p1    # "o":Ljava/util/concurrent/Delayed;
    invoke-direct {p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->nextFlushTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public deployClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    .local p1, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->depCls:Ljava/lang/Class;

    .line 288
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 764
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->enterBusy()V

    .line 767
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->doFlush()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->leaveBusy()V

    .line 775
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->leaveBusy()V

    throw v1
.end method

.method public future()Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->publicFut:Lorg/apache/ignite/lang/IgniteFuture;

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 4
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 888
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->nextFlushTime()J

    move-result-wide v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public internalFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    return-object v0
.end method

.method isClosed()Z
    .locals 1

    .prologue
    .line 859
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v0

    return v0
.end method

.method public maxRemapCount()I
    .locals 1

    .prologue
    .line 871
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->maxRemapCnt:I

    return v0
.end method

.method public maxRemapCount(I)V
    .locals 0
    .param p1, "maxRemapCnt"    # I

    .prologue
    .line 878
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->maxRemapCnt:I

    .line 879
    return-void
.end method

.method public perNodeBufferSize()I
    .locals 1

    .prologue
    .line 332
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufSize:I

    return v0
.end method

.method public perNodeBufferSize(I)V
    .locals 2
    .param p1, "bufSize"    # I

    .prologue
    .line 337
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "bufSize > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 339
    iput p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufSize:I

    .line 340
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public perNodeParallelOperations()I
    .locals 1

    .prologue
    .line 344
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->parallelOps:I

    return v0
.end method

.method public perNodeParallelOperations(I)V
    .locals 0
    .param p1, "parallelOps"    # I

    .prologue
    .line 349
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->parallelOps:I

    .line 350
    return-void
.end method

.method public receiver(Lorg/apache/ignite/stream/StreamReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/stream/StreamReceiver",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    .local p1, "rcvr":Lorg/apache/ignite/stream/StreamReceiver;, "Lorg/apache/ignite/stream/StreamReceiver<TK;TV;>;"
    const-string v0, "rcvr"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;

    .line 295
    return-void
.end method

.method public removeData(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addData(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeDataInternal(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ")",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addDataInternal(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipStore(Z)V
    .locals 0
    .param p1, "skipStore"    # Z

    .prologue
    .line 322
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->skipStore:Z

    .line 323
    return-void
.end method

.method public skipStore()Z
    .locals 1

    .prologue
    .line 317
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->skipStore:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryFlush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteInterruptedException;
        }
    .end annotation

    .prologue
    .line 785
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 800
    :goto_0
    return-void

    .line 789
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufMappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    .line 790
    .local v0, "buf":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->flush()Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 794
    .end local v0    # "buf":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :try_start_1
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    .end local v1    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->leaveBusy()V

    throw v3

    .line 792
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->lastFlushTime:J
    :try_end_2
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 798
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->leaveBusy()V

    goto :goto_0
.end method
