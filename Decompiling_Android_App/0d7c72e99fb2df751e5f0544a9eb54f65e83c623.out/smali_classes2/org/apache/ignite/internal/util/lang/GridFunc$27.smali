.class final Lorg/apache/ignite/internal/util/lang/GridFunc$27;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/cluster/ClusterGroup;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 314
    check-cast p1, Lorg/apache/ignite/cluster/ClusterGroup;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$27;->apply(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterGroup;->predicate()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string v0, "Projection to its predicate transformer closure."

    return-object v0
.end method
