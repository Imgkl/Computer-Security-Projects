.class Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;
.super Ljava/lang/Object;
.source "FairAffinityFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrioritizedPartitionMap"
.end annotation


# instance fields
.field private assignmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;"
        }
    .end annotation
.end field

.field private assignmentMap:Ljava/util/Map;
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

.field private cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignmentMap:Ljava/util/Map;

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignmentList:Ljava/util/List;

    .line 452
    iput-object p1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->cmp:Ljava/util/Comparator;

    .line 453
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Comparator;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Comparator;
    .param p2, "x1"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)V
    .locals 3
    .param p1, "set"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .prologue
    .line 459
    iget-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignmentMap:Ljava/util/Map;

    # invokes: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->nodeId()Ljava/util/UUID;
    invoke-static {p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$500(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .line 461
    .local v0, "old":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    if-nez v0, :cond_0

    .line 462
    iget-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignmentList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {p0}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->update()V

    .line 466
    :cond_0
    return-void
.end method

.method public assignments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignmentList:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/util/UUID;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 486
    iget-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignmentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .line 488
    .local v0, "rmv":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    iget-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignmentList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignmentList:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->cmp:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 473
    return-void
.end method
