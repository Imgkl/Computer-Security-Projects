.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;
.super Ljava/lang/Object;
.source "GridDhtAtomicCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->init()V
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
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V
    .locals 0

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache.3;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V
    .locals 3
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->hasPrimary()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->writeSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_ASYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-eq v0, v1, :cond_3

    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->remapKeys()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 161
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to process write update request in FULL_ASYNC mode for keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->error()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
