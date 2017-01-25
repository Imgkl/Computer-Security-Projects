.class Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;
.super Ljava/lang/Object;
.source "GridClientDataImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridClientDataFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory",
        "<",
        "Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;->flags:Ljava/util/Set;

    .line 381
    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/apache/ignite/internal/client/GridClientPredicate;
    .param p3, "x2"    # Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;->create(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;
    .locals 8
    .param p3, "balancer"    # Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
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
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .local p2, "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->access$000(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    iget-object v2, v2, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;->flags:Ljava/util/Set;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$GridClientDataFactory;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheMetrics:Z
    invoke-static {v3}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->access$300(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)Z

    move-result v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Ljava/util/Set;Z)V

    return-object v0
.end method
