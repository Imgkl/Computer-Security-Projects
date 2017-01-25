.class abstract Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "GridOffHeapSnapTreeMap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TK;>;",
        "Ljava/util/NavigableSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;*>;)V"
        }
    .end annotation

    .prologue
    .line 3606
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;*>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 3607
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 3608
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3657
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 3632
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3612
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3682
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3677
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3637
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3652
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3693
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3708
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3662
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3617
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3642
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3647
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3667
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3672
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3627
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3622
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "minInclusive"    # Z
    .param p4, "maxInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3688
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p3, "toElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3703
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p2, "toElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3698
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3713
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet<TK;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;->map:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
