.class final Lorg/apache/ignite/internal/util/IgniteUtils$23;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/IgniteUtils;->gridIds(Ljava/util/Collection;)Ljava/util/Collection;
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
        "Lorg/apache/ignite/Ignite;",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7101
    check-cast p1, Lorg/apache/ignite/Ignite;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils$23;->apply(Lorg/apache/ignite/Ignite;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/Ignite;)Ljava/util/UUID;
    .locals 1
    .param p1, "g"    # Lorg/apache/ignite/Ignite;

    .prologue
    .line 7103
    invoke-interface {p1}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteCluster;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
