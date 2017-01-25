.class public Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;
.super Ljava/lang/Object;
.source "GridSetQueryPredicate.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiPredicate;
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
        "Lorg/apache/ignite/lang/IgniteBiPredicate",
        "<TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private collocated:Z

.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private filter:Z

.field private setId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;, "Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Z)V
    .locals 0
    .param p1, "setId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "collocated"    # Z

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;, "Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 59
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->collocated:Z

    .line 60
    return-void
.end method

.method private filterKeys()Z
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;, "Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->collocated:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;, "Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->filter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collocated()Z
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;, "Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->collocated:Z

    return v0
.end method

.method public init(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;, "Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 68
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->filterKeys()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->filter:Z

    .line 69
    return-void
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
    .line 108
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;, "Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 109
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->collocated:Z

    .line 110
    return-void
.end method

.method public setId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;, "Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;, "Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 102
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;, "Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 103
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->collocated:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 104
    return-void
.end method
