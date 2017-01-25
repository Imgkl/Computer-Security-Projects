.class abstract Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;
.super Ljava/lang/Object;
.source "GridClientAbstractProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;,
        Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final RETRY_CNT:I = 0x3

.field private static final RETRY_DELAY:I = 0x3e8

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

.field protected client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

.field protected filter:Lorg/apache/ignite/internal/client/GridClientPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation
.end field

.field protected nodes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->$assertionsDisabled:Z

    .line 38
    const-class v0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->log:Ljava/util/logging/Logger;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)V
    .locals 1
    .param p1, "client"    # Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    .param p4, "balancer"    # Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/impl/GridClientImpl;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection<TT;>;"
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .local p3, "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    .line 71
    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->nodes:Ljava/util/Collection;

    .line 72
    iput-object p3, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->filter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    .line 73
    iput-object p4, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 74
    return-void
.end method

.method private balancedNode(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 9
    .param p1, "exclude"    # Lorg/apache/ignite/internal/client/GridClientNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection<TT;>;"
    const/4 v8, 0x1

    .line 318
    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$1;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;)V

    .line 339
    .local v0, "excludeFilter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->projectionNodes(Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;

    move-result-object v1

    .line 341
    .local v1, "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    new-instance v3, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get balanced node (no nodes in topology were accepted by the filters): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/ignite/internal/client/GridClientPredicate;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->filter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    aput-object v7, v5, v6

    aput-object v0, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    .end local v0    # "excludeFilter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .end local v1    # "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;Lorg/apache/ignite/internal/client/GridClientNode;)V

    goto :goto_0

    .line 345
    .restart local v0    # "excludeFilter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .restart local v1    # "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 346
    invoke-static {v1}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/client/GridClientNode;

    .line 348
    .local v2, "ret":Lorg/apache/ignite/internal/client/GridClientNode;
    sget-boolean v3, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 353
    .end local v2    # "ret":Lorg/apache/ignite/internal/client/GridClientNode;
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    invoke-interface {v3, v1}, Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;->balancedNode(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection<TT;>;"
    .local p1, "first":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .local p2, "second":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 419
    .end local p1    # "first":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :goto_0
    return-object v0

    .line 411
    .restart local p1    # "first":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 412
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 414
    .local v0, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-interface {v0, p2}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 419
    .end local v0    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .end local p1    # "first":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :goto_1
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .restart local p1    # "first":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_2
    move-object p1, p2

    goto :goto_1
.end method


# virtual methods
.method protected checkNodeAlive(Ljava/util/UUID;)Z
    .locals 9
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection<TT;>;"
    const/4 v5, 0x0

    .line 237
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topology()Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .line 240
    .local v3, "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 243
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connectionManager()Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->connection(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridServerUnreachableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 246
    .local v0, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v3}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v0, p1, v6, v7, v8}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->node(Ljava/util/UUID;ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/client/GridClientNode;

    .line 248
    .local v4, "target":Lorg/apache/ignite/internal/client/GridClientNode;
    if-nez v4, :cond_1

    .line 249
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topology()Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodeFailed(Ljava/util/UUID;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/client/GridClientClosedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/ignite/internal/client/GridServerUnreachableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :cond_1
    if-eqz v4, :cond_2

    const/4 v5, 0x1

    .line 270
    .end local v0    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .end local v3    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .end local v4    # "target":Lorg/apache/ignite/internal/client/GridClientNode;
    :cond_2
    return v5

    .line 253
    .restart local v0    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .restart local v3    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connectionManager()Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v6

    invoke-interface {v6, v0, v3, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->terminateConnection(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Lorg/apache/ignite/internal/client/GridClientNode;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/client/GridServerUnreachableException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 264
    .end local v0    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .end local v1    # "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Lorg/apache/ignite/internal/client/GridServerUnreachableException;
    sget-object v6, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 266
    sget-object v6, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "Node request failed, try next node."

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 256
    .end local v1    # "e":Lorg/apache/ignite/internal/client/GridServerUnreachableException;
    .restart local v0    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :catch_2
    move-exception v1

    .line 257
    .local v1, "e":Lorg/apache/ignite/internal/client/GridClientClosedException;
    :try_start_3
    throw v1

    .line 259
    .end local v1    # "e":Lorg/apache/ignite/internal/client/GridClientClosedException;
    :catch_3
    move-exception v1

    .line 260
    .local v1, "e":Lorg/apache/ignite/internal/client/GridClientException;
    sget-object v6, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    sget-object v6, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "Node request failed, try next node."

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/client/GridServerUnreachableException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method protected createProjection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/internal/client/GridClientPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "balancer"    # Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;",
            "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection<TT;>;"
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .local p2, "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .local p4, "factory":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    new-instance v2, Lorg/apache/ignite/internal/client/GridClientException;

    const-string v3, "Failed to create projection: given nodes collection is empty."

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_0
    if-eqz p2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->filter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    if-eqz v2, :cond_2

    .line 375
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->filter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    invoke-direct {v0, v2, p2}, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;-><init>(Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/GridClientPredicate;)V

    .end local p2    # "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .local v0, "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    move-object p2, v0

    .line 379
    .end local v0    # "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .restart local p2    # "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->nodes:Ljava/util/Collection;

    invoke-direct {p0, v2, p1}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 381
    .local v1, "subset":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    new-instance v2, Lorg/apache/ignite/internal/client/GridClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create projection (given node set does not overlap with existing node set) [prjNodes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->nodes:Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    .end local v1    # "subset":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_2
    if-nez p2, :cond_1

    .line 377
    iget-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->filter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    goto :goto_0

    .line 385
    .restart local v1    # "subset":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_3
    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    .line 386
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/internal/client/GridClientPredicate;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->applyFilter(Ljava/lang/Iterable;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;

    move-result-object v1

    .line 388
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
    new-instance v2, Lorg/apache/ignite/internal/client/GridClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create projection (none of the nodes in projection node set passed the filter) [prjNodes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    :cond_4
    if-nez p3, :cond_5

    .line 394
    iget-object p3, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 396
    :cond_5
    invoke-interface {p4, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;->create(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    move-result-object v2

    return-object v2
.end method

.method public projectionNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->projectionNodes(Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected projectionNodes(Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;
    .locals 4
    .param p1    # Lorg/apache/ignite/internal/client/GridClientPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection<TT;>;"
    .local p1, "pred":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->nodes:Ljava/util/Collection;

    if-nez v1, :cond_2

    .line 299
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topology()Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes()Ljava/util/Collection;

    move-result-object v0

    .line 301
    .local v0, "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->filter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 302
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/ignite/internal/client/GridClientPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->filter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->applyFilter(Ljava/lang/Iterable;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;

    move-result-object v0

    .line 307
    :cond_1
    :goto_0
    return-object v0

    .line 305
    .end local v0    # "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->nodes:Ljava/util/Collection;

    .restart local v0    # "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    goto :goto_0
.end method

.method protected withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure",
            "<TR;>;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection<TT;>;"
    .local p1, "c":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure<TR;>;"
    const/4 v5, 0x0

    .line 89
    .local v5, "node":Lorg/apache/ignite/internal/client/GridClientNode;
    const/4 v1, 0x0

    .line 91
    .local v1, "changeNode":Z
    const/4 v0, 0x0

    .line 93
    .local v0, "cause":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v4, v6, :cond_3

    .line 94
    if-eqz v5, :cond_0

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :try_start_0
    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->balancedNode(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/GridClientNode;
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v5

    .line 107
    :cond_1
    const/4 v2, 0x0

    .line 110
    .local v2, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connectionManager()Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->connection(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    move-result-object v2

    .line 112
    invoke-interface {v5}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {p1, v2, v6}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;->apply(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
    :try_end_1
    .catch Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/ignite/internal/client/GridServerUnreachableException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    .line 149
    .end local v2    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :goto_1
    return-object v6

    .line 98
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Lorg/apache/ignite/internal/client/GridClientException;
    if-nez v5, :cond_2

    .line 100
    :try_start_2
    throw v3
    :try_end_2
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6

    .line 143
    .end local v3    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    :catch_1
    move-exception v3

    .line 144
    .restart local v3    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    new-instance v6, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-direct {v6, v3}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 102
    :cond_2
    :try_start_3
    new-instance v6, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "All nodes in projection failed when retrying to perform request. Attempts made: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6

    .line 146
    .end local v3    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    :catch_2
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 149
    new-instance v6, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    new-instance v7, Lorg/apache/ignite/internal/client/GridClientException;

    const-string v8, "Interrupted when (re)trying to perform request."

    invoke-direct {v7, v8, v3}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :catch_3
    move-exception v3

    .line 115
    .local v3, "e":Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException;
    :try_start_4
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connectionManager()Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v6

    invoke-interface {v6, v2, v5, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->terminateConnection(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Lorg/apache/ignite/internal/client/GridClientNode;Ljava/lang/Throwable;)V

    .line 118
    const/4 v1, 0x0

    .line 120
    move-object v0, v3

    .line 135
    .end local v3    # "e":Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException;
    :goto_3
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :catch_4
    move-exception v3

    .line 123
    .local v3, "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connectionManager()Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v6

    invoke-interface {v6, v2, v5, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->terminateConnection(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Lorg/apache/ignite/internal/client/GridClientNode;Ljava/lang/Throwable;)V

    .line 125
    const/4 v1, 0x1

    .line 127
    move-object v0, v3

    .line 133
    goto :goto_3

    .line 129
    .end local v3    # "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    :catch_5
    move-exception v3

    .line 130
    .local v3, "e":Lorg/apache/ignite/internal/client/GridServerUnreachableException;
    const/4 v1, 0x1

    .line 132
    move-object v0, v3

    goto :goto_3

    .line 138
    .end local v2    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .end local v3    # "e":Lorg/apache/ignite/internal/client/GridServerUnreachableException;
    :cond_3
    sget-boolean v6, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    if-nez v0, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 146
    :catch_6
    move-exception v3

    goto :goto_2

    .line 140
    :cond_4
    new-instance v6, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    const-string v7, "Failed to communicate with grid nodes (maximum count of retries reached)."

    invoke-direct {v6, v7, v0}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
.end method

.method protected withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 9
    .param p2, "cacheName"    # Ljava/lang/String;
    .param p3, "affKey"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure",
            "<TR;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection<TT;>;"
    .local p1, "c":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure<TR;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6, p2}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->affinity(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    move-result-object v0

    .line 171
    .local v0, "affinity":Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->nodes:Ljava/util/Collection;

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v6

    .line 221
    :goto_0
    return-object v6

    .line 175
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->projectionNodes()Ljava/util/Collection;

    move-result-object v5

    .line 177
    .local v5, "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    new-instance v6, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get affinity node (no nodes in topology were accepted by the filter): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->filter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5

    .line 215
    .end local v5    # "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Lorg/apache/ignite/internal/client/GridClientException;
    new-instance v6, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-direct {v6, v2}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 181
    .end local v2    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    .restart local v5    # "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_2
    :try_start_1
    invoke-interface {v0, p3, v5}, Lorg/apache/ignite/internal/client/GridClientDataAffinity;->node(Ljava/lang/Object;Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientNode;
    :try_end_1
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    .line 183
    .local v4, "node":Lorg/apache/ignite/internal/client/GridClientNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v6, 0x3

    if-ge v3, v6, :cond_5

    .line 184
    const/4 v1, 0x0

    .line 187
    .local v1, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connectionManager()Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->connection(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    move-result-object v1

    .line 189
    invoke-interface {v4}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {p1, v1, v6}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;->apply(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
    :try_end_2
    .catch Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v6

    goto :goto_0

    .line 191
    :catch_1
    move-exception v2

    .line 192
    .local v2, "e":Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException;
    :try_start_3
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connectionManager()Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v6

    invoke-interface {v6, v1, v4, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->terminateConnection(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Lorg/apache/ignite/internal/client/GridClientNode;Ljava/lang/Throwable;)V

    .line 209
    .end local v2    # "e":Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException;
    :cond_3
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 194
    :catch_2
    move-exception v2

    .line 195
    .local v2, "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connectionManager()Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v6

    invoke-interface {v6, v1, v4, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->terminateConnection(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Lorg/apache/ignite/internal/client/GridClientNode;Ljava/lang/Throwable;)V

    .line 197
    invoke-interface {v4}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->checkNodeAlive(Ljava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 198
    new-instance v6, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to communicate with mapped grid node for given affinity key (node left the grid) [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", affKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5

    .line 218
    .end local v1    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .end local v2    # "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/apache/ignite/internal/client/GridClientNode;
    .end local v5    # "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :catch_3
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 221
    new-instance v6, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    new-instance v7, Lorg/apache/ignite/internal/client/GridClientException;

    const-string v8, "Interrupted when (re)trying to perform request."

    invoke-direct {v7, v8, v2}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 202
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .restart local v3    # "i":I
    .restart local v4    # "node":Lorg/apache/ignite/internal/client/GridClientNode;
    .restart local v5    # "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :catch_4
    move-exception v6

    move-object v2, v6

    .line 203
    .local v2, "e":Ljava/lang/Throwable;
    :goto_3
    if-eqz v1, :cond_4

    .line 204
    :try_start_4
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connectionManager()Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v6

    invoke-interface {v6, v1, v4, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->terminateConnection(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Lorg/apache/ignite/internal/client/GridClientNode;Ljava/lang/Throwable;)V

    .line 206
    :cond_4
    throw v2

    .line 218
    .end local v1    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/apache/ignite/internal/client/GridClientNode;
    .end local v5    # "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :catch_5
    move-exception v2

    goto :goto_2

    .line 212
    .restart local v3    # "i":I
    .restart local v4    # "node":Lorg/apache/ignite/internal/client/GridClientNode;
    .restart local v5    # "prjNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_5
    new-instance v6, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to communicate with mapped grid node for given affinity key (did node leave the grid?) [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", affKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5

    .line 202
    .restart local v1    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :catch_6
    move-exception v6

    move-object v2, v6

    goto :goto_3
.end method
