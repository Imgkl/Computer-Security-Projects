.class public Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;
.super Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;
.source "GridClientDataImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection",
        "<",
        "Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;",
        ">;",
        "Lorg/apache/ignite/internal/client/GridClientData;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cacheMetrics:Z

.field private cacheName:Ljava/lang/String;

.field private final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field private volatile metrics:Lorg/apache/ignite/internal/client/GridClientDataMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Ljava/util/Set;Z)V
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "client"    # Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    .param p5, "balancer"    # Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
    .param p7, "cacheMetrics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .local p4, "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .local p6, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)V

    .line 60
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    .line 61
    iput-boolean p7, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheMetrics:Z

    .line 62
    if-nez p6, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;

    .line 63
    return-void

    .line 62
    :cond_0
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Lorg/apache/ignite/internal/client/GridClientDataMetrics;)Lorg/apache/ignite/internal/client/GridClientDataMetrics;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;
    .param p1, "x1"    # Lorg/apache/ignite/internal/client/GridClientDataMetrics;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->metrics:Lorg/apache/ignite/internal/client/GridClientDataMetrics;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheMetrics:Z

    return v0
.end method


# virtual methods
.method public affinity(Ljava/lang/Object;)Ljava/util/UUID;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v3, "key"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->affinity(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    move-result-object v0

    .line 250
    .local v0, "affinity":Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    if-nez v0, :cond_0

    .line 251
    const/4 v3, 0x0

    .line 263
    :goto_0
    return-object v3

    .line 253
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->projectionNodes()Ljava/util/Collection;

    move-result-object v2

    .line 255
    .local v2, "prj":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    new-instance v3, Lorg/apache/ignite/internal/client/GridClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get affinity node (projection node set for cache is empty): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    :cond_1
    invoke-interface {v0, p1, v2}, Lorg/apache/ignite/internal/client/GridClientDataAffinity;->node(Ljava/lang/Object;Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v1

    .line 261
    .local v1, "node":Lorg/apache/ignite/internal/client/GridClientNode;
    sget-boolean v3, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 263
    :cond_2
    invoke-interface {v1}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v3

    goto :goto_0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->appendAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public appendAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    const-string v0, "val"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$11;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$11;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public cachedMetrics()Lorg/apache/ignite/internal/client/GridClientDataMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->metrics:Lorg/apache/ignite/internal/client/GridClientDataMetrics;

    return-object v0
.end method

.method public cas(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val1":Ljava/lang/Object;, "TV;"
    .local p3, "val2":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->casAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public casAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val1":Ljava/lang/Object;, "TV;"
    .local p3, "val2":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method

.method public flags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;

    return-object v0
.end method

.method public varargs flagsOff([Lorg/apache/ignite/internal/client/GridClientCacheFlag;)Lorg/apache/ignite/internal/client/GridClientData;
    .locals 5
    .param p1, "flags"    # [Lorg/apache/ignite/internal/client/GridClientCacheFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 359
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, p0

    .line 366
    :goto_0
    return-object v1

    .line 362
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 364
    .local v0, "flagSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 366
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->nodes:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->filter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    new-instance v4, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;

    invoke-direct {v4, p0, v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/util/Set;)V

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->createProjection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/GridClientData;

    goto :goto_0
.end method

.method public varargs flagsOn([Lorg/apache/ignite/internal/client/GridClientCacheFlag;)Lorg/apache/ignite/internal/client/GridClientData;
    .locals 5
    .param p1, "flags"    # [Lorg/apache/ignite/internal/client/GridClientCacheFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 346
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p0

    .line 354
    :goto_0
    return-object v1

    .line 349
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-class v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 352
    .local v0, "flagSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    :goto_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 354
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->nodes:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->filter:Lorg/apache/ignite/internal/client/GridClientPredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    new-instance v4, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;

    invoke-direct {v4, p0, v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/util/Set;)V

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->createProjection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/GridClientData;

    goto :goto_0

    .line 349
    .end local v0    # "flagSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->getAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->getAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    const-string v1, "keys"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>(Ljava/lang/Object;)V

    .line 160
    :goto_0
    return-object v1

    .line 158
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$4;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$4;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v1

    goto :goto_0
.end method

.method public getAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$3;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method

.method public metrics()Lorg/apache/ignite/internal/client/GridClientDataMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->metricsAsync()Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientDataMetrics;

    return-object v0
.end method

.method public metricsAsync()Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientDataMetrics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$9;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$9;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)V

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    .line 282
    .local v0, "fut":Lorg/apache/ignite/internal/client/GridClientFuture;, "Lorg/apache/ignite/internal/client/GridClientFuture<Lorg/apache/ignite/internal/client/GridClientDataMetrics;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheMetrics:Z

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/client/GridClientFutureListener;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$10;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$10;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/client/GridClientFuture;->listen([Lorg/apache/ignite/internal/client/GridClientFutureListener;)V

    .line 294
    :cond_0
    return-object v0
.end method

.method public varargs pinNodes(Lorg/apache/ignite/internal/client/GridClientNode;[Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/GridClientData;
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;
    .param p2, "nodes"    # [Lorg/apache/ignite/internal/client/GridClientNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v0, "pinnedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    if-eqz p1, :cond_0

    .line 75
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-eqz v1, :cond_1

    .line 78
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    .end local v0    # "pinnedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;

    invoke-direct {v1, p0, v3}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/util/Set;)V

    invoke-virtual {p0, v0, v2, v2, v1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->createProjection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/GridClientData;

    return-object v1

    .line 72
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public pinnedNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->nodes:Ljava/util/Collection;

    return-object v0
.end method

.method public prepend(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->prependAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public prependAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    const-string v0, "val"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$12;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic projectionNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->projectionNodes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->putAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->putAllAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public putAllAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const-string v1, "entries"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>(Ljava/lang/Object;)V

    .line 121
    :goto_0
    return-object v1

    .line 119
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$2;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/util/Map;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v1

    goto :goto_0
.end method

.method public putAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const-string v0, "val"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$1;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->removeAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->removeAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public removeAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    const-string v1, "keys"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>(Ljava/lang/Object;)V

    .line 200
    :goto_0
    return-object v1

    .line 198
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$6;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$6;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v1

    goto :goto_0
.end method

.method public removeAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$5;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    const-string v0, "val"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$7;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->withReconnectHandling(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method
