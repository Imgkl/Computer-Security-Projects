.class final Lorg/apache/ignite/internal/util/IgniteUtils$21;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/IgniteUtils;->id2Node(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/lang/IgniteClosure;
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
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ctx:Lorg/apache/ignite/internal/GridKernalContext;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0

    .prologue
    .line 6739
    iput-object p1, p0, Lorg/apache/ignite/internal/util/IgniteUtils$21;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6739
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils$21;->apply(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 6741
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$21;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method
