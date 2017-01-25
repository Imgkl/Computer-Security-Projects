.class public Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;
.super Ljava/lang/Object;
.source "GridCacheAffinityProxy.java"

# interfaces
.implements Lorg/apache/ignite/cache/affinity/Affinity;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/affinity/Affinity",
        "<TK;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private delegate:Lorg/apache/ignite/cache/affinity/Affinity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/affinity/Affinity",
            "<TK;>;"
        }
    .end annotation
.end field

.field private gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/affinity/Affinity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/cache/affinity/Affinity",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "delegate":Lorg/apache/ignite/cache/affinity/Affinity;, "Lorg/apache/ignite/cache/affinity/Affinity<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 57
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 59
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteEx;->affinity(Ljava/lang/String;)Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public affinityKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 186
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->affinityKey(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 189
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public allPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    .locals 3
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 150
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->allPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 153
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public backupPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    .locals 3
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 138
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->backupPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 141
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public isBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 102
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/cache/affinity/Affinity;->isBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 105
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public isPrimary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 90
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/cache/affinity/Affinity;->isPrimary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 93
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public isPrimaryOrBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 114
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/cache/affinity/Affinity;->isPrimaryOrBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 117
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public mapKeyToNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 199
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 202
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public mapKeyToPrimaryAndBackups(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 223
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToPrimaryAndBackups(Ljava/lang/Object;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 226
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public mapKeysToNodes(Ljava/util/Collection;)Ljava/util/Map;
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 211
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeysToNodes(Ljava/util/Collection;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 214
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public mapPartitionToNode(I)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .param p1, "part"    # I

    .prologue
    .line 159
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 162
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->mapPartitionToNode(I)Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 165
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public mapPartitionToPrimaryAndBackups(I)Ljava/util/Collection;
    .locals 3
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 235
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->mapPartitionToPrimaryAndBackups(I)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 238
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public mapPartitionsToNodes(Ljava/util/Collection;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    .local p1, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 174
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->mapPartitionsToNodes(Ljava/util/Collection;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 177
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public partition(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 78
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->partition(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 81
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public partitions()I
    .locals 3

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 66
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1}, Lorg/apache/ignite/cache/affinity/Affinity;->partitions()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 69
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public primaryPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    .locals 3
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 126
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->delegate:Lorg/apache/ignite/cache/affinity/Affinity;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->primaryPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 129
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 251
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityProxy;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 245
    return-void
.end method
