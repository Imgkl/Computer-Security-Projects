.class public Lorg/apache/ignite/internal/GridNodeOrderComparator;
.super Ljava/lang/Object;
.source "GridNodeOrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/apache/ignite/internal/GridNodeOrderComparator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/GridNodeOrderComparator;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/GridNodeOrderComparator;->INSTANCE:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/GridNodeOrderComparator;->compare(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;)I
    .locals 4
    .param p1, "n1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "n2"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 44
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v0

    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v0

    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    goto :goto_0
.end method
