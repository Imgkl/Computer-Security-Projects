.class Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;
.super Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;
.source "GridClientComputeImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientCompute;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection",
        "<",
        "Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;",
        ">;",
        "Lorg/apache/ignite/internal/client/GridClientCompute;"
    }
.end annotation


# static fields
.field private static final DAEMON:Lorg/apache/ignite/internal/client/GridClientPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_PORTABLES:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_DAEMON:Lorg/apache/ignite/internal/client/GridClientPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final prjFactory:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->KEEP_PORTABLES:Ljava/lang/ThreadLocal;

    .line 43
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$2;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$2;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->DAEMON:Lorg/apache/ignite/internal/client/GridClientPredicate;

    .line 50
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$3;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$3;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->NOT_DAEMON:Lorg/apache/ignite/internal/client/GridClientPredicate;

    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)V
    .locals 2
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
    .line 73
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .local p3, "nodeFilter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)V

    .line 57
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->prjFactory:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;

    .line 74
    return-void
.end method


# virtual methods
.method public affinityExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "cacheName"    # Ljava/lang/String;
    .param p3, "affKey"    # Ljava/lang/Object;
    .param p4, "taskArg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->affinityExecuteAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public affinityExecuteAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 3
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "cacheName"    # Ljava/lang/String;
    .param p3, "affKey"    # Ljava/lang/Object;
    .param p4, "taskArg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 141
    const-string v1, "taskName"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->KEEP_PORTABLES:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 145
    .local v0, "keepPortables":Z
    sget-object v1, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->KEEP_PORTABLES:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 147
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$5;

    invoke-direct {v1, p0, p1, p4, v0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$5;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v1

    return-object v1
.end method

.method public balancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    return-object v0
.end method

.method public daemonNodes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
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
    .line 189
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->projectionNodes()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/client/GridClientPredicate;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->DAEMON:Lorg/apache/ignite/internal/client/GridClientPredicate;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->applyFilter(Ljava/lang/Iterable;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "taskArg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->executeAsync(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 3
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "taskArg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 118
    const-string v1, "taskName"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v1, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->KEEP_PORTABLES:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 122
    .local v0, "keepPortables":Z
    sget-object v1, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->KEEP_PORTABLES:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 124
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$4;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v1

    return-object v1
.end method

.method public node(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v0, "id"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topology()Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->node(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v0

    return-object v0
.end method

.method public nodes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
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
    .line 169
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->projectionNodes()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/client/GridClientPredicate;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->NOT_DAEMON:Lorg/apache/ignite/internal/client/GridClientPredicate;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->applyFilter(Ljava/lang/Iterable;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public nodes(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/Collection",
            "<",
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
    .line 174
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const-string v0, "ids"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topology()Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public nodes(Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
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
    .line 182
    .local p1, "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    const-string v0, "filter"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->projectionNodes()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/client/GridClientPredicate;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;

    sget-object v4, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->NOT_DAEMON:Lorg/apache/ignite/internal/client/GridClientPredicate;

    invoke-direct {v3, p1, v4}, Lorg/apache/ignite/internal/client/impl/GridClientAndPredicate;-><init>(Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/GridClientPredicate;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->applyFilter(Ljava/lang/Iterable;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public projection(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientCompute;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Lorg/apache/ignite/internal/client/GridClientCompute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->prjFactory:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->createProjection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientCompute;

    return-object v0
.end method

.method public projection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/GridClientCompute;
    .locals 2
    .param p2, "balancer"    # Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientCompute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->prjFactory:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->createProjection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientCompute;

    return-object v0
.end method

.method public projection(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/GridClientCompute;
    .locals 3
    .param p1, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    const-string v0, "node"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->prjFactory:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;

    invoke-virtual {p0, v0, v2, v2, v1}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->createProjection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientCompute;

    return-object v0
.end method

.method public projection(Lorg/apache/ignite/internal/client/GridClientPredicate;)Lorg/apache/ignite/internal/client/GridClientCompute;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Lorg/apache/ignite/internal/client/GridClientCompute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .local p1, "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->prjFactory:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;

    invoke-virtual {p0, v1, p1, v1, v0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->createProjection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientCompute;

    return-object v0
.end method

.method public projection(Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/GridClientCompute;
    .locals 2
    .param p2, "balancer"    # Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientCompute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->prjFactory:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->createProjection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientCompute;

    return-object v0
.end method

.method public refreshNode(Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "includeAttrs"    # Z
    .param p3, "inclMetrics"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->refreshNodeAsync(Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientNode;

    return-object v0
.end method

.method public refreshNode(Ljava/util/UUID;ZZ)Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "includeAttrs"    # Z
    .param p3, "includeMetrics"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->refreshNodeAsync(Ljava/util/UUID;ZZ)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientNode;

    return-object v0
.end method

.method public refreshNodeAsync(Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "inclAttrs"    # Z
    .param p3, "includeMetrics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    const-string v0, "ip"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$7;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method

.method public refreshNodeAsync(Ljava/util/UUID;ZZ)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "includeAttrs"    # Z
    .param p3, "includeMetrics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "ZZ)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    const-string v0, "id"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$6;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;Ljava/util/UUID;ZZ)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method

.method public refreshTopology(ZZ)Ljava/util/List;
    .locals 1
    .param p1, "includeAttrs"    # Z
    .param p2, "includeMetrics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
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
    .line 233
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->refreshTopologyAsync(ZZ)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public refreshTopologyAsync(ZZ)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 1
    .param p1, "inclAttrs"    # Z
    .param p2, "includeMetrics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$8;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;ZZ)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method

.method public withKeepPortables()Lorg/apache/ignite/internal/client/GridClientCompute;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->KEEP_PORTABLES:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 252
    return-object p0
.end method
