.class final Lorg/apache/ignite/internal/util/lang/GridFunc$140;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->eventNode(Ljava/lang/String;[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
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
.field final synthetic val$gridName:Ljava/lang/String;

.field final synthetic val$p:[Lorg/apache/ignite/lang/IgnitePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7777
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridFunc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc$140;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0

    .prologue
    .line 7777
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$140;->val$gridName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$140;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7777
    check-cast p1, Lorg/apache/ignite/events/Event;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$140;->apply(Lorg/apache/ignite/events/Event;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/events/Event;)Z
    .locals 5
    .param p1, "e"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 7779
    sget-boolean v2, Lorg/apache/ignite/internal/util/lang/GridFunc$140;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 7782
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$140;->val$gridName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/G;->ignite(Ljava/lang/String;)Lorg/apache/ignite/Ignite;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteCluster;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 7784
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$140;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 7786
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v0

    .line 7787
    .local v0, "ex":Ljava/lang/IllegalStateException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid grid name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$140;->val$gridName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
