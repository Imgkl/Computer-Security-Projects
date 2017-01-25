.class public Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;
.super Ljava/lang/Object;
.source "FairAffinityFunction.java"

# interfaces
.implements Lorg/apache/ignite/cache/affinity/AffinityFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;,
        Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;,
        Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;,
        Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;,
        Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSetComparator;
    }
.end annotation

.annotation runtime Lorg/apache/ignite/cache/affinity/AffinityCentralizedFunction;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ASC_CMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final DESC_CMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final DFLT_PART_CNT:I = 0x100

.field private static final serialVersionUID:J


# instance fields
.field private final parts:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->$assertionsDisabled:Z

    .line 45
    new-instance v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSetComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSetComparator;-><init>(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;)V

    sput-object v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->ASC_CMP:Ljava/util/Comparator;

    .line 48
    sget-object v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->ASC_CMP:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->DESC_CMP:Ljava/util/Comparator;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;-><init>(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "parts"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->parts:I

    .line 65
    return-void
.end method

.method static synthetic access$1100(ILjava/util/List;Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->assignments(ILjava/util/List;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private assignPending(ILjava/util/Map;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;Ljava/util/List;)V
    .locals 10
    .param p1, "tier"    # I
    .param p3, "fullMap"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "pendingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Queue<Ljava/lang/Integer;>;>;"
    .local p4, "topSnapshot":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v6, 0x0

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Queue;

    .line 146
    .local v8, "pending":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 149
    :cond_0
    iget v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->parts:I

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    div-int v7, v0, v1

    .line 151
    .local v7, "idealPartCnt":I
    invoke-virtual {p3, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMapping(I)Ljava/util/Map;

    move-result-object v9

    .line 153
    .local v9, "tierMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;>;"
    invoke-direct {p0, v9, v7, v6}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->filterNodes(Ljava/util/Map;IZ)Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;

    move-result-object v4

    .local v4, "underloadedNodes":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 156
    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->assignPendingToUnderloaded(ILjava/util/Map;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;Ljava/util/Collection;Z)V

    .line 158
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->assignPendingToUnderloaded(ILjava/util/Map;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;Ljava/util/Collection;Z)V

    .line 163
    :cond_1
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->assignPendingToNodes(ILjava/util/Map;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;Ljava/util/List;)V

    .line 166
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private assignPendingToNodes(ILjava/util/Map;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;Ljava/util/List;)V
    .locals 10
    .param p1, "tier"    # I
    .param p3, "fullMap"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p2, "pendingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Queue<Ljava/lang/Integer;>;>;"
    .local p4, "topSnapshot":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 230
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 232
    .local v8, "idx":I
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 235
    .local v1, "part":I
    move v7, v8

    .line 237
    .local v7, "i":I
    const/4 v6, 0x0

    .line 240
    .local v6, "assigned":Z
    :cond_1
    invoke-interface {p4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 242
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    const/4 v4, 0x0

    move-object v0, p3

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assign(IILorg/apache/ignite/cluster/ClusterNode;ZLjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 245
    const/4 v6, 0x1

    .line 248
    :cond_2
    add-int/lit8 v0, v7, 0x1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    rem-int v7, v0, v2

    .line 250
    if-eqz v6, :cond_3

    .line 251
    move v8, v7

    .line 252
    :cond_3
    if-ne v7, v8, :cond_1

    .line 254
    if-nez v6, :cond_7

    .line 256
    :cond_4
    invoke-interface {p4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 258
    .restart local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    const/4 v4, 0x1

    move-object v0, p3

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assign(IILorg/apache/ignite/cluster/ClusterNode;ZLjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 261
    const/4 v6, 0x1

    .line 264
    :cond_5
    add-int/lit8 v0, v7, 0x1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    rem-int v7, v0, v2

    .line 266
    if-eqz v6, :cond_6

    .line 267
    move v8, v7

    .line 268
    :cond_6
    if-ne v7, v8, :cond_4

    .line 271
    :cond_7
    if-nez v6, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find assignable node for partition."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    .end local v1    # "part":I
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v6    # "assigned":Z
    .end local v7    # "i":I
    :cond_8
    return-void
.end method

.method private assignPendingToUnderloaded(ILjava/util/Map;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;Ljava/util/Collection;Z)V
    .locals 10
    .param p1, "tier"    # I
    .param p3, "fullMap"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;
    .param p4, "underloadedNodes"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;
    .param p6, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "pendingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Queue<Ljava/lang/Integer;>;>;"
    .local p5, "topSnapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 190
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    iget v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->parts:I

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v2

    div-int v7, v0, v2

    .line 192
    .local v7, "ideal":I
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 195
    .local v1, "part":I
    invoke-virtual {p4}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .line 196
    .local v9, "set":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    invoke-static {v9}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$300(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 198
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move-object v0, p3

    move v2, p1

    move/from16 v4, p6

    move-object v5, p2

    .line 200
    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assign(IILorg/apache/ignite/cluster/ClusterNode;ZLjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 204
    invoke-static {v9}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$400(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)I

    move-result v0

    if-gt v0, v7, :cond_5

    .line 205
    invoke-static {v9}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$500(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->remove(Ljava/util/UUID;)V

    .line 213
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v9    # "set":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    :cond_3
    :goto_0
    invoke-virtual {p4}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    .end local v1    # "part":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void

    .line 207
    .restart local v1    # "part":I
    .restart local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "set":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    :cond_5
    invoke-virtual {p4}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->update()V

    goto :goto_0
.end method

.method private static assignments(ILjava/util/List;Ljava/util/Collection;)Ljava/util/Map;
    .locals 13
    .param p0, "tier"    # I
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
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "assignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .local p2, "topSnapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v12, 0x0

    .line 509
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 511
    .local v9, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;>;"
    const/4 v6, 0x0

    .local v6, "part":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_6

    .line 512
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 514
    .local v5, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v10, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    instance-of v10, v5, Ljava/util/RandomAccess;

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 516
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-gt v10, p0, :cond_2

    .line 511
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 519
    :cond_2
    if-gez p0, :cond_4

    const/4 v8, 0x0

    .line 520
    .local v8, "start":I
    :goto_1
    if-gez p0, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 522
    .local v0, "end":I
    :goto_2
    move v1, v8

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_1

    .line 523
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 525
    .local v3, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .line 527
    .local v7, "set":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    if-nez v7, :cond_3

    .line 528
    new-instance v7, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .end local v7    # "set":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    invoke-direct {v7, v3, v12}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;)V

    .line 530
    .restart local v7    # "set":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_3
    invoke-static {v7, v6}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$1000(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;I)Z

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v3    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v7    # "set":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    .end local v8    # "start":I
    :cond_4
    move v8, p0

    .line 519
    goto :goto_1

    .line 520
    .restart local v8    # "start":I
    :cond_5
    add-int/lit8 v0, p0, 0x1

    goto :goto_2

    .line 537
    .end local v5    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v8    # "start":I
    :cond_6
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v10

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 538
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 539
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 540
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    new-instance v11, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    invoke-direct {v11, v4, v12}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 544
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_8
    return-object v9
.end method

.method private balance(ILjava/util/Map;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;Ljava/util/Collection;)V
    .locals 20
    .param p1, "tier"    # I
    .param p3, "fullMap"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p2, "pendingParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Queue<Ljava/lang/Integer;>;>;"
    .local p4, "topSnapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->parts:I

    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->size()I

    move-result v3

    div-int v12, v2, v3

    .line 288
    .local v12, "idealPartCnt":I
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->tierMapping(I)Ljava/util/Map;

    move-result-object v13

    .line 290
    .local v13, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12, v2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->filterNodes(Ljava/util/Map;IZ)Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;

    move-result-object v19

    .line 291
    .local v19, "underloadedNodes":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12, v2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->filterNodes(Ljava/util/Map;IZ)Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;

    move-result-object v15

    .line 294
    .local v15, "overloadedNodes":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;
    :cond_0
    const/16 v17, 0x0

    .line 296
    .local v17, "retry":Z
    invoke-virtual {v15}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .line 297
    .local v14, "overloaded":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    invoke-static {v14}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$600(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 298
    .local v16, "part":Ljava/lang/Integer;
    const/4 v8, 0x0

    .line 300
    .local v8, "assigned":Z
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .line 301
    .local v18, "underloaded":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$300(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move/from16 v4, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assign(IILorg/apache/ignite/cluster/ClusterNode;ZLjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    invoke-static {v14}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$400(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)I

    move-result v2

    if-gt v2, v12, :cond_9

    .line 304
    invoke-static {v14}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$500(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->remove(Ljava/util/UUID;)V

    .line 308
    :goto_0
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$400(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)I

    move-result v2

    if-lt v2, v12, :cond_a

    .line 309
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$500(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->remove(Ljava/util/UUID;)V

    .line 313
    :goto_1
    const/4 v8, 0x1

    .line 315
    const/16 v17, 0x1

    .line 321
    .end local v18    # "underloaded":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    :cond_4
    if-nez v8, :cond_6

    .line 322
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->assignments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .line 323
    .restart local v18    # "underloaded":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$300(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v2, p3

    move/from16 v4, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->assign(IILorg/apache/ignite/cluster/ClusterNode;ZLjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 325
    invoke-static {v14}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$400(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)I

    move-result v2

    if-gt v2, v12, :cond_b

    .line 326
    invoke-static {v14}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$500(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->remove(Ljava/util/UUID;)V

    .line 330
    :goto_2
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$400(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)I

    move-result v2

    if-lt v2, v12, :cond_c

    .line 331
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$500(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->remove(Ljava/util/UUID;)V

    .line 335
    :goto_3
    const/16 v17, 0x1

    .line 342
    .end local v18    # "underloaded":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    :cond_6
    if-eqz v17, :cond_2

    .line 346
    .end local v8    # "assigned":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "part":Ljava/lang/Integer;
    :cond_7
    if-eqz v17, :cond_1

    .line 350
    .end local v14    # "overloaded":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    :cond_8
    if-nez v17, :cond_0

    .line 354
    return-void

    .line 306
    .restart local v8    # "assigned":Z
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v14    # "overloaded":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    .restart local v16    # "part":Ljava/lang/Integer;
    .restart local v18    # "underloaded":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    :cond_9
    invoke-virtual {v15}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->update()V

    goto :goto_0

    .line 311
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->update()V

    goto :goto_1

    .line 328
    :cond_b
    invoke-virtual {v15}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->update()V

    goto :goto_2

    .line 333
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->update()V

    goto :goto_3
.end method

.method private createCopy(Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;)Ljava/util/List;
    .locals 10
    .param p1, "ctx"    # Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 384
    invoke-interface {p1}, Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;->discoveryEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v2

    .line 386
    .local v2, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    :cond_0
    const/4 v4, 0x0

    .line 390
    .local v4, "leftNodeId":Ljava/util/UUID;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    iget v8, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->parts:I

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v1, "cp":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    const/4 v5, 0x0

    .local v5, "part":I
    :goto_1
    iget v8, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->parts:I

    if-ge v5, v8, :cond_6

    .line 393
    invoke-interface {p1, v5}, Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;->previousAssignment(I)Ljava/util/List;

    move-result-object v6

    .line 397
    .local v6, "partNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-nez v6, :cond_3

    .line 398
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v7, "partNodesCp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    :goto_2
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 386
    .end local v1    # "cp":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .end local v4    # "leftNodeId":Ljava/util/UUID;
    .end local v5    # "part":I
    .end local v6    # "partNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v7    # "partNodesCp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_2
    invoke-virtual {v2}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    goto :goto_0

    .line 400
    .restart local v1    # "cp":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .restart local v4    # "leftNodeId":Ljava/util/UUID;
    .restart local v5    # "part":I
    .restart local v6    # "partNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_3
    if-nez v4, :cond_4

    .line 401
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    .restart local v7    # "partNodesCp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 406
    .end local v7    # "partNodesCp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .restart local v7    # "partNodesCp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    .line 409
    .local v0, "affNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 410
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 418
    .end local v0    # "affNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "partNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v7    # "partNodesCp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_6
    return-object v1
.end method

.method private filterNodes(Ljava/util/Map;IZ)Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;
    .locals 5
    .param p2, "idealPartCnt"    # I
    .param p3, "overloaded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
            ">;IZ)",
            "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;>;"
    sget-boolean v3, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 367
    :cond_0
    new-instance v1, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;

    if-eqz p3, :cond_4

    sget-object v3, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->DESC_CMP:Ljava/util/Comparator;

    :goto_0
    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;-><init>(Ljava/util/Comparator;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;)V

    .line 369
    .local v1, "res":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .line 370
    .local v2, "set":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    if-eqz p3, :cond_2

    invoke-static {v2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$400(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)I

    move-result v3

    if-gt v3, p2, :cond_3

    :cond_2
    if-nez p3, :cond_1

    invoke-static {v2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$400(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)I

    move-result v3

    if-ge v3, p2, :cond_1

    .line 371
    :cond_3
    invoke-virtual {v1, v2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;->add(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)V

    goto :goto_1

    .line 367
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "res":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;
    .end local v2    # "set":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    :cond_4
    sget-object v3, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->ASC_CMP:Ljava/util/Comparator;

    goto :goto_0

    .line 374
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "res":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PrioritizedPartitionMap;
    :cond_5
    return-object v1
.end method

.method private static hash(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 684
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 685
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 686
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 687
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 688
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 689
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public assignPartitions(Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;)Ljava/util/List;
    .locals 11
    .param p1, "ctx"    # Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-interface {p1}, Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;->currentTopologySnapshot()Ljava/util/List;

    move-result-object v8

    .line 71
    .local v8, "topSnapshot":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 72
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/cluster/ClusterNode;

    .line 74
    .local v5, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    iget v9, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->parts:I

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 111
    .end local v5    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    return-object v9

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->createCopy(Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;)Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "assignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-interface {p1}, Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;->backups()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 82
    .local v7, "tiers":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v4, "pendingParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Queue<Ljava/lang/Integer;>;>;"
    new-instance v1, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;

    const/4 v9, 0x0

    invoke-direct {v1, v7, v0, v8, v9}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;-><init>(ILjava/util/List;Ljava/util/Collection;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;)V

    .line 86
    .local v1, "fullMap":Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;
    const/4 v6, 0x0

    .local v6, "tier":I
    :goto_1
    if-ge v6, v7, :cond_4

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Queue;

    .line 90
    .local v3, "pending":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "part":I
    :goto_2
    iget v9, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->parts:I

    if-ge v2, v9, :cond_3

    .line 91
    invoke-static {v1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->access$200(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v6, 0x1

    if-ge v9, v10, :cond_2

    .line 92
    if-nez v3, :cond_1

    .line 93
    new-instance v3, Ljava/util/LinkedList;

    .end local v3    # "pending":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 95
    .restart local v3    # "pending":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    :cond_3
    invoke-direct {p0, v6, v4, v1, v8}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->assignPending(ILjava/util/Map;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;Ljava/util/List;)V

    .line 108
    invoke-direct {p0, v6, v4, v1, v8}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->balance(ILjava/util/Map;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;Ljava/util/Collection;)V

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 111
    .end local v2    # "part":I
    .end local v3    # "pending":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {v1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;->access$200(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$FullAssignmentMap;)Ljava/util/List;

    move-result-object v9

    goto :goto_0
.end method

.method public partition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->hash(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->safeAbs(I)I

    move-result v0

    iget v1, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->parts:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public partitions()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;->parts:I

    return v0
.end method

.method public removeNode(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 132
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
