.class Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "GridServiceProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyInvocationHandler"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final sticky:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sticky"    # Z

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;, "Lorg/apache/ignite/internal/processors/service/GridServiceProxy<TT;>.ProxyInvocationHandler;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->name:Ljava/lang/String;

    .line 123
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->sticky:Z

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/service/GridServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProxy;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/service/GridServiceProxy$1;

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;, "Lorg/apache/ignite/internal/processors/service/GridServiceProxy<TT;>.ProxyInvocationHandler;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;Ljava/lang/String;Z)V

    return-void
.end method

.method private nodeForService(Ljava/lang/String;Z)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sticky"    # Z

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;, "Lorg/apache/ignite/internal/processors/service/GridServiceProxy<TT;>.ProxyInvocationHandler;"
    const/4 v1, 0x0

    .line 190
    :cond_0
    if-eqz p2, :cond_3

    .line 191
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$400(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    .line 193
    .local v0, "curNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v0, :cond_1

    .line 205
    .end local v0    # "curNode":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    return-object v0

    .line 196
    .restart local v0    # "curNode":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->randomNodeForService(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 198
    if-nez v0, :cond_2

    move-object v0, v1

    .line 199
    goto :goto_0

    .line 201
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$400(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 205
    .end local v0    # "curNode":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->randomNodeForService(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    goto :goto_0
.end method

.method private randomNodeForService(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;, "Lorg/apache/ignite/internal/processors/service/GridServiceProxy<TT;>.ProxyInvocationHandler;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 216
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$500(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$100(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v11

    invoke-virtual {v11, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->service(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 217
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$100(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v12

    .line 283
    :cond_0
    :goto_0
    return-object v12

    .line 219
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->serviceTopology(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 221
    .local v10, "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 225
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v11

    if-ne v11, v13, :cond_2

    .line 226
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/UUID;

    .line 228
    .local v7, "nodeId":Ljava/util/UUID;
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$600(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v11

    invoke-interface {v11, v7}, Lorg/apache/ignite/cluster/ClusterGroup;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v12

    goto :goto_0

    .line 231
    .end local v7    # "nodeId":Ljava/util/UUID;
    :cond_2
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$600(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v9

    .line 234
    .local v9, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v11

    if-ne v11, v13, :cond_4

    .line 235
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cluster/ClusterNode;

    .line 237
    .local v6, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .end local v6    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_1
    move-object v12, v6

    goto :goto_0

    .restart local v6    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    move-object v6, v12

    goto :goto_1

    .line 241
    .end local v6    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_4
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$600(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterGroup;->predicate()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v11

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v13

    if-ne v11, v13, :cond_8

    .line 242
    invoke-static {}, Lorg/jsr166/ThreadLocalRandom8;->current()Lorg/jsr166/ThreadLocalRandom8;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v11, v13}, Lorg/jsr166/ThreadLocalRandom8;->nextInt(I)I

    move-result v5

    .line 244
    .local v5, "idx":I
    const/4 v2, 0x0

    .line 247
    .local v2, "i":I
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;"
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lt v2, v5, :cond_5

    .line 249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_5

    .line 250
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$100(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/UUID;

    invoke-virtual {v12, v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v12

    goto/16 :goto_0

    :cond_5
    move v2, v3

    .line 252
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 254
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;"
    :cond_6
    const/4 v2, 0x0

    .line 257
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 258
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_7

    .line 259
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$100(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/UUID;

    invoke-virtual {v12, v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v12

    goto/16 :goto_0

    .line 261
    :cond_7
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-eq v2, v5, :cond_0

    move v2, v3

    .line 263
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .line 266
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "idx":I
    :cond_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v8, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cluster/ClusterNode;

    .line 269
    .restart local v6    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 271
    .local v0, "cnt":Ljava/lang/Integer;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_9

    .line 272
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 275
    .end local v0    # "cnt":Ljava/lang/Integer;
    .end local v6    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 278
    invoke-static {}, Lorg/jsr166/ThreadLocalRandom8;->current()Lorg/jsr166/ThreadLocalRandom8;

    move-result-object v11

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/jsr166/ThreadLocalRandom8;->nextInt(I)I

    move-result v5

    .line 280
    .restart local v5    # "idx":I
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/cluster/ClusterNode;

    move-object v12, v11

    goto/16 :goto_0
.end method

.method private serviceTopology(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;, "Lorg/apache/ignite/internal/processors/service/GridServiceProxy<TT;>.ProxyInvocationHandler;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$100(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->serviceDescriptors()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/services/ServiceDescriptor;

    .line 292
    .local v0, "desc":Lorg/apache/ignite/services/ServiceDescriptor;
    invoke-interface {v0}, Lorg/apache/ignite/services/ServiceDescriptor;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-interface {v0}, Lorg/apache/ignite/services/ServiceDescriptor;->topologySnapshot()Ljava/util/Map;

    move-result-object v2

    .line 296
    .end local v0    # "desc":Lorg/apache/ignite/services/ServiceDescriptor;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "mtd"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;, "Lorg/apache/ignite/internal/processors/service/GridServiceProxy<TT;>.ProxyInvocationHandler;"
    const/4 v11, 0x0

    .line 130
    :goto_0
    const/4 v7, 0x0

    .line 133
    .local v7, "node":Lorg/apache/ignite/cluster/ClusterNode;
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->name:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->sticky:Z

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->nodeForService(Ljava/lang/String;Z)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    .line 135
    if-nez v7, :cond_1

    .line 136
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find deployed service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/service/GridServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 155
    :catch_0
    move-exception v6

    .line 156
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$300(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$300(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service was not found or topology changed (will retry): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 169
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$400(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v7, v11}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v6

    .line 176
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 178
    new-instance v0, Lorg/apache/ignite/IgniteException;

    invoke-direct {v0, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 139
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$100(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->serviceContext(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    move-result-object v8

    .line 142
    .local v8, "svcCtx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    if-eqz v8, :cond_0

    .line 143
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .end local v8    # "svcCtx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    :goto_2
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->access$100(Lorg/apache/ignite/internal/processors/service/GridServiceProxy;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v9

    sget-object v10, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-instance v0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ProxyInvocationHandler;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/service/GridServiceProxy$1;)V

    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v9, v10, v0, v1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/service/GridServiceNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto :goto_2

    .line 159
    :catch_2
    move-exception v6

    .line 160
    .local v6, "e":Ljava/lang/Throwable;
    :goto_3
    throw v6

    .line 162
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v6

    .line 163
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/apache/ignite/IgniteException;

    invoke-direct {v0, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 159
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    goto :goto_3

    .line 155
    :catch_5
    move-exception v6

    goto/16 :goto_1
.end method
