.class Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;
.super Ljava/lang/Object;
.source "GridLocalAtomicCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->removeAllAsync0(Ljava/util/Collection;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

.field final synthetic val$expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

.field final synthetic val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field final synthetic val$keys:Ljava/util/Collection;

.field final synthetic val$rawRetval:Z

.field final synthetic val$retval:Z

.field final synthetic val$writeThrough:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)V
    .locals 0

    .prologue
    .line 874
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.8;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$keys:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$retval:Z

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$rawRetval:Z

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$writeThrough:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.8;"
    const/4 v3, 0x0

    .line 876
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$keys:Ljava/util/Collection;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$retval:Z

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$rawRetval:Z

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-boolean v9, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$8;->val$writeThrough:Z

    move-object v4, v3

    # invokes: Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;
    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->access$100(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
