.class Lorg/apache/ignite/internal/managers/GridManagerAdapter$1$1;
.super Ljava/lang/Object;
.source "GridManagerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->remoteDaemonNodes()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;)V
    .locals 0

    .prologue
    .line 301
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter$1.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1$1;->this$1:Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 301
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter$1.1;"
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1$1;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 1
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 303
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter$1.1;"
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v0

    return v0
.end method
