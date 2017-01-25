.class Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
.super Ljava/lang/Object;
.source "FairAffinityFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartitionSet"
.end annotation


# instance fields
.field private node:Lorg/apache/ignite/cluster/ClusterNode;

.field private parts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;

    .line 707
    iput-object p1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 708
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x1"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    .param p1, "x1"    # I

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->add(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    .param p1, "x1"    # I

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->remove(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .prologue
    .line 696
    invoke-direct {p0}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .prologue
    .line 696
    invoke-direct {p0}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->size()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .prologue
    .line 696
    invoke-direct {p0}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->nodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .prologue
    .line 696
    invoke-direct {p0}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->partitions()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .prologue
    .line 696
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;

    return-object v0
.end method

.method private add(I)Z
    .locals 2
    .param p1, "part"    # I

    .prologue
    .line 738
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 741
    const/4 v0, 0x1

    .line 744
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private contains(I)Z
    .locals 2
    .param p1, "part"    # I

    .prologue
    .line 769
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method private nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method private partitions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;

    return-object v0
.end method

.method private remove(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "part"    # Ljava/lang/Integer;

    .prologue
    .line 751
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 752
    return-void
.end method

.method private size()I
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PartSet [nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
