.class Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)V
    .locals 0

    .prologue
    .line 1927
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;

    .prologue
    .line 1927
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1927
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;->add(Ljava/util/Map$Entry;)Z

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
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>.EntrySet;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .line 1962
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$500(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1963
    .local v0, "v":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

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

.method public clear()V
    .locals 1

    .prologue
    .line 1941
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->clear()V

    .line 1942
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>.EntrySet;"
    const/4 v5, 0x0

    .line 1946
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_1

    .line 1957
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move-object v4, p1

    .line 1949
    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1950
    .local v2, "k":Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1951
    .local v3, "v":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->getImpl(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v4, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$300(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1952
    .local v1, "actualVo":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1956
    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v4, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$400(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1957
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
    .line 1936
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
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
    .line 1978
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntryIter;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntryIter;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1968
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>.EntrySet;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    .line 1969
    const/4 v2, 0x0

    .line 1973
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v2

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object v2, p1

    .line 1971
    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1972
    .local v0, "k":Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1973
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1931
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->size()I

    move-result v0

    return v0
.end method
