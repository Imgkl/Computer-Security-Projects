.class public Lcom/eventgenie/android/utils/help/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT1;",
            "Ljava/util/Set",
            "<TT2;>;>;TT1;TT2;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT1;Ljava/util/Set<TT2;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT1;"
    .local p2, "valueToAdd":Ljava/lang/Object;, "TT2;"
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    .local v0, "tmp":Ljava/util/Set;, "Ljava/util/Set<TT2;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getWithFallback(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT1;TT2;>;TT1;TT2;)TT2;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT1;TT2;>;"
    .local p1, "key":Ljava/lang/Object;, "TT1;"
    .local p2, "fallback":Ljava/lang/Object;, "TT2;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "tmp":Ljava/lang/Object;, "TT2;"
    if-nez v0, :cond_0

    .line 49
    .end local p2    # "fallback":Ljava/lang/Object;, "TT2;"
    :goto_0
    return-object p2

    .restart local p2    # "fallback":Ljava/lang/Object;, "TT2;"
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static sortByKey(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 6
    .param p1, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Comparable;",
            "*>;Z)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Comparable;*>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 68
    .local v2, "list":Ljava/util/List;
    new-instance v4, Lcom/eventgenie/android/utils/help/MapUtils$1;

    invoke-direct {v4, p1}, Lcom/eventgenie/android/utils/help/MapUtils$1;-><init>(Z)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 88
    .local v3, "result":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-object v3
.end method

.method public static sortByValue(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 6
    .param p1, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<*+",
            "Ljava/lang/Comparable;",
            ">;Z)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*+Ljava/lang/Comparable;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v2, "list":Ljava/util/List;
    new-instance v4, Lcom/eventgenie/android/utils/help/MapUtils$2;

    invoke-direct {v4, p1}, Lcom/eventgenie/android/utils/help/MapUtils$2;-><init>(Z)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 120
    .local v3, "result":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-object v3
.end method
