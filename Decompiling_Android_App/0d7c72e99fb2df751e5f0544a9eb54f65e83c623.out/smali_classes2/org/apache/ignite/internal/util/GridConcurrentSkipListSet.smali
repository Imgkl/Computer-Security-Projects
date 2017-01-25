.class public Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
.super Lorg/apache/ignite/internal/util/GridSerializableSet;
.source "GridConcurrentSkipListSet.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridSerializableSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "m":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TE;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 100
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 146
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->clone()Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    .line 108
    .local v0, "clone":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/SortedMap;)V

    iput-object v2, v0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v0

    .line 112
    .end local v0    # "clone":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    :catch_0
    move-exception v1

    .line 113
    .local v1, "ignored":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clone should be supported on GridConcurrentSkipListSet class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    if-ne p1, p0, :cond_1

    move v3, v2

    .line 176
    :cond_0
    :goto_0
    return v3

    .line 164
    :cond_1
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 167
    check-cast v0, Ljava/util/Collection;

    .line 170
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "ignored":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 175
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 176
    .local v1, "ignored":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public firstx()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 249
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastx()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 265
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 221
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 228
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 190
    .local v1, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 191
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    const/4 v1, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;, "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
