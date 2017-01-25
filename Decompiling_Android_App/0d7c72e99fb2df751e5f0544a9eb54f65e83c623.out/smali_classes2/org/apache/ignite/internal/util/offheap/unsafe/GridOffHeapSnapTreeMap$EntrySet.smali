.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "GridOffHeapSnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
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
.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)V
    .locals 0

    .prologue
    .line 3205
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;

    .prologue
    .line 3205
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3205
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;->add(Ljava/util/Map$Entry;)Z

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
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.EntrySet;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v2, 0x0

    .line 3242
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 3244
    .local v0, "v":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    if-nez v0, :cond_0

    .line 3245
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 3247
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

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

.method public clear()V
    .locals 1

    .prologue
    .line 3218
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->clear()V

    .line 3219
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.EntrySet;"
    const/4 v4, 0x0

    .line 3223
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    move v3, v4

    .line 3237
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v3

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object v3, p1

    .line 3227
    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3228
    .local v1, "k":Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 3230
    .local v2, "v":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    check-cast v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local v1    # "k":Ljava/lang/Object;
    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->getImpl(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    invoke-static {v3, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    .line 3232
    .local v0, "actual":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    if-nez v0, :cond_1

    move v3, v4

    .line 3234
    goto :goto_0

    .line 3237
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3213
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
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
    .line 3264
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntryIter;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntryIter;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3252
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.EntrySet;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    .line 3253
    const/4 v2, 0x0

    .line 3259
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v2

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object v2, p1

    .line 3256
    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3257
    .local v0, "k":Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3259
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3208
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->size()I

    move-result v0

    return v0
.end method
