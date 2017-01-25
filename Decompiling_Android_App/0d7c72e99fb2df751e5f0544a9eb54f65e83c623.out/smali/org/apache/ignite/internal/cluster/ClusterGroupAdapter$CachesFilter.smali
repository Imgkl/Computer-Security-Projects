.class Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;
.super Ljava/lang/Object;
.source "ClusterGroupAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachesFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private affNodes:Z

.field private final cacheName:Ljava/lang/String;

.field private clients:Z

.field private transient ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private nearNodes:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "affNodes"    # Z
    .param p3, "nearNodes"    # Z
    .param p4, "clients"    # Z

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object p1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->cacheName:Ljava/lang/String;

    .line 694
    iput-boolean p2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->affNodes:Z

    .line 695
    iput-boolean p3, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->nearNodes:Z

    .line 696
    iput-boolean p4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->clients:Z

    .line 697
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZZZLorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;

    .prologue
    .line 669
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 669
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 4
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 702
    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v1, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    .line 704
    .local v0, "disco":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    iget-boolean v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->affNodes:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 716
    :goto_0
    return v1

    .line 707
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->affNodes:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 708
    goto :goto_0

    .line 710
    :cond_1
    iget-boolean v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->nearNodes:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheNearNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 711
    goto :goto_0

    .line 713
    :cond_2
    iget-boolean v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->clients:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheClientNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 714
    goto :goto_0

    :cond_3
    move v1, v3

    .line 716
    goto :goto_0
.end method
