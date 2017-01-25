.class public Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;
.source "GridCacheIoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$OrderedMessageListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final idGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private clsHandlers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private depEnabled:Z

.field private idxClsHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/apache/ignite/lang/IgniteBiInClosure;",
            ">;"
        }
    .end annotation
.end field

.field private lsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

.field private orderedHandlers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Ljava/util/UUID;",
            "+",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private retryCnt:I

.field private retryDelay:J

.field private final rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

.field private final startErr:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private stopping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->$assertionsDisabled:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->idxClsHandlers:Ljava/util/Map;

    .line 58
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->clsHandlers:Ljava/util/concurrent/ConcurrentMap;

    .line 62
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->orderedHandlers:Ljava/util/concurrent/ConcurrentMap;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->startErr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    .line 78
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->lsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 770
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->idxClsHandlers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->clsHandlers:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .param p3, "x3"    # Lorg/apache/ignite/lang/IgniteBiInClosure;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->onMessage0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->stopping:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .param p3, "x3"    # Lorg/apache/ignite/lang/IgniteBiInClosure;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->processMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->startErr:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private messageIndex(Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p1, "msgCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, -0x1

    .line 642
    :try_start_0
    const-string v3, "CACHE_MSG_IDX"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 644
    .local v1, "msgIdx":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_1

    .line 650
    .end local v1    # "msgIdx":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v2

    .line 647
    .restart local v1    # "msgIdx":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 649
    .end local v1    # "msgIdx":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 650
    .local v0, "ignored":Lorg/apache/ignite/IgniteCheckedException;
    goto :goto_0
.end method

.method private onMessage0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "cacheMsg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    const/4 v5, 0x0

    .line 190
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 193
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->stopping:Z

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received cache communication message while stopping (will ignore) [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->depEnabled:Z

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 274
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 276
    :goto_0
    return-void

    .line 201
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->depEnabled:Z

    if-eqz v2, :cond_3

    .line 202
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 204
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->unmarshall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;)V

    .line 206
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->allowForStartup()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->processMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :goto_1
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->depEnabled:Z

    if-eqz v2, :cond_4

    .line 272
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 274
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 209
    :cond_5
    :try_start_2
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->startFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 211
    .local v1, "startFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->processMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 261
    .end local v1    # "startFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/ClassNotFoundException;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 263
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to process message (note that distributed services do not support peer class loading, if you deploy distributed service you should have all required classes in CLASSPATH on all nodes in topology) [senderId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", err="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v2, Ljava/lang/ClassNotFoundException;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    :goto_2
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->depEnabled:Z

    if-eqz v2, :cond_6

    .line 272
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 274
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "startFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_7
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 215
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for start future to complete for message [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", locId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 219
    :cond_8
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 271
    .end local v1    # "startFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->depEnabled:Z

    if-eqz v3, :cond_9

    .line 272
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 274
    :cond_9
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v2

    .line 268
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_a
    :try_start_5
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to process message [senderId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2
.end method

.method private onSend(Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Ljava/util/UUID;)V
    .locals 4
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .param p2, "destNodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->messageId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 327
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->messageId(J)V

    .line 329
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 330
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 332
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->depEnabled:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v0

    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;

    .end local p1    # "msg":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->prepare(Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;)V

    .line 335
    :cond_2
    return-void
.end method

.method private processMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p3, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    :try_start_0
    invoke-interface {p3, p1, p2}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished processing cache communication message [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 310
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->contextReset()V

    .line 313
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->unwindEvicts(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 315
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed processing message [senderId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 310
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->contextReset()V

    .line 313
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->unwindEvicts(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 310
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->contextReset()V

    .line 313
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->unwindEvicts(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    throw v1
.end method

.method private startFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p1, "cacheMsg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->cacheId()I

    move-result v0

    .line 285
    .local v0, "cacheId":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->preloadersStartFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0
.end method

.method private unmarshall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;)V
    .locals 13
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "cacheMsg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x5d

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 698
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->deployInfo()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    move-result-object v7

    .line 703
    .local v7, "bean":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    if-eqz v7, :cond_2

    .line 704
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->depEnabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received deployment info while peer class loading is disabled [nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 707
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v0

    invoke-interface {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->userVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v4

    invoke-interface {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->localDeploymentOwner()Z

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->p2pContext(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;Z)V

    .line 710
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set P2P context [senderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 715
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 717
    :catch_0
    move-exception v8

    .line 718
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->ignoreClassErrors()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/InvalidClassException;

    aput-object v1, v0, v9

    const-class v1, Ljava/lang/ClassNotFoundException;

    aput-object v1, v0, v10

    const-class v1, Ljava/lang/NoClassDefFoundError;

    aput-object v1, v0, v11

    const/4 v1, 0x3

    const-class v2, Ljava/lang/UnsupportedClassVersionError;

    aput-object v2, v0, v1

    invoke-static {v8, v0}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    invoke-virtual {p2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->onClassError(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 722
    :cond_3
    throw v8

    .line 724
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v8

    .line 725
    .local v8, "e":Ljava/lang/Error;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->ignoreClassErrors()Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v11, [Ljava/lang/Class;

    const-class v1, Ljava/lang/NoClassDefFoundError;

    aput-object v1, v0, v9

    const-class v1, Ljava/lang/UnsupportedClassVersionError;

    aput-object v1, v0, v10

    invoke-static {v8, v0}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load class during unmarshalling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->onClassError(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 729
    :cond_4
    throw v8
.end method


# virtual methods
.method public addDisconnectListener(Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

    .prologue
    .line 626
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addDisconnectListener(Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;)V

    .line 627
    return-void
.end method

.method public addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 7
    .param p1, "cacheId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Ljava/util/UUID;",
            "+",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    .local p3, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/util/UUID;+Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    const/16 v6, 0x5d

    .line 573
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->messageIndex(Ljava/lang/Class;)I

    move-result v2

    .line 575
    .local v2, "msgIdx":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 576
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->idxClsHandlers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/lang/IgniteBiInClosure;

    .line 578
    .local v0, "cacheClsHandlers":[Lorg/apache/ignite/lang/IgniteBiInClosure;
    if-nez v0, :cond_0

    .line 579
    const/16 v3, 0x100

    new-array v0, v3, [Lorg/apache/ignite/lang/IgniteBiInClosure;

    .line 581
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->idxClsHandlers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_0
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 585
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate cache message ID found [cacheId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 588
    :cond_1
    aput-object p3, v0, v2

    .line 604
    .end local v0    # "cacheClsHandlers":[Lorg/apache/ignite/lang/IgniteBiInClosure;
    :cond_2
    :goto_0
    return-void

    .line 593
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;-><init>(ILjava/lang/Class;Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;)V

    .line 595
    .local v1, "key":Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->clsHandlers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 597
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handler for class already registered [cacheId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->clsHandlers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 601
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 602
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registered cache communication handler [cacheId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", handler="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public addOrderedHandler(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 4
    .param p1, "topic"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Ljava/util/UUID;",
            "+",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/util/UUID;+Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    const/16 v3, 0x5d

    .line 662
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->orderedHandlers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 663
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridIO()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$OrderedMessageListener;

    invoke-direct {v1, p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$OrderedMessageListener;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 666
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered ordered cache communication handler [topic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register ordered cache communication handler because it is already registered for this topic [topic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public nextIoId()J
    .locals 2

    .prologue
    .line 559
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onKernalStop0(Z)V
    .locals 8
    .param p1, "cancel"    # Z

    .prologue
    .line 149
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridIO()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CACHE:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;)Z

    .line 151
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->orderedHandlers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 152
    .local v3, "ordTopic":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridIO()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v3    # "ordTopic":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    .line 159
    .local v2, "interrupted":Z
    :goto_1
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    const-wide/16 v6, 0xc8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryWriteLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    if-eqz v2, :cond_1

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 175
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->stopping:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 180
    return-void

    .line 162
    :cond_2
    const-wide/16 v4, 0xc8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 164
    :catch_0
    move-exception v1

    .line 167
    .local v1, "ignore":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    .line 168
    goto :goto_1

    .line 178
    .end local v1    # "ignore":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    throw v4
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 735
    const-string v0, ">>> "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Cache IO manager memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   clsHandlersSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->clsHandlers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   orderedHandlersSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->orderedHandlers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    return-void
.end method

.method public removeDisconnectListener(Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

    .prologue
    .line 633
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeDisconnectListener(Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;)V

    .line 634
    return-void
.end method

.method public removeHandlers(I)V
    .locals 4
    .param p1, "cacheId"    # I

    .prologue
    .line 610
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 612
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->idxClsHandlers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->clsHandlers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 615
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;

    .line 617
    .local v1, "key":Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->cacheId:I
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;->access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 618
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 620
    .end local v1    # "key":Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;
    :cond_2
    return-void
.end method

.method public removeOrderedHandler(Ljava/lang/Object;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/Object;

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->orderedHandlers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridIO()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;)Z

    .line 683
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered ordered cache communication handler for topic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister ordered cache communication handler because it was not found for topic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public safeSend(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 15
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .param p3, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p4    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p4, "fallback":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 396
    :cond_0
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    if-nez p2, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 398
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 399
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 400
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message will not be sent as collection of nodes is empty: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 402
    :cond_2
    const/4 v9, 0x1

    .line 494
    :goto_0
    return v9

    .line 405
    :cond_3
    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->onSend(Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Ljava/util/UUID;)V

    .line 407
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 408
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending cache message [msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", nodes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 410
    :cond_4
    new-instance v6, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 412
    .local v6, "leftIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const/4 v3, 0x0

    .line 414
    .local v3, "cnt":I
    :cond_5
    :goto_1
    iget v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryCnt:I

    if-ge v3, v9, :cond_12

    .line 416
    const/4 v9, 0x1

    :try_start_0
    new-array v9, v9, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v10, 0x0

    new-instance v11, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$3;

    invoke-direct {v11, p0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Ljava/util/Collection;)V

    aput-object v11, v9, v10

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v8

    .line 422
    .local v8, "nodesView":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridIO()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v9

    sget-object v10, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CACHE:Lorg/apache/ignite/internal/GridTopic;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v8, v10, v0, v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/Collection;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 424
    const/4 v2, 0x0

    .line 428
    .local v2, "added":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/cluster/ClusterNode;

    .line 429
    .local v7, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 430
    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 432
    if-eqz p4, :cond_7

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 434
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 436
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 440
    .end local v7    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_8
    if-eqz v2, :cond_12

    .line 441
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v13, 0x0

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lorg/apache/ignite/internal/util/F0;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/F;->exist(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 442
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 443
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message will not be sent because all nodes left topology [msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", nodes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 452
    .end local v2    # "added":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "nodesView":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catch_0
    move-exception v4

    .line 453
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v2, 0x0

    .line 455
    .restart local v2    # "added":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/cluster/ClusterNode;

    .line 456
    .restart local v7    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 458
    :cond_b
    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 460
    if-eqz p4, :cond_c

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 462
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 464
    :cond_c
    const/4 v2, 0x1

    goto :goto_3

    .line 468
    .end local v7    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_d
    if-nez v2, :cond_f

    .line 469
    add-int/lit8 v3, v3, 0x1

    .line 471
    iget v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryCnt:I

    if-ne v3, v9, :cond_e

    .line 472
    throw v4

    .line 474
    :cond_e
    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryDelay:J

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    .line 477
    :cond_f
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v13, 0x0

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lorg/apache/ignite/internal/util/F0;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/F;->exist(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 478
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 479
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message will not be sent because all nodes left topology [msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", nodes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 482
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 485
    :cond_11
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 486
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message send will be retried [msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", nodes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", leftIds="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 491
    .end local v2    # "added":Z
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_12
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 492
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sent cache message [msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", nodes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 494
    :cond_13
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .param p3, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 505
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 507
    .local v0, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v0, :cond_0

    .line 508
    new-instance v1, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message because node left grid [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 512
    return-void
.end method

.method public send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 6
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .param p3, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5d

    .line 347
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 349
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->onSend(Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Ljava/util/UUID;)V

    .line 351
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending cache message [msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 354
    :cond_1
    const/4 v0, 0x0

    .line 356
    .local v0, "cnt":I
    :goto_0
    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryCnt:I

    if-gt v0, v2, :cond_7

    .line 358
    add-int/lit8 v0, v0, 0x1

    .line 360
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridIO()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CACHE:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v2, p1, v3, p2, p3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_2
    :goto_1
    return-void

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 366
    :cond_3
    new-instance v2, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node left grid while sending message to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 368
    :cond_4
    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryCnt:I

    if-ne v0, v2, :cond_5

    .line 369
    throw v1

    .line 370
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 371
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message to node (will retry): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 374
    :cond_6
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryDelay:J

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    goto :goto_0

    .line 377
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_7
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent cache message [msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public sendOrderedMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;J)V
    .locals 11
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "msg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->onSend(Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Ljava/util/UUID;)V

    .line 526
    const/4 v0, 0x0

    .line 528
    .local v0, "cnt":I
    :goto_0
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryCnt:I

    if-gt v0, v1, :cond_0

    .line 530
    add-int/lit8 v0, v0, 0x1

    .line 532
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridIO()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendOrderedMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;JZ)V

    .line 534
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sent ordered cache message [topic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :cond_0
    return-void

    .line 540
    :catch_0
    move-exception v9

    .line 541
    .local v9, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 542
    new-instance v1, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node left grid while sending ordered message to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 544
    :cond_1
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryCnt:I

    if-ne v0, v1, :cond_2

    .line 545
    throw v9

    .line 546
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 547
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message to node (will retry): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 550
    :cond_3
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryDelay:J

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    goto/16 :goto_0
.end method

.method public start0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkSendRetryDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryDelay:J

    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkSendRetryCount()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->retryCnt:I

    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->depEnabled:Z

    .line 143
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridIO()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CACHE:Lorg/apache/ignite/internal/GridTopic;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->lsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 144
    return-void
.end method
