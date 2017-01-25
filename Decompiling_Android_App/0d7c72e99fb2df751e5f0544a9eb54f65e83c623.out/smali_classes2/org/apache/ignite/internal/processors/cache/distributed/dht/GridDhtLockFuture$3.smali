.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;
.super Ljava/lang/Object;
.source "GridDhtLockFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->loadMissingFromStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI2",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

.field final synthetic val$loadMap:Ljava/util/Map;

.field final synthetic val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 951
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0

    .prologue
    .line 951
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->val$loadMap:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 951
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture.3;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V
    .locals 11
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 954
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture.3;"
    if-nez p2, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->val$loadMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 960
    .local v1, "entry0":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v2

    .line 962
    .local v2, "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v9

    sget-object v10, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_LOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    invoke-virtual/range {v1 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->initialValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 964
    .end local v2    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Should not get removed exception while holding lock on entry [entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 968
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v0

    .line 969
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
