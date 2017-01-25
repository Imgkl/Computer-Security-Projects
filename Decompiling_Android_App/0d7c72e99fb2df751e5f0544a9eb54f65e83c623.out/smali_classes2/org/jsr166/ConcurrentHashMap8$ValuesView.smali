.class public final Lorg/jsr166/ConcurrentHashMap8$ValuesView;
.super Lorg/jsr166/ConcurrentHashMap8$CHMView;
.source "ConcurrentHashMap8.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValuesView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jsr166/ConcurrentHashMap8$CHMView",
        "<TK;TV;>;",
        "Ljava/util/Collection",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/jsr166/ConcurrentHashMap8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentHashMap8",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3641
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    .local p1, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentHashMap8$CHMView;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 3670
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3673
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3642
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$ValuesView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v0, p1}, Lorg/jsr166/ConcurrentHashMap8;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getMap()Lorg/jsr166/ConcurrentHashMap8;
    .locals 1

    .prologue
    .line 3639
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    invoke-super {p0}, Lorg/jsr166/ConcurrentHashMap8$CHMView;->getMap()Lorg/jsr166/ConcurrentHashMap8;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3667
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;

    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$ValuesView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3644
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    if-eqz p1, :cond_1

    .line 3645
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;

    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$ValuesView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    .line 3646
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3647
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3648
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3649
    const/4 v1, 0x1

    .line 3653
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
