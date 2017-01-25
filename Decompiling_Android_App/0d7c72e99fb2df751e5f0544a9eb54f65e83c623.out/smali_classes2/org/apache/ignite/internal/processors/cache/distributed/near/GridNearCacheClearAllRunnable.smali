.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;
.source "GridNearCacheClearAllRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dhtJob:Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;)V
    .locals 2
    .param p2, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable<TK;TV;>;"
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p3, "dhtJob":Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;"
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->id()I

    move-result v0

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->totalCount()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;II)V

    .line 42
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;->dhtJob:Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;

    .line 45
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;->dhtJob:Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;->dhtJob:Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->run()V

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->run()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheClearAllRunnable;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
