.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;
.super Ljava/util/AbstractSet;
.source "GridOffHeapSnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
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
.field final synthetic this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)V
    .locals 0

    .prologue
    .line 3939
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap.EntrySubSet;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;

    .prologue
    .line 3939
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap.EntrySubSet;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3939
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap.EntrySubSet;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->add(Ljava/util/Map$Entry;)Z

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
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap.EntrySubSet;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v2, 0x0

    .line 3975
    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->requireInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V
    invoke-static {v3, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 3977
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 3979
    .local v0, "v":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    if-nez v0, :cond_0

    .line 3980
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 3982
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    const/4 v4, 0x0

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->update(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;
    invoke-static {v3, v1, v2, v4, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap.EntrySubSet;"
    const/4 v4, 0x0

    .line 3952
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    move v3, v4

    .line 3970
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v3

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object v3, p1

    .line 3956
    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3958
    .local v1, "k":Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-object v3, v1

    check-cast v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->inRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z
    invoke-static {v5, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2400(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 3959
    goto :goto_0

    .line 3962
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 3963
    .local v2, "v":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    move-result-object v3

    check-cast v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local v1    # "k":Ljava/lang/Object;
    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->getImpl(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    invoke-static {v3, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    .line 3965
    .local v0, "actual":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    if-nez v0, :cond_2

    move v3, v4

    .line 3967
    goto :goto_0

    .line 3970
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3947
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap.EntrySubSet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
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
    .line 3999
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap.EntrySubSet;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntryIter;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Ljava/lang/Comparable;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Z

    move-result v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;
    invoke-static {v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Ljava/lang/Comparable;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$3000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Z

    move-result v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$3100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntryIter;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3987
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap.EntrySubSet;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    .line 3988
    const/4 v2, 0x0

    .line 3994
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v2

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object v2, p1

    .line 3991
    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3992
    .local v0, "k":Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3994
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3942
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap.EntrySubSet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->size()I

    move-result v0

    return v0
.end method
