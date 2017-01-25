.class final Lorg/apache/ignite/internal/util/lang/GridFunc$141;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->eventNode(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/events/Event;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$nodes:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7802
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridFunc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc$141;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 7802
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$141;->val$nodes:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7802
    check-cast p1, Lorg/apache/ignite/events/Event;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$141;->apply(Lorg/apache/ignite/events/Event;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/events/Event;)Z
    .locals 6
    .param p1, "e"    # Lorg/apache/ignite/events/Event;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7804
    sget-boolean v2, Lorg/apache/ignite/internal/util/lang/GridFunc$141;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 7806
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$141;->val$nodes:Ljava/util/Collection;

    new-array v3, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    new-array v4, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/lang/GridFunc;->nodeForNodeId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lorg/apache/ignite/internal/util/lang/GridFunc;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->forAll(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
