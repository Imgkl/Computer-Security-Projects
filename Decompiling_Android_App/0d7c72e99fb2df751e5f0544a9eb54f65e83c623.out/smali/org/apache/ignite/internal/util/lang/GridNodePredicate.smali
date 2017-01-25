.class public Lorg/apache/ignite/internal/util/lang/GridNodePredicate;
.super Ljava/lang/Object;
.source "GridNodePredicate.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private hash:I
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->hash:I

    .line 65
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    .line 67
    return-void

    .line 65
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->hash:I

    .line 53
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    .line 56
    return-void
.end method

.method public varargs constructor <init>([Ljava/util/UUID;)V
    .locals 2
    .param p1, "ids"    # [Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->hash:I

    .line 76
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 79
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    goto :goto_0

    .line 81
    :cond_1
    array-length v0, p1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public varargs constructor <init>([Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 6
    .param p1, "nodes"    # [Lorg/apache/ignite/cluster/ClusterNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v4, -0x80000000

    iput v4, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->hash:I

    .line 95
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    array-length v4, p1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 98
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    goto :goto_0

    .line 100
    :cond_2
    array-length v4, p1

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    .line 102
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/cluster/ClusterNode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 103
    .local v3, "n":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v4, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 125
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 142
    if-ne p0, p1, :cond_0

    .line 143
    const/4 v1, 0x1

    .line 150
    :goto_0
    return v1

    .line 145
    :cond_0
    instance-of v1, p1, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    if-nez v1, :cond_1

    .line 146
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 148
    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .line 150
    .local v0, "it":Lorg/apache/ignite/internal/util/lang/GridNodePredicate;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    iget-object v2, v0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->hash:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->hash:I

    .line 137
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->hash:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public nodeIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->ids:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
