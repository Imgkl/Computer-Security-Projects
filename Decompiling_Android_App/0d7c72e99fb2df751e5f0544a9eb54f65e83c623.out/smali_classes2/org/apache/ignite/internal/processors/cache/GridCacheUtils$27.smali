.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$27;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->cachePrimary0(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/lang/IgnitePredicate;
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
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$aff:Lorg/apache/ignite/cache/affinity/Affinity;

.field final synthetic val$n:Lorg/apache/ignite/cluster/ClusterNode;


# direct methods
.method constructor <init>(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 0

    .prologue
    .line 1789
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$27;->val$aff:Lorg/apache/ignite/cache/affinity/Affinity;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$27;->val$n:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1789
    check-cast p1, Ljavax/cache/Cache$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$27;->apply(Ljavax/cache/Cache$Entry;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljavax/cache/Cache$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1791
    .local p1, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$27;->val$aff:Lorg/apache/ignite/cache/affinity/Affinity;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$27;->val$n:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/cache/affinity/Affinity;->isPrimary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
