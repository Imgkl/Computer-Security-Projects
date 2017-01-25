.class Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;
.super Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
.source "ClusterGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgeClusterGroup"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private isOldest:Z

.field private volatile lastTopVer:J

.field private volatile node:Lorg/apache/ignite/cluster/ClusterNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>()V

    .line 802
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V
    .locals 6
    .param p1, "parent"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
    .param p2, "isOldest"    # Z

    .prologue
    .line 809
    iget-object v1, p1, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    # getter for: Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;
    invoke-static {p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->access$500(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    # getter for: Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;
    invoke-static {p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->access$600(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;)Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Set;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    .line 811
    iput-boolean p2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->isOldest:Z

    .line 813
    invoke-direct {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->reset()V

    .line 814
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;ZLorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;

    .prologue
    .line 784
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;-><init>(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V

    return-void
.end method

.method private declared-synchronized reset()V
    .locals 2

    .prologue
    .line 820
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->guard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 823
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->lastTopVer:J

    .line 825
    iget-boolean v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->isOldest:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->oldest(Ljava/util/Collection;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->node:Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->unguard()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 830
    monitor-exit p0

    return-void

    .line 825
    :cond_0
    :try_start_3
    invoke-super {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->youngest(Ljava/util/Collection;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 828
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->unguard()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 820
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 4

    .prologue
    .line 834
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->lastTopVer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 835
    invoke-direct {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->reset()V

    .line 837
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public nodes()Ljava/util/Collection;
    .locals 6
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
    .line 842
    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->lastTopVer:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 843
    invoke-direct {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->reset()V

    .line 845
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 847
    .local v0, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
