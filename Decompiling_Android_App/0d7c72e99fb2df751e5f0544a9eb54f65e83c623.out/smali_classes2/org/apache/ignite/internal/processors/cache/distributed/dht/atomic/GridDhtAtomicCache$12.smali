.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$12;
.super Ljava/lang/Object;
.source "GridDhtAtomicCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->asyncOp(Lorg/apache/ignite/internal/util/typedef/CO;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C2",
        "<TT;",
        "Ljava/lang/Exception;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

.field final synthetic val$op:Lorg/apache/ignite/internal/util/typedef/CO;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/internal/util/typedef/CO;)V
    .locals 0

    .prologue
    .line 627
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$12;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache.12;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$12;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$12;->val$op:Lorg/apache/ignite/internal/util/typedef/CO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 627
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$12;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache.12;"
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$12;->apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$12;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache.12;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$12;->val$op:Lorg/apache/ignite/internal/util/typedef/CO;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/typedef/CO;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    return-object v0
.end method
