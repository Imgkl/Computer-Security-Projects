.class Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$3;
.super Ljava/lang/Object;
.source "CacheDataStructuresManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->retryRemoveAll(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

.field final synthetic val$cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

.field final synthetic val$keys:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$3;->val$cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$3;->val$keys:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$3;->val$cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$3;->val$keys:Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 527
    const/4 v0, 0x0

    return-object v0
.end method
