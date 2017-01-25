.class public Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;
.super Ljava/lang/Object;
.source "GridDiscoveryTopologySnapshot.java"


# instance fields
.field private topNodes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private topVer:J


# direct methods
.method public constructor <init>(JLjava/util/Collection;)V
    .locals 1
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "topNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topVer:J

    .line 45
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topNodes:Ljava/util/Collection;

    .line 46
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyNodes()Ljava/util/Collection;
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
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topNodes:Ljava/util/Collection;

    return-object v0
.end method

.method public topologyVersion()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryTopologySnapshot;->topVer:J

    return-wide v0
.end method
