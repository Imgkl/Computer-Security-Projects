.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$3;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;->call()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;

.field final synthetic val$ctx:Lorg/apache/ignite/internal/GridKernalContext;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0

    .prologue
    .line 1912
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$3;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$3;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1912
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$3;->apply(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;
    .locals 24
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$3;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->types(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v22

    .line 1916
    .local v22, "types":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v4

    .line 1917
    .local v4, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v5

    .line 1918
    .local v5, "keyClasses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v6

    .line 1919
    .local v6, "valClasses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v7

    .line 1920
    .local v7, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v8

    .line 1922
    .local v8, "indexes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;>;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;

    .line 1924
    .local v21, "type":Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GridCache"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1927
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1929
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->keyClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->valueClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->fields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/lit8 v20, v2, 0x2

    .line 1934
    .local v20, "size":I
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v13

    .line 1937
    .local v13, "fieldsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_KEY"

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->keyClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    const-string v2, "_VAL"

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->valueClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->fields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1941
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1943
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :cond_1
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->indexes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1948
    .local v19, "indexesCol":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;>;"
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->indexes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1949
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;

    .line 1952
    .local v9, "desc":Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;->type()Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    if-ne v2, v3, :cond_2

    .line 1953
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;->fields()Ljava/util/Collection;

    move-result-object v18

    .line 1954
    .local v18, "idxFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1956
    .local v10, "descendings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1957
    .local v17, "idxField":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;->descending(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1958
    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1960
    .end local v17    # "idxField":Ljava/lang/String;
    :cond_4
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v3, v2, v0, v10, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Z)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1965
    .end local v9    # "desc":Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;
    .end local v10    # "descendings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "idxFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1968
    .end local v13    # "fieldsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "indexesCol":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;>;"
    .end local v20    # "size":I
    .end local v21    # "type":Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;
    :cond_6
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v2
.end method
