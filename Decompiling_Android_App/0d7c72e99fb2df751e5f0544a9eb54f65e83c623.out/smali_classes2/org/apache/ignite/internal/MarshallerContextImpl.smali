.class public Lorg/apache/ignite/internal/MarshallerContextImpl;
.super Lorg/apache/ignite/internal/MarshallerContextAdapter;
.source "MarshallerContextImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private failedCnt:I

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private log:Lorg/apache/ignite/IgniteLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/MarshallerContextImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/MarshallerContextImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/ignite/internal/MarshallerContextAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected className(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->awaitQuiet(Ljava/util/concurrent/CountDownLatch;)V

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public onMarshallerCacheReady(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 46
    sget-boolean v0, Lorg/apache/ignite/internal/MarshallerContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    const-class v0, Lorg/apache/ignite/internal/MarshallerContextImpl;

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 50
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->marshallerCache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 53
    return-void
.end method

.method protected registerClassName(ILjava/lang/String;)Z
    .locals 7
    .param p1, "id"    # I
    .param p2, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 59
    .local v0, "cache0":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v3

    .line 65
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->tryPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, "old":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 68
    iget-object v4, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Type ID collision detected, may affect performance (set idMapper property on marshaller to fix) [id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clsName1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "clsName2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheTryPutFailedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 79
    .end local v2    # "old":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    iget v4, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->failedCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->failedCnt:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    .line 81
    iget-object v4, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to register marshalled class for more than 10 times in a row (may affect performance)"

    invoke-static {v4, v1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    iput v3, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->failedCnt:I

    goto :goto_0

    .line 75
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "old":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iput v4, p0, Lorg/apache/ignite/internal/MarshallerContextImpl;->failedCnt:I
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheTryPutFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    const/4 v3, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "old":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_1
.end method
