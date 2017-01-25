.class public Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;
.super Ljava/lang/Object;
.source "GridAffinityFunctionContextImpl.java"

# interfaces
.implements Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;


# instance fields
.field private final backups:I

.field private final discoEvt:Lorg/apache/ignite/events/DiscoveryEvent;

.field private final prevAssignment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final topSnapshot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private final topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/apache/ignite/events/DiscoveryEvent;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;I)V
    .locals 0
    .param p3, "discoEvt"    # Lorg/apache/ignite/events/DiscoveryEvent;
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "backups"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;",
            "Lorg/apache/ignite/events/DiscoveryEvent;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "topSnapshot":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p2, "prevAssignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->topSnapshot:Ljava/util/List;

    .line 53
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->prevAssignment:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->discoEvt:Lorg/apache/ignite/events/DiscoveryEvent;

    .line 55
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 56
    iput p5, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->backups:I

    .line 57
    return-void
.end method


# virtual methods
.method public backups()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->backups:I

    return v0
.end method

.method public currentTopologySnapshot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->topSnapshot:Ljava/util/List;

    return-object v0
.end method

.method public currentTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public discoveryEvent()Lorg/apache/ignite/events/DiscoveryEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->discoEvt:Lorg/apache/ignite/events/DiscoveryEvent;

    return-object v0
.end method

.method public previousAssignment(I)Ljava/util/List;
    .locals 1
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->prevAssignment:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;->prevAssignment:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method
