.class public Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;
.super Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter;
.source "GridClientRandomBalancer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public balancedNode(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Lorg/apache/ignite/internal/client/GridClientNode;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    .line 46
    .local v4, "size":I
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;->isPreferDirectNodes()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    invoke-static {p1}, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;->selectDirectNodes(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 49
    .local v0, "direct":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 53
    .local v1, "directSize":I
    if-lez v1, :cond_1

    if-ge v1, v4, :cond_1

    .line 54
    move-object p1, v0

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    .line 59
    .end local v0    # "direct":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .end local v1    # "directSize":I
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;->random:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 61
    .local v2, "idx":I
    instance-of v5, p1, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 62
    check-cast p1, Ljava/util/List;

    .end local p1    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/client/GridClientNode;

    .line 72
    :goto_0
    return-object v5

    .line 64
    .restart local p1    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 66
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    :goto_1
    if-lez v2, :cond_3

    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 72
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/client/GridClientNode;

    goto :goto_0
.end method
