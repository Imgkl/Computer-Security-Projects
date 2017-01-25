.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$10;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;
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
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
        ">;",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 194
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$10;->apply(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "e":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->tx2key:Lorg/apache/ignite/lang/IgniteClosure;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->access$000()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "Cache transaction entry collection to key collection converter."

    return-object v0
.end method
