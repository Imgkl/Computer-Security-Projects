.class final Lorg/apache/ignite/internal/util/lang/GridFunc$139;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->cacheHasKeys(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
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
.field final synthetic val$keys:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 7745
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$139;->val$keys:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7745
    check-cast p1, Ljavax/cache/Cache$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$139;->apply(Ljavax/cache/Cache$Entry;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljavax/cache/Cache$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 7747
    .local p1, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$139;->val$keys:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$139;->val$keys:Ljava/util/Collection;

    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
