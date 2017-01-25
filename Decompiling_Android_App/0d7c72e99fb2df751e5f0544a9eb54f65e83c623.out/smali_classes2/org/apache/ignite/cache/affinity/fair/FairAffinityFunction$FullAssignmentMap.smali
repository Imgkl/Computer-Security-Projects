.class Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;
.super Ljava/lang/Object;
.source "FairAffinityFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullAssignmentMap"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private assignments:Ljava/util/List;
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

.field private fullMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;"
        }
    .end annotation
.end field

.field private tierMaps:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 551
    const-class v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(ILjava/util/List;Ljava/util/Collection;)V
    .locals 3
    .param p1, "tiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p2, "assignments":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .local p3, "topSnapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p2, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assignments:Ljava/util/List;

    .line 570
    new-array v1, p1, [Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    .line 572
    const/4 v0, 0x0

    .local v0, "tier":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 573
    iget-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    invoke-static {v0, p2, p3}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->access$1100(ILjava/util/List;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v0

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_0
    const/4 v1, -0x1

    invoke-static {v1, p2, p3}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->access$1100(ILjava/util/List;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->fullMap:Ljava/util/Map;

    .line 576
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/List;Ljava/util/Collection;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ljava/util/Collection;
    .param p4, "x3"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;

    .prologue
    .line 552
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;-><init>(ILjava/util/List;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;

    .prologue
    .line 552
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assignments:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method assign(IILorg/apache/ignite/cluster/ClusterNode;ZLjava/util/Map;)Z
    .locals 9
    .param p1, "part"    # I
    .param p2, "tier"    # I
    .param p3, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p5, "pendingParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Queue<Ljava/lang/Integer;>;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 592
    invoke-interface {p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    .line 594
    .local v1, "nodeId":Ljava/util/UUID;
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->fullMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->contains(I)Z
    invoke-static {v6, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1200(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 595
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    aget-object v6, v6, p2

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->add(I)Z
    invoke-static {v6, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1000(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;I)Z

    .line 597
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->fullMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->add(I)Z
    invoke-static {v6, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1000(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;I)Z

    .line 599
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assignments:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 601
    .local v0, "assignment":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, p2, :cond_1

    .line 602
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    move v6, v7

    .line 660
    .end local v0    # "assignment":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_1
    return v6

    .line 604
    .restart local v0    # "assignment":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 606
    .local v2, "oldNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v2, :cond_0

    .line 607
    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    .line 609
    .local v3, "oldNodeId":Ljava/util/UUID;
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    aget-object v6, v6, p2

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->remove(Ljava/lang/Integer;)V
    invoke-static {v6, v8}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1300(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;Ljava/lang/Integer;)V

    .line 610
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->fullMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->remove(Ljava/lang/Integer;)V
    invoke-static {v6, v8}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1300(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;Ljava/lang/Integer;)V

    goto :goto_0

    .line 616
    .end local v0    # "assignment":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v2    # "oldNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v3    # "oldNodeId":Ljava/util/UUID;
    :cond_2
    if-eqz p4, :cond_a

    .line 617
    sget-boolean v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    aget-object v6, v6, p2

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->contains(I)Z
    invoke-static {v6, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1200(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 620
    :cond_3
    const/4 v5, 0x0

    .local v5, "t":I
    :goto_2
    if-ge v5, p2, :cond_5

    .line 621
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    aget-object v6, v6, v5

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->contains(I)Z
    invoke-static {v6, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1200(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v8

    .line 622
    goto :goto_1

    .line 620
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 626
    :cond_5
    add-int/lit8 v5, p2, 0x1

    :goto_3
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    array-length v6, v6

    if-ge v5, v6, :cond_9

    .line 627
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    aget-object v6, v6, v5

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->contains(I)Z
    invoke-static {v6, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1200(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 628
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assignments:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 631
    .restart local v2    # "oldNode":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assignments:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assignments:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v6, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 634
    if-eqz v2, :cond_6

    .line 635
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    aget-object v6, v6, p2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->remove(Ljava/lang/Integer;)V
    invoke-static {v6, v8}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1300(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;Ljava/lang/Integer;)V

    .line 636
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->fullMap:Ljava/util/Map;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->remove(Ljava/lang/Integer;)V
    invoke-static {v6, v8}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1300(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;Ljava/lang/Integer;)V

    .line 639
    :cond_6
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    aget-object v6, v6, p2

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->add(I)Z
    invoke-static {v6, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1000(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;I)Z

    .line 640
    iget-object v6, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    aget-object v6, v6, v5

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->remove(Ljava/lang/Integer;)V
    invoke-static {v6, v8}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1300(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;Ljava/lang/Integer;)V

    .line 642
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    .line 644
    .local v4, "pending":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    if-nez v4, :cond_7

    .line 645
    new-instance v4, Ljava/util/LinkedList;

    .end local v4    # "pending":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 647
    .restart local v4    # "pending":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v6, v7

    .line 652
    goto/16 :goto_1

    .line 626
    .end local v2    # "oldNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v4    # "pending":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 656
    :cond_9
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to assign partition to node while force is true."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v5    # "t":I
    :cond_a
    move v6, v8

    .line 660
    goto/16 :goto_1
.end method

.method public tierMapping(I)Ljava/util/Map;
    .locals 1
    .param p1, "tier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMaps:[Ljava/util/Map;

    aget-object v0, v0, p1

    return-object v0
.end method
