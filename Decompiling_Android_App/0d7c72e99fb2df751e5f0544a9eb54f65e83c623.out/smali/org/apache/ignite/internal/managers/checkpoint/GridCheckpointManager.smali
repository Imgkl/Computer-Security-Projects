.class public Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
.super Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.source "GridCheckpointManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$2;,
        Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;,
        Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/managers/GridManagerAdapter",
        "<",
        "Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/SkipDaemon;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MAX_CLOSED_SESS:I = 0x2800


# instance fields
.field private final closedSess:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final keyMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;",
            ">;"
        }
    .end annotation
.end field

.field private final lsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

.field private final marsh:Lorg/apache/ignite/marshaller/Marshaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    const/16 v1, 0x2800

    .line 72
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCheckpointSpi()[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 56
    new-instance v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointRequestListener;-><init>(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->lsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 59
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    .line 62
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    const/high16 v3, 0x3f400000    # 0.75f

    const/16 v4, 0x100

    sget-object v5, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;-><init>(IIFILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->closedSess:Ljava/util/Collection;

    .line 74
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 75
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->record(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->closedSess:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    return-object v0
.end method

.method private record(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checkpoint saved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/events/CheckpointEvent;

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1, p2}, Lorg/apache/ignite/events/CheckpointEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 355
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 345
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checkpoint loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 348
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 350
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checkpoint removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public loadCheckpoint(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 6
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 286
    sget-boolean v3, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 287
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 290
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    invoke-interface {v3, p2}, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;->loadCheckpoint(Ljava/lang/String;)[B

    move-result-object v0

    .line 292
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 295
    .local v2, "state":Ljava/io/Serializable;
    if-eqz v0, :cond_2

    .line 296
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "state":Ljava/io/Serializable;
    check-cast v2, Ljava/io/Serializable;

    .line 298
    .restart local v2    # "state":Ljava/io/Serializable;
    :cond_2
    const/4 v3, 0x2

    invoke-direct {p0, v3, p2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->record(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    return-object v2

    .line 302
    .end local v0    # "data":[B
    .end local v2    # "state":Ljava/io/Serializable;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load checkpoint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onSessionEnd(Lorg/apache/ignite/internal/GridTaskSessionInternal;Z)V
    .locals 6
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .param p2, "cleanup"    # Z

    .prologue
    .line 312
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->closedSess:Ljava/util/Collection;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    if-nez v4, :cond_0

    .line 316
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 318
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 319
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    invoke-interface {v4, v1}, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;->removeCheckpoint(Ljava/lang/String;)Z

    goto :goto_0

    .line 324
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 326
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;

    .line 330
    .local v2, "keys":Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;->session()Lorg/apache/ignite/internal/GridTaskSessionInternal;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->session()Lorg/apache/ignite/internal/GridTaskSessionInternal;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 331
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 333
    .end local v2    # "keys":Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;
    :cond_1
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Checkpoint manager memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

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

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  keyMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method public removeCheckpoint(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 242
    sget-boolean v5, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 244
    :cond_0
    const/4 v3, 0x0

    .line 246
    .local v3, "rmv":Z
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->getSpis()[Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    .local v0, "arr$":[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 247
    .local v4, "spi":Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
    invoke-interface {v4, p1}, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;->removeCheckpoint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    const/4 v3, 0x1

    .line 246
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v4    # "spi":Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
    :cond_2
    return v3
.end method

.method public removeCheckpoint(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 259
    sget-boolean v2, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 260
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 262
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 264
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 268
    .local v1, "rmv":Z
    if-eqz v0, :cond_3

    .line 269
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    invoke-interface {v2, p2}, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;->removeCheckpoint(Ljava/lang/String;)Z

    move-result v1

    .line 276
    :cond_2
    :goto_0
    return v1

    .line 273
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checkpoint will not be removed (key map not found) [key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sessionIds()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->getSpis()[Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    .local v0, "arr$":[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 80
    .local v3, "spi":Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
    new-instance v4, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;-><init>(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)V

    invoke-interface {v3, v4}, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;->setCheckpointListener(Lorg/apache/ignite/spi/checkpoint/CheckpointListener;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v3    # "spi":Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->startSpi()V

    .line 89
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CHECKPOINT:Lorg/apache/ignite/internal/GridTopic;

    iget-object v6, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->lsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 91
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->startInfo()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 93
    :cond_1
    return-void
.end method

.method public stop(Z)V
    .locals 3
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    .line 102
    .local v0, "comm":Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    if-eqz v0, :cond_2

    .line 103
    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CHECKPOINT:Lorg/apache/ignite/internal/GridTopic;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->lsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 105
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->stopSpi()V

    .line 107
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->stopInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public storeCheckpoint(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;JZ)Z
    .locals 19
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;
    .param p4, "scope"    # Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .param p5, "timeout"    # J
    .param p7, "override"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 130
    sget-boolean v3, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 131
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 133
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    .line 135
    .local v12, "now":J
    const/4 v14, 0x0

    .line 138
    .local v14, "saved":Z
    :try_start_0
    sget-object v3, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$2;->$SwitchMap$org$apache$ignite$compute$ComputeTaskSessionScope:[I

    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 226
    sget-boolean v3, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown checkpoint scope: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to save checkpoint [key="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", val="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", scope="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", timeout="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 140
    .end local v2    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :pswitch_0
    if-nez p3, :cond_3

    const/4 v5, 0x0

    .line 142
    .local v5, "data":[B
    :goto_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-object/from16 v4, p2

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-interface/range {v3 .. v8}, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;->saveCheckpoint(Ljava/lang/String;[BJZ)Z

    move-result v14

    .line 144
    if-eqz v14, :cond_2

    .line 145
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->record(ILjava/lang/String;)V

    .line 234
    .end local v5    # "data":[B
    :cond_2
    :goto_1
    return v14

    .line 140
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v5

    goto :goto_0

    .line 151
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->closedSess:Ljava/util/Collection;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checkpoint will not be saved due to session invalidation [key="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", val="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ses="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Checkpoint will not be saved due to session invalidation."

    invoke-static {v3, v4, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 159
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getEndTime()J

    move-result-wide v6

    cmp-long v3, v12, v6

    if-lez v3, :cond_5

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checkpoint will not be saved due to session timeout [key="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", val="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ses="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Checkpoint will not be saved due to session timeout."

    invoke-static {v3, v4, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 167
    :cond_5
    add-long v6, v12, p5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getEndTime()J

    move-result-wide v16

    cmp-long v3, v6, v16

    if-gtz v3, :cond_6

    add-long v6, v12, p5

    const-wide/16 v16, 0x0

    cmp-long v3, v6, v16

    if-gez v3, :cond_7

    .line 168
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getEndTime()J

    move-result-wide v6

    sub-long p5, v6, v12

    .line 171
    :cond_7
    if-nez p3, :cond_9

    const/4 v5, 0x0

    .line 173
    .restart local v5    # "data":[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 175
    .local v9, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v9, :cond_a

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    new-instance v9, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;

    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->session()Lorg/apache/ignite/internal/GridTaskSessionInternal;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v9, v3, v7}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;-><init>(Lorg/apache/ignite/internal/GridTaskSessionInternal;Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;)V

    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v9

    check-cast v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;

    move-object v3, v0

    invoke-interface {v4, v6, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 179
    .local v11, "old":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_8

    .line 180
    move-object v9, v11

    .line 183
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->closedSess:Ljava/util/Collection;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checkpoint will not be saved due to session invalidation [key="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", val="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ses="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Checkpoint will not be saved due to session invalidation."

    invoke-static {v3, v4, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 171
    .end local v5    # "data":[B
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "old":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v5

    goto/16 :goto_2

    .line 194
    .restart local v5    # "data":[B
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved keys for session [keys="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ses="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", keyMap="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->keyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 200
    :cond_b
    if-eqz v9, :cond_2

    .line 202
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getTaskNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v10

    .line 205
    .local v10, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v10, :cond_c

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CHECKPOINT:Lorg/apache/ignite/internal/GridTopic;

    new-instance v6, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-direct {v6, v7, v0, v8}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v3, v10, v4, v6, v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 213
    .end local v10    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_c
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/GridTaskSessionInternal;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-object/from16 v4, p2

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-interface/range {v3 .. v8}, Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;->saveCheckpoint(Ljava/lang/String;[BJZ)Z

    move-result v14

    .line 215
    if-eqz v14, :cond_2

    .line 216
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->record(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
