.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$16;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->factory()Lorg/apache/ignite/lang/IgniteClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<",
        "Ljava/lang/Integer;",
        "[",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 356
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$16;->apply(Ljava/lang/Integer;)[Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Integer;)[Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p1, "len"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->EMPTY:[Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->access$100()[Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    check-cast v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    goto :goto_0
.end method
