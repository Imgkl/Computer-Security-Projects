.class Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;
.super Ljava/lang/Object;
.source "GridClientComputeImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridClientComputeFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory",
        "<",
        "Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;
    .param p2, "x1"    # Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$1;

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/apache/ignite/internal/client/GridClientPredicate;
    .param p3, "x2"    # Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;->create(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;
    .locals 2
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
            "Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .local p2, "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-Lorg/apache/ignite/internal/client/GridClientNode;>;"
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$GridClientComputeFactory;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

    iget-object v1, v1, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)V

    return-object v0
.end method
