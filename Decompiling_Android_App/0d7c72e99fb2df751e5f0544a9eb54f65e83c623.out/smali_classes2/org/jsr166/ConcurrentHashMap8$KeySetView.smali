.class public Lorg/jsr166/ConcurrentHashMap8$KeySetView;
.super Lorg/jsr166/ConcurrentHashMap8$CHMView;
.source "ConcurrentHashMap8.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeySetView"
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
        "<TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentHashMap8",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 3570
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    .local p1, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentHashMap8$CHMView;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    .line 3571
    iput-object p2, p0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;->value:Ljava/lang/Object;

    .line 3572
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 3601
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;->value:Ljava/lang/Object;

    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 3602
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 3603
    :cond_0
    if-nez p1, :cond_1

    .line 3604
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 3605
    :cond_1
    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;->map:Lorg/jsr166/ConcurrentHashMap8;

    # invokes: Lorg/jsr166/ConcurrentHashMap8;->internalPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, p1, v0}, Lorg/jsr166/ConcurrentHashMap8;->access$200(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 3608
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v0, 0x0

    .line 3610
    .local v0, "added":Z
    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;->value:Ljava/lang/Object;

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_0

    .line 3611
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 3612
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3613
    .local v1, "e":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_2

    .line 3614
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 3615
    :cond_2
    iget-object v4, p0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;->map:Lorg/jsr166/ConcurrentHashMap8;

    # invokes: Lorg/jsr166/ConcurrentHashMap8;->internalPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v4, v1, v3}, Lorg/jsr166/ConcurrentHashMap8;->access$200(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3616
    const/4 v0, 0x1

    goto :goto_0

    .line 3618
    .end local v1    # "e":Ljava/lang/Object;, "TK;"
    :cond_3
    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3585
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v0, p1}, Lorg/jsr166/ConcurrentHashMap8;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3622
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .local v0, "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    if-eq v0, p0, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsr166/ConcurrentHashMap8$KeySetView;->containsAll(Ljava/util/Collection;)Z

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
    .line 3566
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    invoke-super {p0}, Lorg/jsr166/ConcurrentHashMap8$CHMView;->getMap()Lorg/jsr166/ConcurrentHashMap8;

    move-result-object v0

    return-object v0
.end method

.method public getMappedValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3581
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3598
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;

    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3586
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;->map:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v0, p1}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
