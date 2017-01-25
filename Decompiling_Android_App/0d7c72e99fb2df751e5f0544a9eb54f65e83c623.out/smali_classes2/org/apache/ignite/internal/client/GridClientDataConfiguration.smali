.class public Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
.super Ljava/lang/Object;
.source "GridClientDataConfiguration.java"


# instance fields
.field private affinity:Lorg/apache/ignite/internal/client/GridClientDataAffinity;

.field private balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/client/GridClientDataConfiguration;)V
    .locals 1
    .param p1, "cfg"    # Lorg/apache/ignite/internal/client/GridClientDataConfiguration;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 49
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->getAffinity()Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->affinity:Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    .line 50
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->getPinnedBalancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 51
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->name:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getAffinity()Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->affinity:Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPinnedBalancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    return-object v0
.end method

.method public setAffinity(Lorg/apache/ignite/internal/client/GridClientDataAffinity;)V
    .locals 0
    .param p1, "affinity"    # Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->affinity:Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    .line 98
    return-void
.end method

.method public setBalancer(Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)V
    .locals 0
    .param p1, "balancer"    # Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .prologue
    .line 116
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 117
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->name:Ljava/lang/String;

    .line 70
    return-void
.end method
