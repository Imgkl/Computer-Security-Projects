.class public abstract Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter;
.super Ljava/lang/Object;
.source "GridClientBalancerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;


# static fields
.field private static final CONNECTABLE:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private preferDirectNodes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter;->CONNECTABLE:Lorg/apache/ignite/lang/IgnitePredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static selectDirectNodes(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .prologue
    .line 74
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->identity()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter;->CONNECTABLE:Lorg/apache/ignite/lang/IgnitePredicate;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isPreferDirectNodes()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter;->preferDirectNodes:Z

    return v0
.end method

.method public setPreferDirectNodes(Z)V
    .locals 0
    .param p1, "preferDirectNodes"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter;->preferDirectNodes:Z

    .line 65
    return-void
.end method
