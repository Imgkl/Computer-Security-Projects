.class Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;
.super Ljava/lang/Object;
.source "GridLocalAtomicCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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

.field final synthetic val$expiry:Ljavax/cache/expiry/ExpiryPolicy;

.field final synthetic val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field final synthetic val$invokeArgs:[Ljava/lang/Object;

.field final synthetic val$keys:Ljava/util/Collection;

.field final synthetic val$op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field final synthetic val$rawRetval:Z

.field final synthetic val$retval:Z

.field final synthetic val$vals:Ljava/util/Collection;

.field final synthetic val$writeThrough:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/util/Collection;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)V
    .locals 0

    .prologue
    .line 836
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.7;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$keys:Ljava/util/Collection;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$vals:Ljava/util/Collection;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$invokeArgs:[Ljava/lang/Object;

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$expiry:Ljavax/cache/expiry/ExpiryPolicy;

    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$retval:Z

    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$rawRetval:Z

    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-boolean p10, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$writeThrough:Z

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
    .line 838
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.7;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$keys:Ljava/util/Collection;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$vals:Ljava/util/Collection;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$invokeArgs:[Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$expiry:Ljavax/cache/expiry/ExpiryPolicy;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$retval:Z

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$rawRetval:Z

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-boolean v9, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$7;->val$writeThrough:Z

    # invokes: Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->updateAllInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;
    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->access$100(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/lang/Iterable;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
