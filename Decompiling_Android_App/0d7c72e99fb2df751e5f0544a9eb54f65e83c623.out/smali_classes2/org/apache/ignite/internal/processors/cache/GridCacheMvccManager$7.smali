.class Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$7;
.super Ljava/lang/Object;
.source "GridCacheMvccManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishLocks(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

.field final synthetic val$keyFilter:Lorg/apache/ignite/lang/IgnitePredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$7;->val$keyFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1011
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$7;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)Z
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .prologue
    .line 1013
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$7;->val$keyFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    return v0
.end method
