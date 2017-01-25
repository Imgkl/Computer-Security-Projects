.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;
.super Ljava/lang/Object;
.source "GridContinuousProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteRoutineInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private autoUnsubscribe:Z

.field private buf:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final bufSize:I

.field private delayedRegister:Z

.field private final hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

.field private final interval:J

.field private lastSndTime:J

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final nodeId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1276
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZ)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "hnd"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .param p3, "bufSize"    # I
    .param p4, "interval"    # J
    .param p6, "autoUnsubscribe"    # Z

    .prologue
    .line 1312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1290
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 1296
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lastSndTime:J

    .line 1313
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1314
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1315
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1316
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1318
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->nodeId:Ljava/util/UUID;

    .line 1319
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    .line 1320
    iput p3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->bufSize:I

    .line 1321
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->interval:J

    .line 1322
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->autoUnsubscribe:Z

    .line 1324
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->buf:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 1325
    return-void
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    .prologue
    .line 1276
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->autoUnsubscribe:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    .prologue
    .line 1276
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    .prologue
    .line 1276
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    .prologue
    .line 1276
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->interval:J

    return-wide v0
.end method


# virtual methods
.method add(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1356
    const/4 v0, 0x0

    .line 1358
    .local v0, "buf0":Lorg/jsr166/ConcurrentLinkedDeque8;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->buf:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v4

    iget v5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->bufSize:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_1

    .line 1359
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1362
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->buf:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v4, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->add(Ljava/lang/Object;)Z

    .line 1364
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->buf:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 1366
    new-instance v4, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->buf:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 1368
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->interval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1369
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lastSndTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1386
    :goto_0
    const/4 v3, 0x0

    .line 1388
    .local v3, "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz v0, :cond_2

    .line 1389
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1391
    .restart local v3    # "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1392
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1372
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 1376
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1379
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->buf:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v4, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1382
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 1395
    .restart local v3    # "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_2
    return-object v3
.end method

.method checkInterval()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1404
    sget-boolean v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->interval:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1406
    :cond_0
    const/4 v4, 0x0

    .line 1409
    .local v4, "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 1411
    .local v2, "now":J
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1414
    :try_start_0
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lastSndTime:J

    sub-long v0, v2, v6

    .line 1416
    .local v0, "diff":J
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->interval:J

    cmp-long v5, v0, v6

    if-ltz v5, :cond_1

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->buf:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v5}, Lorg/jsr166/ConcurrentLinkedDeque8;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1417
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->buf:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 1419
    new-instance v5, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v5}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->buf:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 1421
    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lastSndTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1428
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->interval:J

    cmp-long v5, v0, v6

    if-gez v5, :cond_2

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->interval:J

    sub-long/2addr v6, v0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v5

    return-object v5

    .line 1425
    .end local v0    # "diff":J
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 1428
    .restart local v0    # "diff":J
    :cond_2
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->interval:J

    goto :goto_0
.end method

.method public clearDelayedRegister()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1342
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->delayedRegister:Z

    if-eqz v1, :cond_0

    .line 1343
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->delayedRegister:Z

    .line 1345
    const/4 v0, 0x1

    .line 1348
    :cond_0
    return v0
.end method

.method public markDelayedRegister()V
    .locals 1

    .prologue
    .line 1331
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->isForQuery()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1333
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->delayedRegister:Z

    .line 1334
    return-void
.end method
