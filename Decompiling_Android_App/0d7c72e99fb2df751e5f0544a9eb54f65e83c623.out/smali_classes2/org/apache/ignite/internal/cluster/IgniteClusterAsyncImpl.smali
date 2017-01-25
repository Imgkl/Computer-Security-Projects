.class public Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;
.super Lorg/apache/ignite/internal/AsyncSupportAdapter;
.source "IgniteClusterAsyncImpl.java"

# interfaces
.implements Lorg/apache/ignite/IgniteCluster;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/AsyncSupportAdapter",
        "<",
        "Lorg/apache/ignite/IgniteCluster;",
        ">;",
        "Lorg/apache/ignite/IgniteCluster;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;)V
    .locals 1
    .param p1, "cluster"    # Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>(Z)V

    .line 56
    iput-object p1, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    .line 57
    return-void
.end method


# virtual methods
.method public forAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forClientNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forClientNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forClients()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forClients()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forDaemons()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forDaemons()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forDataNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forDataNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forHost(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forHost(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forLocal()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forLocal()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public varargs forNode(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "nodes"    # [Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forNode(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public varargs forNodeId(Ljava/util/UUID;[Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "ids"    # [Ljava/util/UUID;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forNodeId(Ljava/util/UUID;[Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterGroup;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forNodes(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterGroup;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forNodes(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forOldest()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forOldest()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forOthers(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forOthers(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public varargs forOthers(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "nodes"    # [Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forOthers(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterGroup;"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forRandom()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forRandom()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forRemotes()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forRemotes()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forServers()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forServers()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forYoungest()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forYoungest()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public ignite()Lorg/apache/ignite/Ignite;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ignite()Lorg/apache/ignite/Ignite;

    move-result-object v0

    return-object v0
.end method

.method public localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 97
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public mapKeysToNodes(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
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
    .line 92
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->mapKeysToNodes(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public metrics()Lorg/apache/ignite/cluster/ClusterMetrics;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public nodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->nodes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public pingNode(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->pingNode(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public predicate()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->predicate()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    return-object v0
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
    .line 282
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    .line 283
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->withAsync()Lorg/apache/ignite/IgniteCluster;

    move-result-object v0

    return-object v0
.end method

.method public resetMetrics()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->resetMetrics()V

    .line 153
    return-void
.end method

.method public restartNodes()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->restartNodes()V

    .line 143
    return-void
.end method

.method public restartNodes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->restartNodes(Ljava/util/Collection;)V

    .line 148
    return-void
.end method

.method public startNodes(Ljava/io/File;ZII)Ljava/util/Collection;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "restart"    # Z
    .param p3, "timeout"    # I
    .param p4, "maxConn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZII)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->startNodesAsync(Ljava/io/File;ZII)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public startNodes(Ljava/util/Collection;Ljava/util/Map;ZII)Ljava/util/Collection;
    .locals 7
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "restart"    # Z
    .param p4, "timeout"    # I
    .param p5, "maxConn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZII)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p2, "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->startNodesAsync(Ljava/util/Collection;Ljava/util/Map;ZII)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 125
    :catch_0
    move-exception v6

    .line 126
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v0

    throw v0
.end method

.method public stopNodes()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->stopNodes()V

    .line 133
    return-void
.end method

.method public stopNodes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->stopNodes(Ljava/util/Collection;)V

    .line 138
    return-void
.end method

.method public topology(J)Ljava/util/Collection;
    .locals 1
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->topology(J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()J
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->topologyVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic withAsync()Lorg/apache/ignite/IgniteCluster;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCluster;

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
    .line 287
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 288
    return-void
.end method
