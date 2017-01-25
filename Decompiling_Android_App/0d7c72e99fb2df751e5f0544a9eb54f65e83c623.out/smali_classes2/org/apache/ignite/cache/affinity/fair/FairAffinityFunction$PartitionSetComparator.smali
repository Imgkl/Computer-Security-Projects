.class Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSetComparator;
.super Ljava/lang/Object;
.source "FairAffinityFunction.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartitionSetComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$1;

    .prologue
    .line 424
    invoke-direct {p0}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSetComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 424
    check-cast p1, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSetComparator;->compare(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)I
    .locals 2
    .param p1, "o1"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;
    .param p2, "o2"    # Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;

    .prologue
    .line 430
    # getter for: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;
    invoke-static {p1}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$800(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    # getter for: Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->parts:Ljava/util/Collection;
    invoke-static {p2}, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;->access$800(Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction$PartitionSet;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method
