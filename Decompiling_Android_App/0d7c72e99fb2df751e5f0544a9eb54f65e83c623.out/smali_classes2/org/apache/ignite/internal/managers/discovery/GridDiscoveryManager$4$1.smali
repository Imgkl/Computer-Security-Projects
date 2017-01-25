.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4$1;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->onDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/util/Map;Ljava/io/Serializable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4$1;->this$1:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 404
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4$1;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 0
    .param p1, "e"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 406
    return-object p1
.end method
