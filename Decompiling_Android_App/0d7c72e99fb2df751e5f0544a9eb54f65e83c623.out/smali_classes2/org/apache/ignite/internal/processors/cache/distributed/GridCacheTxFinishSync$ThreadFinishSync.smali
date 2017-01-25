.class Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;
.super Ljava/lang/Object;
.source "GridCacheTxFinishSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadFinishSync"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final nodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync",
            "<TK;TV;>.TxFinishSync;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

.field private threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;J)V
    .locals 2
    .param p2, "threadId"    # J

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->nodeMap:Ljava/util/Map;

    .line 120
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->threadId:J

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;JLorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$1;

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;J)V

    return-void
.end method


# virtual methods
.method public awaitAckAsync(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->nodeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;

    .line 156
    .local v0, "sync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    if-nez v0, :cond_0

    .line 157
    const/4 v1, 0x0

    .line 159
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->awaitAckAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0
.end method

.method public onNodeLeft(Ljava/util/UUID;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->nodeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;

    .line 178
    .local v0, "sync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->onNodeLeft()V

    .line 180
    :cond_0
    return-void
.end method

.method public onReceive(Ljava/util/UUID;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->nodeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;

    .line 168
    .local v0, "sync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->onReceive()V

    .line 170
    :cond_0
    return-void
.end method

.method public onSend(Ljava/util/UUID;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->nodeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;

    .line 129
    .local v1, "sync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    if-nez v1, :cond_1

    .line 130
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;

    .end local v1    # "sync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->threadId:J

    const/4 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$1;)V

    .line 132
    .restart local v1    # "sync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->nodeMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;

    .line 134
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Only user thread can add sync objects to the map."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 137
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    if-nez v2, :cond_1

    .line 138
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->onNodeLeft()V

    .line 140
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->nodeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v0    # "old":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    :cond_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->onSend()V

    .line 145
    return-void
.end method
