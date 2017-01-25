.class public Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;
.super Ljava/lang/Object;
.source "GridClientPartitionAffinity.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientDataAffinity;
.implements Lorg/apache/ignite/internal/client/GridClientTopologyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;,
        Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;
    }
.end annotation


# static fields
.field public static final DFLT_PARTITION_CNT:I = 0x2710


# instance fields
.field private final addedNodes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private backupFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final backupIdFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hashIdRslvr:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;

.field private final nodeHash:Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private parts:I

.field private final primaryIdFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0, v0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;-><init>(Ljava/lang/Integer;Lorg/apache/ignite/internal/client/GridClientPredicate;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lorg/apache/ignite/internal/client/GridClientPredicate;)V
    .locals 2
    .param p1, "parts"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "backupFilter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<Ljava/util/UUID;>;"
    const/16 v0, 0x2710

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$1;-><init>(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->hashIdRslvr:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;

    .line 77
    iput v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->parts:I

    .line 80
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->addedNodes:Ljava/util/concurrent/ConcurrentMap;

    .line 86
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$2;-><init>(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->backupIdFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    .line 93
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$3;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$3;-><init>(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->primaryIdFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    .line 117
    if-nez p1, :cond_0

    :goto_0
    iput v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->parts:I

    .line 118
    iput-object p2, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->backupFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    .line 120
    new-instance v0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->nodeHash:Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;

    .line 121
    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;)Lorg/apache/ignite/internal/client/GridClientPredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->backupFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    return-object v0
.end method

.method private partition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->getPartitions()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method private resolveNodeInfo(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    .locals 5
    .param p1, "n"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 268
    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v0

    .line 269
    .local v0, "nodeId":Ljava/util/UUID;
    iget-object v3, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->addedNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .line 271
    .local v1, "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 279
    .end local v1    # "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    .local v2, "nodeInfo":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 274
    .end local v2    # "nodeInfo":Ljava/lang/Object;
    .restart local v1    # "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .end local v1    # "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    iget-object v3, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->hashIdRslvr:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;

    if-nez v3, :cond_1

    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;-><init>(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$1;)V

    .line 276
    .restart local v1    # "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    iget-object v3, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->addedNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v3, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->nodeHash:Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->addNode(Ljava/lang/Object;I)Z

    move-object v2, v1

    .line 279
    .restart local v2    # "nodeInfo":Ljava/lang/Object;
    goto :goto_0

    .line 274
    .end local v1    # "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    .end local v2    # "nodeInfo":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->hashIdRslvr:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;->getHashId(Lorg/apache/ignite/internal/client/GridClientNode;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public getBackupFilter()Lorg/apache/ignite/internal/client/GridClientPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->backupFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    return-object v0
.end method

.method public getHashIdResolver()Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->hashIdRslvr:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;

    return-object v0
.end method

.method public getPartitions()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->parts:I

    return v0
.end method

.method public node(Ljava/lang/Object;Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 13
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Lorg/apache/ignite/internal/client/GridClientNode;"
        }
    .end annotation

    .prologue
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 208
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 209
    :cond_0
    const/4 v6, 0x0

    .line 236
    :goto_0
    return-object v6

    .line 211
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 212
    invoke-static {p2}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/client/GridClientNode;

    goto :goto_0

    .line 214
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 217
    .local v1, "lookup":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/client/GridClientNode;

    .line 219
    .local v2, "node":Lorg/apache/ignite/internal/client/GridClientNode;
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->resolveNodeInfo(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    move-result-object v6

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    .end local v2    # "node":Lorg/apache/ignite/internal/client/GridClientNode;
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 224
    .local v4, "nodeInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->partition(Ljava/lang/Object;)I

    move-result v5

    .line 226
    .local v5, "part":I
    iget-object v6, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->backupFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    if-nez v6, :cond_5

    .line 227
    iget-object v6, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->nodeHash:Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->node(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .line 236
    .local v3, "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    :cond_4
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/client/GridClientNode;

    goto :goto_0

    .line 229
    .end local v3    # "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    :cond_5
    iget-object v6, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->nodeHash:Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v12, [Lorg/apache/ignite/internal/client/GridClientPredicate;

    iget-object v9, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->primaryIdFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    aput-object v9, v8, v11

    invoke-static {v4}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->contains(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientPredicate;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->node(Ljava/lang/Object;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .line 231
    .restart local v3    # "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    if-nez v3, :cond_4

    .line 233
    iget-object v6, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->nodeHash:Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v12, [Lorg/apache/ignite/internal/client/GridClientPredicate;

    iget-object v9, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->backupIdFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    aput-object v9, v8, v11

    invoke-static {v4}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->contains(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientPredicate;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->node(Ljava/lang/Object;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    check-cast v3, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .restart local v3    # "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    goto :goto_2
.end method

.method public onNodeAdded(Lorg/apache/ignite/internal/client/GridClientNode;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 247
    return-void
.end method

.method public onNodeRemoved(Lorg/apache/ignite/internal/client/GridClientNode;)V
    .locals 3
    .param p1, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 251
    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v0

    .line 252
    .local v0, "nodeId":Ljava/util/UUID;
    iget-object v2, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->addedNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .line 254
    .local v1, "nodeInfo":Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;
    if-nez v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->nodeHash:Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->removeNode(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setBackupFilter(Lorg/apache/ignite/internal/client/GridClientPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "backupFilter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<Ljava/util/UUID;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->backupFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    .line 204
    return-void
.end method

.method public setHashIdResolver(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;)V
    .locals 0
    .param p1, "hashIdRslvr"    # Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->hashIdRslvr:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;

    .line 178
    return-void
.end method

.method public setPartitions(I)V
    .locals 0
    .param p1, "parts"    # I

    .prologue
    .line 145
    iput p1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->parts:I

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " [nodeHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->nodeHash:Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hashIdRslvr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->hashIdRslvr:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->parts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", addedNodes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->addedNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", backupFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->backupFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
