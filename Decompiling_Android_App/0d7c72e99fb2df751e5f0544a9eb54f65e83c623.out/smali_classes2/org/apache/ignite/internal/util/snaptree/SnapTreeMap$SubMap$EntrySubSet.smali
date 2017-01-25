.class Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;
.super Ljava/util/AbstractSet;
.source "SnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySubSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)V
    .locals 0

    .prologue
    .line 2463
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>.EntrySubSet;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;

    .prologue
    .line 2463
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>.EntrySubSet;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2463
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>.EntrySubSet;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>.EntrySubSet;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .line 2495
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->requireInRange(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1600(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;Ljava/lang/Object;)V

    .line 2496
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$500(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2497
    .local v0, "v":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1500(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->update(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, v3, v1, v4, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$600(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>.EntrySubSet;"
    const/4 v5, 0x0

    .line 2476
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_1

    .line 2490
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move-object v4, p1

    .line 2479
    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2480
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->inRange(Ljava/lang/Object;)Z
    invoke-static {v4, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1400(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2483
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 2484
    .local v3, "v":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1500(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    move-result-object v4

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->getImpl(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v4, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$300(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2485
    .local v1, "actualVo":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2489
    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1500(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    move-result-object v4

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v4, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$400(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2490
    .local v0, "actual":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_3

    if-nez v0, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2470
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>.EntrySubSet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 8
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
    .line 2512
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>.EntrySubSet;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntryIter;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1500(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1700(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Ljava/lang/Comparable;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z
    invoke-static {v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1800(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Z

    move-result v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1900(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Ljava/lang/Comparable;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z
    invoke-static {v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$2000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Z

    move-result v5

    iget-object v6, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z
    invoke-static {v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$2100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Z

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntryIter;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2502
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>.EntrySubSet;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    .line 2503
    const/4 v2, 0x0

    .line 2507
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v2

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object v2, p1

    .line 2505
    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2506
    .local v0, "k":Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2507
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2465
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>.EntrySubSet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->size()I

    move-result v0

    return v0
.end method
