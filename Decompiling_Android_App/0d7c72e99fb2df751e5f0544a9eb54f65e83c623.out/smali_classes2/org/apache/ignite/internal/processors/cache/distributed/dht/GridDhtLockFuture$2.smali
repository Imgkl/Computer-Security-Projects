.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$2;
.super Ljava/lang/Object;
.source "GridDhtLockFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->undoLocks(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)V
    .locals 0

    .prologue
    .line 409
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 409
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture.2;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$2;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .prologue
    .line 411
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture.2;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    return-object v0
.end method
