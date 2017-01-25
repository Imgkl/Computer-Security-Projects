.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$25;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->nodeComparator(Z)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$asc:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1279
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$25;->val$asc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1279
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$25;->compare(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;)I
    .locals 8
    .param p1, "n1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "n2"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1281
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v0

    .line 1282
    .local v0, "o1":J
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    .line 1284
    .local v2, "o2":J
    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$25;->val$asc:Z

    if-eqz v7, :cond_3

    cmp-long v7, v0, v2

    if-gez v7, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    cmp-long v7, v0, v2

    if-gez v7, :cond_4

    move v4, v6

    goto :goto_0

    :cond_4
    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node comparator [asc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$25;->val$asc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
