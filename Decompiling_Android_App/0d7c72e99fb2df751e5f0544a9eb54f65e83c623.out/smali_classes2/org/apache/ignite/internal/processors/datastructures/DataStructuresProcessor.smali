.class public final Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "DataStructuresProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;,
        Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;,
        Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;,
        Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;,
        Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;,
        Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;,
        Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DATA_STRUCTURES_KEY:Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;

.field private static final INITIAL_CAPACITY:I = 0xa

.field private static final MAX_UPDATE_RETRIES:I = 0x64

.field private static final RETRY_DELAY:J = 0x1L


# instance fields
.field private final atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

.field private atomicLongView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;",
            ">;"
        }
    .end annotation
.end field

.field private atomicRefView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;",
            ">;"
        }
    .end annotation
.end field

.field private atomicStampedView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;",
            ">;"
        }
    .end annotation
.end field

.field private cntDownLatchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;",
            ">;"
        }
    .end annotation
.end field

.field private dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private final dsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheRemovable;",
            ">;"
        }
    .end annotation
.end field

.field private dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;",
            ">;"
        }
    .end annotation
.end field

.field private seqView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;",
            ">;"
        }
    .end annotation
.end field

.field private utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    .line 52
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->DATA_STRUCTURES_KEY:Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 100
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 102
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getAtomicConfiguration()Lorg/apache/ignite/configuration/AtomicConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicRefView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicStampedView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCache;
    .param p2, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->retryRemove(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cntDownLatchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/configuration/AtomicConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->seqView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
    .param p2, "x2"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicLongView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1165
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    if-nez p1, :cond_1

    .line 1166
    const/4 p1, 0x0

    .line 1169
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object p1

    .line 1168
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cast object [expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkAtomicsConfiguration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

    if-nez v0, :cond_0

    .line 1188
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Atomic data structure can not be created, need to provide IgniteAtomicConfiguration."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :cond_0
    return-void
.end method

.method private checkSupportsQueue(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1197
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->atomic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v0, v1, :cond_0

    .line 1198
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "IgniteQueue can not be used with ATOMIC cache with CLOCK write order mode (change write order mode to PRIMARY in configuration)"

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_0
    return-void
.end method

.method private getAtomic(Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;ZLjava/lang/Class;)Ljava/lang/Object;
    .locals 13
    .param p2, "dsInfo"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX",
            "<TT;>;",
            "Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;",
            "Z",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 343
    .local p1, "c":Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;, "Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX<TT;>;"
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v8, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->DATA_STRUCTURES_KEY:Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;

    invoke-interface {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 345
    .local v2, "dsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    if-nez p3, :cond_2

    if-eqz v2, :cond_0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 346
    :cond_0
    const/4 v1, 0x0

    .line 379
    :cond_1
    :goto_0
    return-object v1

    .line 348
    :cond_2
    move/from16 v0, p3

    invoke-static {v2, p2, v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->validateDataStructure(Ljava/util/Map;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    .line 350
    .local v3, "err":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz v3, :cond_3

    .line 351
    throw v3

    .line 353
    :cond_3
    new-instance v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;-><init>(Ljava/lang/String;)V

    .line 356
    .local v4, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-direct {p0, v7, v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 358
    .local v1, "dataStructure":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 361
    if-nez p3, :cond_4

    .line 362
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;->applyx()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 364
    :cond_4
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v8, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v9, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v5

    .local v5, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v8, 0x0

    .line 365
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v9, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->DATA_STRUCTURES_KEY:Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;

    new-instance v10, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;

    invoke-direct {v10, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v7, v9, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v7

    invoke-interface {v7}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/apache/ignite/IgniteCheckedException;

    move-object v3, v0

    .line 367
    if-eqz v3, :cond_6

    .line 368
    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :catch_0
    move-exception v7

    :try_start_1
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :catchall_0
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v8, :cond_8

    :try_start_2
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_2
    throw v7

    .line 370
    :cond_6
    :try_start_3
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v7

    new-instance v9, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$4;

    invoke-direct {v9, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$4;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;)V

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    .line 376
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 377
    if-eqz v5, :cond_1

    if-eqz v8, :cond_7

    :try_start_4
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto/16 :goto_0

    :catch_2
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_2

    :catchall_1
    move-exception v7

    goto :goto_1
.end method

.method private getCollection(Lorg/apache/ignite/internal/util/lang/IgniteClosureX;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Ljava/lang/Object;
    .locals 17
    .param p2, "dsInfo"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/lang/IgniteClosureX",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "TT;>;",
            "Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 752
    .local p1, "c":Lorg/apache/ignite/internal/util/lang/IgniteClosureX;, "Lorg/apache/ignite/internal/util/lang/IgniteClosureX<Lorg/apache/ignite/internal/processors/cache/GridCacheContext;TT;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v12, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->DATA_STRUCTURES_KEY:Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;

    invoke-interface {v11, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 754
    .local v5, "dsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    if-nez p3, :cond_2

    if-eqz v5, :cond_0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 755
    :cond_0
    const/4 v4, 0x0

    .line 798
    :cond_1
    :goto_0
    return-object v4

    .line 757
    :cond_2
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v5, v0, v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->validateDataStructure(Ljava/util/Map;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v6

    .line 759
    .local v6, "err":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz v6, :cond_3

    .line 760
    throw v6

    .line 762
    :cond_3
    if-nez p3, :cond_5

    .line 763
    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 765
    .local v7, "oldInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    sget-boolean v11, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v11, :cond_4

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1600(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;

    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/AssertionError;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1600(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11

    .line 767
    :cond_4
    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1600(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->cacheName:Ljava/lang/String;
    invoke-static {v11}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->access$1700(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;)Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "cacheName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 771
    .local v2, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/lang/IgniteClosureX;->applyx(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 776
    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "cacheName":Ljava/lang/String;
    .end local v7    # "oldInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v12, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v13, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v11, v12, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v9

    .local v9, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v12, 0x0

    .line 777
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v13, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->DATA_STRUCTURES_KEY:Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;

    new-instance v14, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)V

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v11, v13, v14, v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v11

    invoke-interface {v11}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 780
    .local v8, "res":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/String;Lorg/apache/ignite/IgniteCheckedException;>;"
    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/apache/ignite/IgniteCheckedException;

    move-object v6, v0

    .line 782
    if-eqz v6, :cond_7

    .line 783
    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 776
    .end local v8    # "res":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/String;Lorg/apache/ignite/IgniteCheckedException;>;"
    :catch_0
    move-exception v11

    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    :catchall_0
    move-exception v12

    move-object/from16 v16, v12

    move-object v12, v11

    move-object/from16 v11, v16

    :goto_1
    if-eqz v9, :cond_6

    if-eqz v12, :cond_9

    :try_start_2
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_2
    throw v11

    .line 785
    .restart local v8    # "res":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/String;Lorg/apache/ignite/IgniteCheckedException;>;"
    :cond_7
    :try_start_3
    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 787
    .restart local v3    # "cacheName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 789
    .restart local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v11

    new-instance v13, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$13;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/util/lang/IgniteClosureX;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v4

    .line 795
    .local v4, "col":Ljava/lang/Object;, "TT;"
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 796
    if-eqz v9, :cond_1

    if-eqz v12, :cond_8

    :try_start_4
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto/16 :goto_0

    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "cacheName":Ljava/lang/String;
    .end local v4    # "col":Ljava/lang/Object;, "TT;"
    .end local v8    # "res":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/String;Lorg/apache/ignite/IgniteCheckedException;>;"
    :catch_2
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_2

    :catchall_1
    move-exception v11

    goto :goto_1
.end method

.method private removeDataStructure(Lorg/apache/ignite/lang/IgniteCallable;Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)V
    .locals 16
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;
    .param p4    # Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;",
            "Lorg/apache/ignite/internal/util/lang/IgniteInClosureX",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "c":Lorg/apache/ignite/lang/IgniteCallable;, "Lorg/apache/ignite/lang/IgniteCallable<TT;>;"
    .local p4, "afterRmv":Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;, "Lorg/apache/ignite/internal/util/lang/IgniteInClosureX<TT;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v11, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->DATA_STRUCTURES_KEY:Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;

    invoke-interface {v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 426
    .local v3, "dsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    if-eqz v3, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    const/4 v10, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1, v10}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Ljava/io/Externalizable;)V

    .line 431
    .local v2, "dsInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    const/4 v10, 0x0

    invoke-static {v3, v2, v10}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->validateDataStructure(Ljava/util/Map;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    .line 433
    .local v4, "err":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz v4, :cond_2

    .line 434
    throw v4

    .line 438
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v11, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v12, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v10, v11, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v8

    .local v8, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v11, 0x0

    .line 439
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v12, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->DATA_STRUCTURES_KEY:Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;

    new-instance v13, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;

    invoke-direct {v13, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)V

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v10, v12, v13, v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v10

    invoke-interface {v10}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 442
    .local v6, "res":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Boolean;Lorg/apache/ignite/IgniteCheckedException;>;"
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/apache/ignite/IgniteCheckedException;

    move-object v4, v0

    .line 444
    if-eqz v4, :cond_4

    .line 445
    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 438
    .end local v6    # "res":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Boolean;Lorg/apache/ignite/IgniteCheckedException;>;"
    :catch_0
    move-exception v10

    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :catchall_0
    move-exception v11

    move-object v15, v11

    move-object v11, v10

    move-object v10, v15

    :goto_1
    if-eqz v8, :cond_3

    if-eqz v11, :cond_a

    :try_start_2
    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    throw v10

    .line 447
    .restart local v6    # "res":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Boolean;Lorg/apache/ignite/IgniteCheckedException;>;"
    :cond_4
    :try_start_3
    sget-boolean v10, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v10, :cond_5

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 457
    .end local v6    # "res":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Boolean;Lorg/apache/ignite/IgniteCheckedException;>;"
    :catchall_1
    move-exception v10

    goto :goto_1

    .line 449
    .restart local v6    # "res":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Boolean;Lorg/apache/ignite/IgniteCheckedException;>;"
    :cond_5
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    .line 451
    .local v5, "exists":Z
    if-nez v5, :cond_7

    .line 457
    if-eqz v8, :cond_0

    if-eqz v11, :cond_6

    :try_start_4
    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v9

    .local v9, "x2":Ljava/lang/Throwable;
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_0

    .line 454
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v10

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v12}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v7

    .line 456
    .local v7, "rmvInfo":Ljava/lang/Object;, "TT;"
    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 457
    if-eqz v8, :cond_8

    if-eqz v11, :cond_9

    :try_start_6
    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 459
    :cond_8
    :goto_3
    if-eqz p4, :cond_0

    if-eqz v7, :cond_0

    .line 460
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;->applyx(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 457
    :catch_2
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_3

    .end local v5    # "exists":Z
    .end local v6    # "res":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Boolean;Lorg/apache/ignite/IgniteCheckedException;>;"
    .end local v7    # "rmvInfo":Ljava/lang/Object;, "TT;"
    :catch_3
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_2
.end method

.method private removeInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;",
            "Ljava/lang/Class",
            "<TR;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 956
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static retry(Lorg/apache/ignite/IgniteLogger;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 6
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/IgniteLogger;",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1126
    .local p1, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    const/4 v0, 0x0

    .local v0, "cnt":I
    move v1, v0

    .line 1130
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    return-object v3

    .line 1132
    :catch_0
    move-exception v2

    .line 1133
    .local v2, "e":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    :try_start_1
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v3, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1146
    .end local v2    # "e":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    :catch_1
    move-exception v2

    move v0, v1

    .line 1147
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    throw v2

    .line 1135
    .end local v0    # "cnt":I
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "cnt":I
    :catch_2
    move-exception v2

    .line 1136
    .restart local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    .line 1137
    :try_start_2
    throw v2

    .line 1146
    :catch_3
    move-exception v2

    goto :goto_1

    .line 1139
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute data structure operation, will retry [err="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1141
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move v1, v0

    .line 1143
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_0

    .line 1149
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_4
    move-exception v2

    move v0, v1

    .line 1150
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v3, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1135
    .end local v0    # "cnt":I
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cnt":I
    :catch_5
    move-exception v2

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_2

    .line 1149
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_7
    move-exception v2

    goto :goto_3
.end method

.method private retryRemove(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "cache"    # Lorg/apache/ignite/internal/processors/cache/GridCache;
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCache;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1111
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$20;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$20;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->retry(Lorg/apache/ignite/IgniteLogger;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static validateDataStructure(Ljava/util/Map;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Lorg/apache/ignite/IgniteCheckedException;
    .locals 3
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;",
            ">;",
            "Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;",
            "Z)",
            "Lorg/apache/ignite/IgniteCheckedException;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "dsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    const/4 v1, 0x0

    .line 812
    if-nez p0, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-object v1

    .line 815
    :cond_1
    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 817
    .local v0, "oldInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->validate(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final atomicLong(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicLong;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initVal"    # J
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 276
    const-string v0, "name"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->checkAtomicsConfiguration()V

    .line 280
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$3;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;ZJ)V

    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_LONG:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Ljava/io/Externalizable;)V

    const-class v2, Lorg/apache/ignite/IgniteAtomicLong;

    invoke-direct {p0, v0, v1, p4, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->getAtomic(Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;ZLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteAtomicLong;

    return-object v0
.end method

.method public final atomicReference(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicReference;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z)",
            "Lorg/apache/ignite/IgniteAtomicReference",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 479
    .local p2, "initVal":Ljava/lang/Object;, "TT;"
    const-string v0, "name"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->checkAtomicsConfiguration()V

    .line 483
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;ZLjava/lang/Object;)V

    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_REF:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Ljava/io/Externalizable;)V

    const-class v2, Lorg/apache/ignite/IgniteAtomicReference;

    invoke-direct {p0, v0, v1, p3, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->getAtomic(Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;ZLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteAtomicReference;

    return-object v0
.end method

.method public final atomicStamped(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicStamped;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;TS;Z)",
            "Lorg/apache/ignite/IgniteAtomicStamped",
            "<TT;TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 580
    .local p2, "initVal":Ljava/lang/Object;, "TT;"
    .local p3, "initStamp":Ljava/lang/Object;, "TS;"
    const-string v0, "name"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->checkAtomicsConfiguration()V

    .line 584
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$8;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_STAMPED:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Ljava/io/Externalizable;)V

    const-class v2, Lorg/apache/ignite/IgniteAtomicStamped;

    invoke-direct {p0, v0, v1, p4, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->getAtomic(Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;ZLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteAtomicStamped;

    return-object v0
.end method

.method public countDownLatch(Ljava/lang/String;IZZ)Lorg/apache/ignite/IgniteCountDownLatch;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cnt"    # I
    .param p3, "autoDel"    # Z
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 843
    const-string v0, "name"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    if-eqz p4, :cond_0

    .line 846
    if-ltz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "count can not be negative"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 848
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->checkAtomicsConfiguration()V

    .line 850
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;ZIZ)V

    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->COUNT_DOWN_LATCH:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Ljava/io/Externalizable;)V

    const-class v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;

    invoke-direct {p0, v0, v1, p4, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->getAtomic(Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;ZLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCountDownLatch;

    return-object v0

    .line 846
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKernalStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->utilityCache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .line 113
    sget-boolean v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->utilityCache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 115
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->atomicsCache()Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    .line 118
    .local v0, "atomicsCache":Lorg/apache/ignite/internal/processors/cache/GridCache;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 120
    :cond_3
    new-array v1, v4, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 122
    new-array v1, v4, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cntDownLatchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 124
    new-array v1, v4, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicLongView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 126
    new-array v1, v4, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicRefView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 128
    new-array v1, v4, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicStampedView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 130
    new-array v1, v4, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->seqView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 132
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    const-string v2, "ignite-atomics-sys-cache"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    goto/16 :goto_0
.end method

.method public onTxCommitted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 13
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 990
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-nez v9, :cond_1

    .line 1045
    :cond_0
    return-void

    .line 993
    :cond_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->internal()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 994
    :cond_2
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeEntries()Ljava/util/Collection;

    move-result-object v0

    .line 996
    .local v0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 997
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Committed entries: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 999
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1001
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v9

    sget-object v10, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v9, v10, :cond_5

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v9

    sget-object v10, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v9, v10, :cond_6

    :cond_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->internal()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1002
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v10

    invoke-interface {v9, v10, v12}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    .line 1004
    .local v3, "key":Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v10

    invoke-static {v9, v10, v12}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v8

    .line 1006
    .local v8, "val0":Ljava/lang/Object;
    instance-of v9, v8, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    if-eqz v9, :cond_6

    .line 1008
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheRemovable;

    .local v4, "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheRemovable;
    move-object v7, v8

    .line 1010
    check-cast v7, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    .line 1012
    .local v7, "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    instance-of v9, v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;

    if-eqz v9, :cond_7

    move-object v5, v4

    .line 1013
    check-cast v5, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;

    .line 1015
    .local v5, "latch0":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->get()I

    move-result v9

    invoke-interface {v5, v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;->onUpdate(I)V

    .line 1017
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->get()I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->autoDelete()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1018
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 1020
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheRemovable;->onRemoved()Z

    .line 1034
    .end local v3    # "key":Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
    .end local v4    # "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheRemovable;
    .end local v5    # "latch0":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    .end local v8    # "val0":Ljava/lang/Object;
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v9

    sget-object v10, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v9, v10, :cond_4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->internal()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1035
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v10

    invoke-interface {v9, v10, v12}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    .line 1038
    .restart local v3    # "key":Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/datastructures/GridCacheRemovable;

    .line 1040
    .local v6, "obj":Lorg/apache/ignite/internal/processors/datastructures/GridCacheRemovable;
    if-eqz v6, :cond_4

    .line 1041
    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheRemovable;->onRemoved()Z

    goto/16 :goto_0

    .line 1025
    .end local v6    # "obj":Lorg/apache/ignite/internal/processors/datastructures/GridCacheRemovable;
    .restart local v4    # "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheRemovable;
    .restart local v7    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    .restart local v8    # "val0":Ljava/lang/Object;
    :cond_7
    if-eqz v4, :cond_6

    .line 1026
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to cast object [expected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lorg/apache/ignite/IgniteCountDownLatch;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", actual="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1177
    const-string v0, ">>> "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Data structure processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   dsMapSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    return-void

    .line 1178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final queue(Ljava/lang/String;ILorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteQueue;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cap"    # I
    .param p3, "cfg"    # Lorg/apache/ignite/configuration/CollectionConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/ignite/configuration/CollectionConfiguration;",
            ")",
            "Lorg/apache/ignite/IgniteQueue",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 680
    const-string v0, "name"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    if-eqz p3, :cond_2

    .line 683
    if-gtz p2, :cond_0

    .line 684
    const p2, 0x7fffffff

    .line 686
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CollectionConfiguration;->getCacheName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    if-nez v0, :cond_1

    .line 687
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache for collection is not configured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CollectionConfiguration;->getCacheName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CollectionConfiguration;->getCacheName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->checkSupportsQueue(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 692
    :cond_2
    new-instance v6, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->QUEUE:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    if-eqz p3, :cond_3

    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;

    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CollectionConfiguration;->getCacheName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CollectionConfiguration;->isCollocated()Z

    move-result v5

    invoke-direct {v0, v2, v5, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$QueueInfo;-><init>(Ljava/lang/String;ZI)V

    :goto_0
    invoke-direct {v6, p1, v1, v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Ljava/io/Externalizable;)V

    .line 696
    .local v6, "dsInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    move v3, p2

    .line 698
    .local v3, "cap0":I
    if-eqz p3, :cond_4

    const/4 v4, 0x1

    .line 700
    .local v4, "create":Z
    :goto_1
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;IZLorg/apache/ignite/configuration/CollectionConfiguration;)V

    invoke-direct {p0, v0, v6, v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->getCollection(Lorg/apache/ignite/internal/util/lang/IgniteClosureX;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteQueue;

    return-object v0

    .line 692
    .end local v3    # "cap0":I
    .end local v4    # "create":Z
    .end local v6    # "dsInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 698
    .restart local v3    # "cap0":I
    .restart local v6    # "dsInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public final removeAtomicLong(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 389
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 390
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 392
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$5;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;)V

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_LONG:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeDataStructure(Lorg/apache/ignite/lang/IgniteCallable;Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)V

    .line 409
    return-void
.end method

.method public final removeAtomicReference(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 541
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 542
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 544
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$7;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$7;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;)V

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_REF:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeDataStructure(Lorg/apache/ignite/lang/IgniteCallable;Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)V

    .line 563
    return-void
.end method

.method public final removeAtomicStamped(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 642
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 643
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 645
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$9;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$9;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;)V

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_STAMPED:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeDataStructure(Lorg/apache/ignite/lang/IgniteCallable;Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)V

    .line 664
    return-void
.end method

.method public removeCountDownLatch(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 908
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 909
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 911
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;)V

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->COUNT_DOWN_LATCH:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeDataStructure(Lorg/apache/ignite/lang/IgniteCallable;Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)V

    .line 945
    return-void
.end method

.method public removeQueue(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 713
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 714
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 716
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$11;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$11;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;)V

    .line 722
    .local v1, "rmv":Lorg/apache/ignite/lang/IgniteCallable;, "Lorg/apache/ignite/lang/IgniteCallable<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$12;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$12;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;)V

    .line 737
    .local v0, "afterRmv":Lorg/apache/ignite/internal/util/typedef/CIX1;, "Lorg/apache/ignite/internal/util/typedef/CIX1<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;>;"
    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->QUEUE:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    invoke-direct {p0, v1, p1, v2, v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeDataStructure(Lorg/apache/ignite/lang/IgniteCallable;Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)V

    .line 738
    return-void
.end method

.method public final removeSequence(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 238
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 240
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->checkAtomicsConfiguration()V

    .line 242
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;)V

    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_SEQ:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeDataStructure(Lorg/apache/ignite/lang/IgniteCallable;Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)V

    .line 261
    return-void
.end method

.method public removeSet(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1085
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1086
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1088
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$18;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$18;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;)V

    .line 1094
    .local v1, "rmv":Lorg/apache/ignite/lang/IgniteCallable;, "Lorg/apache/ignite/lang/IgniteCallable<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$19;

    invoke-direct {v0, p0, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$19;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1100
    .local v0, "afterRmv":Lorg/apache/ignite/internal/util/typedef/CIX1;, "Lorg/apache/ignite/internal/util/typedef/CIX1<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;>;"
    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->SET:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    invoke-direct {p0, v1, p1, v2, v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeDataStructure(Lorg/apache/ignite/lang/IgniteCallable;Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)V

    .line 1101
    return-void
.end method

.method public final sequence(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicSequence;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initVal"    # J
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 150
    const-string v0, "name"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->checkAtomicsConfiguration()V

    .line 154
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;ZJ)V

    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->ATOMIC_SEQ:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Ljava/io/Externalizable;)V

    const-class v2, Lorg/apache/ignite/IgniteAtomicSequence;

    invoke-direct {p0, v0, v1, p4, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->getAtomic(Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;ZLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteAtomicSequence;

    return-object v0
.end method

.method public set(Ljava/lang/String;Lorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteSet;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cfg"    # Lorg/apache/ignite/configuration/CollectionConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/configuration/CollectionConfiguration;",
            ")",
            "Lorg/apache/ignite/IgniteSet",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1059
    const-string v2, "name"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    if-eqz p2, :cond_0

    .line 1062
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CollectionConfiguration;->getCacheName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1063
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache for collection is not configured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CollectionConfiguration;->getCacheName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1066
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;->SET:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;

    if-eqz p2, :cond_1

    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CollectionConfiguration;->getCacheName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CollectionConfiguration;->isCollocated()Z

    move-result v5

    invoke-direct {v2, v4, v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;-><init>(Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {v1, p1, v3, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureType;Ljava/io/Externalizable;)V

    .line 1070
    .local v1, "dsInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 1072
    .local v0, "create":Z
    :goto_1
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;-><init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;ZLorg/apache/ignite/configuration/CollectionConfiguration;)V

    invoke-direct {p0, v2, v1, v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->getCollection(Lorg/apache/ignite/internal/util/lang/IgniteClosureX;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/IgniteSet;

    return-object v2

    .line 1066
    .end local v0    # "create":Z
    .end local v1    # "dsInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1070
    .restart local v1    # "dsInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
