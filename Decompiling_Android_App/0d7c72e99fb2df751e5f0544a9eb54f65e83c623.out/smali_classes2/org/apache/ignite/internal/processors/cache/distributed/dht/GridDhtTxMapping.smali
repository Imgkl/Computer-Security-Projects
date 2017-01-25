.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;
.super Ljava/lang/Object;
.source "GridDhtTxMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$1;,
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private last:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

.field private final mappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;",
            ">;"
        }
    .end annotation
.end field

.field private final txNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->txNodes:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->mappings:Ljava/util/List;

    .line 142
    return-void
.end method

.method private lastBackups(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;I)Ljava/util/Collection;
    .locals 8
    .param p1, "mapping"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping<TK;TV;>;"
    const/4 v5, 0x0

    .line 116
    .local v5, "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->backups:Ljava/util/Set;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 117
    .local v0, "backup":Ljava/util/UUID;
    const/4 v1, 0x0

    .line 119
    .local v1, "foundNext":Z
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->mappings:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 120
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->mappings:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    .line 122
    .local v4, "nextMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->primary:Ljava/util/UUID;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/UUID;

    move-result-object v6

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->primary:Ljava/util/UUID;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->backups:Ljava/util/Set;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    const/4 v1, 0x1

    .line 129
    .end local v4    # "nextMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    :cond_1
    if-nez v1, :cond_0

    .line 130
    if-nez v5, :cond_2

    .line 131
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->backups:Ljava/util/Set;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .restart local v5    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_2
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .restart local v4    # "nextMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    .end local v0    # "backup":Ljava/util/UUID;
    .end local v1    # "foundNext":Z
    .end local v2    # "i":I
    .end local v4    # "nextMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    :cond_4
    return-object v5
.end method


# virtual methods
.method public addMapping(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping<TK;TV;>;"
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 50
    .local v1, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v4, 0x0

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->notEqualTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    .line 52
    .local v0, "backups":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->last:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->last:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->primary:Ljava/util/UUID;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 53
    :cond_0
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$1;)V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->last:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    .line 55
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->mappings:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->last:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->txNodes:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->last:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->primary:Ljava/util/UUID;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 62
    .local v2, "storedBackups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-nez v2, :cond_1

    .line 63
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->txNodes:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->last:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->primary:Ljava/util/UUID;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/UUID;

    move-result-object v4

    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "storedBackups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .restart local v2    # "storedBackups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->last:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->backups:Ljava/util/Set;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 66
    return-void

    .line 58
    .end local v2    # "storedBackups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->last:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->add(Ljava/lang/Iterable;)V
    invoke-static {v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public initLast(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping<TK;TV;>;"
    .local p1, "mappings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->mappings:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 83
    :cond_0
    const/4 v2, 0x0

    .line 85
    .local v2, "idx":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 86
    .local v4, "map":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->mappings:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    .line 88
    .local v5, "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    invoke-direct {p0, v5, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->lastBackups(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;I)Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->lastBackups(Ljava/util/Collection;)V

    .line 90
    const/4 v3, 0x1

    .line 92
    .local v3, "last":Z
    add-int/lit8 v0, v2, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->mappings:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 93
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->mappings:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    .line 95
    .local v6, "nextMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->primary:Ljava/util/UUID;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/UUID;

    move-result-object v7

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->primary:Ljava/util/UUID;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 96
    const/4 v3, 0x0

    .line 102
    .end local v6    # "nextMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    :cond_1
    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->last(Z)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    goto :goto_0

    .line 92
    .restart local v6    # "nextMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "i":I
    .end local v3    # "last":Z
    .end local v4    # "map":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v5    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    .end local v6    # "nextMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    :cond_3
    return-void
.end method

.method public transactionNodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->txNodes:Ljava/util/Map;

    return-object v0
.end method
