.class public Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
.super Ljava/lang/Object;
.source "ClusterGroupAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/cluster/ClusterGroupEx;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;,
        Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;,
        Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$OthersFilter;,
        Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$DaemonFilter;,
        Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;,
        Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private transient compute:Lorg/apache/ignite/internal/IgniteComputeImpl;

.field protected transient ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private transient evts:Lorg/apache/ignite/IgniteEvents;

.field private gridName:Ljava/lang/String;

.field private ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private transient messaging:Lorg/apache/ignite/internal/IgniteMessagingImpl;

.field protected p:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private subjId:Ljava/util/UUID;

.field private transient svcs:Lorg/apache/ignite/IgniteServices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Ljava/util/Set;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/util/UUID;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->setKernalContext(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 108
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    .line 111
    iput-object p3, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    .line 113
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->nodeForNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 114
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->setKernalContext(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 90
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    .line 91
    iput-object p3, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    .line 94
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Set;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p3, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p4, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->setKernalContext(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 130
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    .line 131
    iput-object p3, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 132
    iput-object p4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    .line 134
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 135
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->nodeForNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 136
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Set;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "x1"    # Ljava/util/UUID;
    .param p3, "x2"    # Lorg/apache/ignite/lang/IgnitePredicate;
    .param p4, "x3"    # Ljava/util/Set;
    .param p5, "x4"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    return-object v0
.end method

.method private contains(Ljava/util/UUID;)Z
    .locals 2
    .param p1, "id"    # Ljava/util/UUID;

    .prologue
    .line 614
    sget-boolean v1, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 616
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 621
    :goto_0
    return v1

    .line 619
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 621
    .local v0, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v1, v0}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private contains(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 604
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 606
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private forOthers(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterGroup;"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "excludeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 510
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v3, :cond_3

    .line 511
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 514
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v2

    .line 516
    .local v2, "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 517
    .local v1, "id":Ljava/util/UUID;
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 518
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 524
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/util/UUID;
    .end local v2    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v3

    .line 521
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_2
    :try_start_1
    new-instance v3, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    .line 528
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :goto_1
    return-object v3

    :cond_3
    new-instance v3, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$OthersFilter;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$OthersFilter;-><init>(Ljava/util/Collection;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public final compute()Lorg/apache/ignite/IgniteCompute;
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->compute:Lorg/apache/ignite/internal/IgniteComputeImpl;

    if-nez v0, :cond_1

    .line 189
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/IgniteComputeImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/apache/ignite/internal/IgniteComputeImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Ljava/util/UUID;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->compute:Lorg/apache/ignite/internal/IgniteComputeImpl;

    .line 194
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->compute:Lorg/apache/ignite/internal/IgniteComputeImpl;

    return-object v0
.end method

.method public final events()Lorg/apache/ignite/IgniteEvents;
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->evts:Lorg/apache/ignite/IgniteEvents;

    if-nez v0, :cond_1

    .line 215
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/IgniteEventsImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/ignite/internal/IgniteEventsImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->evts:Lorg/apache/ignite/IgniteEvents;

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->evts:Lorg/apache/ignite/IgniteEvents;

    return-object v0
.end method

.method public executorService()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 240
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/executor/GridExecutorService;

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/executor/GridExecutorService;-><init>(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Lorg/apache/ignite/internal/GridKernalContext;)V

    return-object v0
.end method

.method public final forAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 349
    const-string v0, "n"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public final forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 533
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;-><init>(Ljava/lang/String;ZZZLorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forCacheNodes(Ljava/lang/String;ZZZ)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "affNodes"    # Z
    .param p3, "nearNodes"    # Z
    .param p4, "clientNodes"    # Z

    .prologue
    .line 549
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;-><init>(Ljava/lang/String;ZZZLorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public final forClientNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 543
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;-><init>(Ljava/lang/String;ZZZLorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forClients()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 4

    .prologue
    .line 361
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;

    const-string v1, "org.apache.ignite.cache.client"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public final forDaemons()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 2

    .prologue
    .line 565
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$DaemonFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$DaemonFilter;-><init>(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public final forDataNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 538
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$CachesFilter;-><init>(Ljava/lang/String;ZZZLorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public final forHost(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 554
    const-string v1, "node"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    const-string v1, "org.apache.ignite.macs"

    invoke-interface {p1, v1}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 558
    .local v0, "macs":Ljava/lang/String;
    sget-boolean v1, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 560
    :cond_0
    const-string v1, "org.apache.ignite.macs"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v1

    return-object v1
.end method

.method public final varargs forNode(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 8
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "nodes"    # [Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 366
    const-string v5, "node"

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 373
    :try_start_0
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 374
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->contains(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 386
    .local v4, "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_0
    :goto_0
    new-instance v5, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v6, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v7, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    invoke-direct {v5, v6, v7, v4}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    return-object v5

    .line 374
    .end local v4    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    .line 376
    :cond_2
    array-length v5, p2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v4

    .line 378
    .restart local v4    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    move-object v0, p2

    .local v0, "arr$":[Lorg/apache/ignite/cluster/ClusterNode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 379
    .local v3, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->contains(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 382
    .end local v3    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->contains(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 383
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 389
    .end local v0    # "arr$":[Lorg/apache/ignite/cluster/ClusterNode;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v5
.end method

.method public final varargs forNodeId(Ljava/util/UUID;[Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 8
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "ids"    # [Ljava/util/UUID;

    .prologue
    .line 415
    const-string v5, "id"

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 422
    :try_start_0
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 423
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->contains(Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 436
    .local v4, "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_0
    :goto_0
    new-instance v5, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v6, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v7, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    invoke-direct {v5, v6, v7, v4}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    return-object v5

    .line 423
    .end local v4    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    .line 425
    :cond_2
    array-length v5, p2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v4

    .line 427
    .restart local v4    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/util/UUID;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v2, v0, v1

    .line 428
    .local v2, "id0":Ljava/util/UUID;
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->contains(Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 429
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 432
    .end local v2    # "id0":Ljava/util/UUID;
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->contains(Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 439
    .end local v0    # "arr$":[Ljava/util/UUID;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v5
.end method

.method public final forNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterGroup;"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const-string v3, "ids"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 450
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v2

    .line 452
    .local v2, "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 453
    .local v1, "id":Ljava/util/UUID;
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->contains(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 460
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/util/UUID;
    .end local v2    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v3

    .line 457
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_1
    :try_start_1
    new-instance v3, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    return-object v3
.end method

.method public final forNodes(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterGroup;"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-string v3, "nodes"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 400
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v2

    .line 402
    .local v2, "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 403
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->contains(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 409
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v2    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v3

    .line 406
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_1
    :try_start_1
    new-instance v3, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    return-object v3
.end method

.method public forOldest()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 3

    .prologue
    .line 575
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;-><init>(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;ZLorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    return-object v0
.end method

.method public forOthers(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 7
    .param p1, "grp"    # Lorg/apache/ignite/cluster/ClusterGroup;

    .prologue
    .line 473
    const-string v4, "grp"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    iget-object v4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v4, :cond_2

    .line 476
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 479
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v3

    .line 481
    .local v3, "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 482
    .local v1, "id":Ljava/util/UUID;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 484
    .local v2, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterGroup;->predicate()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 485
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 491
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/util/UUID;
    .end local v2    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v3    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v4

    .line 488
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_1
    :try_start_1
    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v6, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    invoke-direct {v4, v5, v6, v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    .line 495
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterGroup;->predicate()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v4

    goto :goto_1
.end method

.method public final varargs forOthers(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 3
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "nodes"    # [Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 466
    const-string v0, "node"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forOthers(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public final forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterGroup;"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-string v1, "p"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 334
    if-eqz p1, :cond_0

    .line 335
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V

    .line 337
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    iget-object v4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    aput-object v6, v4, v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->and([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object p1

    .end local p1    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    invoke-direct {v1, v2, v3, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    return-object v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v1
.end method

.method public final forRandom()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 570
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->rand(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    new-array v1, v1, [Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forNodeId(Ljava/util/UUID;[Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->rand(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    new-array v1, v1, [Lorg/apache/ignite/cluster/ClusterNode;

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forNode(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public final forRemotes()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forOthers(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forServers()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 4

    .prologue
    .line 356
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;

    const-string v1, "org.apache.ignite.cache.client"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public forSubjectId(Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterGroupEx;
    .locals 3
    .param p1, "subjId"    # Ljava/util/UUID;

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 595
    .end local p0    # "this":Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
    :goto_0
    return-object p0

    .line 588
    .restart local p0    # "this":Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 591
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    move-object p0, v0

    goto :goto_0

    .line 591
    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 595
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v0
.end method

.method public forYoungest()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 3

    .prologue
    .line 580
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AgeClusterGroup;-><init>(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;ZLorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V

    return-object v0
.end method

.method protected guard()V
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 145
    return-void
.end method

.method public final ignite()Lorg/apache/ignite/Ignite;
    .locals 1

    .prologue
    .line 172
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v0
.end method

.method public final message()Lorg/apache/ignite/IgniteMessaging;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->messaging:Lorg/apache/ignite/internal/IgniteMessagingImpl;

    if-nez v0, :cond_1

    .line 202
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/IgniteMessagingImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/ignite/internal/IgniteMessagingImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->messaging:Lorg/apache/ignite/internal/IgniteMessagingImpl;

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->messaging:Lorg/apache/ignite/internal/IgniteMessagingImpl;

    return-object v0
.end method

.method public final metrics()Lorg/apache/ignite/cluster/ClusterMetrics;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v0

    .line 253
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;-><init>(Lorg/apache/ignite/cluster/ClusterGroup;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public final node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .param p1, "id"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 299
    const-string v2, "id"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 304
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 313
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    :goto_0
    return-object v1

    .line 307
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 309
    .local v0, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v2, v0}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    .end local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    move-object v1, v0

    goto :goto_0

    .restart local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    move-object v0, v1

    .line 309
    goto :goto_1

    .line 313
    .end local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v1
.end method

.method public nodes()Ljava/util/Collection;
    .locals 8
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
    const/4 v6, 0x1

    .line 262
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->guard()V

    .line 265
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v5, :cond_5

    .line 266
    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 293
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    :goto_0
    return-object v5

    .line 268
    :cond_0
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 269
    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 271
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 293
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    goto :goto_0

    .line 271
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 274
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    .local v4, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 277
    .local v2, "id":Ljava/util/UUID;
    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 279
    .restart local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v3, :cond_3

    .line 280
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 293
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/util/UUID;
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v4    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    throw v5

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    move-object v5, v4

    goto :goto_0

    .line 287
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_5
    :try_start_3
    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v0

    .line 289
    .local v0, "all":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 293
    .end local v0    # "all":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_6
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->unguard()V

    move-object v5, v0

    goto :goto_0
.end method

.method public final predicate()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->gridName:Ljava/lang/String;

    .line 641
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    .line 643
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    .line 647
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    goto :goto_0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 657
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->gridName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/ignite/internal/IgnitionEx;->gridx(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v1

    .line 659
    .local v1, "g":Lorg/apache/ignite/internal/IgniteKernal;
    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Ljava/util/Set;)V

    move-object v1, v2

    .end local v1    # "g":Lorg/apache/ignite/internal/IgniteKernal;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1    # "g":Lorg/apache/ignite/internal/IgniteKernal;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    iget-object v5, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 662
    .end local v1    # "g":Lorg/apache/ignite/internal/IgniteKernal;
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/InvalidObjectException;

    throw v2
.end method

.method public services()Lorg/apache/ignite/IgniteServices;
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->svcs:Lorg/apache/ignite/IgniteServices;

    if-nez v0, :cond_1

    .line 228
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 230
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/IgniteServicesImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/ignite/internal/IgniteServicesImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->svcs:Lorg/apache/ignite/IgniteServices;

    .line 233
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->svcs:Lorg/apache/ignite/IgniteServices;

    return-object v0
.end method

.method public setKernalContext(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 162
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 163
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 167
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->gridName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method protected unguard()V
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 154
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->gridName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->subjId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 630
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 632
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->ids:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 636
    :goto_1
    return-void

    .line 630
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 635
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method
