.class public final Lorg/jsr166/ConcurrentHashMap8$EntrySetView;
.super Lorg/jsr166/ConcurrentHashMap8$CHMView;
.source "ConcurrentHashMap8.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntrySetView"
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
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
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
    .line 3684
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    .local p1, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentHashMap8$CHMView;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3682
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jsr166/ConcurrentHashMap8$EntrySetView;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public final add(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3716
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3717
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3718
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 3719
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 3720
    :cond_1
    iget-object v2, p0, Lorg/jsr166/ConcurrentHashMap8$EntrySetView;->map:Lorg/jsr166/ConcurrentHashMap8;

    # invokes: Lorg/jsr166/ConcurrentHashMap8;->internalPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, v0, v1}, Lorg/jsr166/ConcurrentHashMap8;->access$300(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 3723
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v0, 0x0

    .line 3724
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3725
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentHashMap8$EntrySetView;->add(Ljava/util/Map$Entry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3726
    const/4 v0, 0x1

    goto :goto_0

    .line 3728
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3687
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-eqz v4, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .local v1, "k":Ljava/lang/Object;
    if-eqz v1, :cond_1

    iget-object v4, p0, Lorg/jsr166/ConcurrentHashMap8$EntrySetView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v4, v1}, Lorg/jsr166/ConcurrentHashMap8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "r":Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "v":Ljava/lang/Object;
    if-eqz v3, :cond_1

    if-eq v3, v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "r":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3732
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .local v0, "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    if-eq v0, p0, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsr166/ConcurrentHashMap8$EntrySetView;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .end local v0    # "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getMap()Lorg/jsr166/ConcurrentHashMap8;
    .locals 1

    .prologue
    .line 3682
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
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
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3712
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;

    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$EntrySetView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3695
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .local v1, "k":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8$EntrySetView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v3, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "v":Ljava/lang/Object;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
