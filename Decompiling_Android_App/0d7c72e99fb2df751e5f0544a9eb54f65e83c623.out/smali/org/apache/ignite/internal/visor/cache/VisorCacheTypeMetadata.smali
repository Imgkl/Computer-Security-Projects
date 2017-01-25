.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;
.super Ljava/lang/Object;
.source "VisorCacheTypeMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private ascFlds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private dbSchema:Ljava/lang/String;

.field private dbTbl:Ljava/lang/String;

.field private descFlds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private grps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private keyFields:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private keyType:Ljava/lang/String;

.field private qryFlds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private txtFlds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private valFields:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private valType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertFieldsMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 137
    .local v2, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :cond_0
    return-object v2
.end method

.method private static convertGrpsMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;>;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;>;"
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 153
    .local v6, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Boolean;>;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 155
    .local v3, "intBase":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 157
    .local v5, "intRes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 158
    .local v4, "intE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 160
    .local v7, "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    new-instance v10, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v7}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v10, v8, v11}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    .end local v4    # "intE":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    .end local v7    # "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intBase":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;"
    .end local v5    # "intRes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_1
    return-object v6
.end method

.method public static from(Lorg/apache/ignite/cache/CacheTypeMetadata;)Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;
    .locals 5
    .param p0, "m"    # Lorg/apache/ignite/cache/CacheTypeMetadata;

    .prologue
    .line 96
    sget-boolean v4, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 98
    :cond_0
    new-instance v3, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;

    invoke-direct {v3}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;-><init>()V

    .line 100
    .local v3, "metadata":Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getDatabaseSchema()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->dbSchema(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getDatabaseTable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->dbTbl(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->keyType(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->valType(Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyFields()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v1, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyFields()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 108
    .local v0, "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    invoke-static {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->from(Lorg/apache/ignite/cache/CacheTypeFieldMetadata;)Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v0    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    :cond_1
    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->keyFields(Ljava/util/Collection;)V

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueFields()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .restart local v1    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueFields()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 115
    .restart local v0    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    invoke-static {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->from(Lorg/apache/ignite/cache/CacheTypeFieldMetadata;)Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    .end local v0    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    :cond_2
    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->valFields(Ljava/util/Collection;)V

    .line 119
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getQueryFields()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->convertFieldsMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->qryFlds(Ljava/util/Map;)V

    .line 120
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getAscendingFields()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->convertFieldsMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->ascFlds(Ljava/util/Map;)V

    .line 121
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getDescendingFields()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->convertFieldsMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->descFlds(Ljava/util/Map;)V

    .line 122
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getTextFields()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->txtFlds(Ljava/util/Collection;)V

    .line 123
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getGroups()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->convertGrpsMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->grps(Ljava/util/Map;)V

    .line 125
    return-object v3
.end method

.method public static list(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeMetadata;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "types":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeMetadata;>;"
    if-nez p0, :cond_1

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0

    .line 83
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v0, "cfgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cache/CacheTypeMetadata;

    .line 86
    .local v2, "type":Lorg/apache/ignite/cache/CacheTypeMetadata;
    invoke-static {v2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->from(Lorg/apache/ignite/cache/CacheTypeMetadata;)Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public ascFlds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->ascFlds:Ljava/util/Map;

    return-object v0
.end method

.method public ascFlds(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "ascFlds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->ascFlds:Ljava/util/Map;

    .line 272
    return-void
.end method

.method public dbSchema()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->dbSchema:Ljava/lang/String;

    return-object v0
.end method

.method public dbSchema(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbSchema"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->dbSchema:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public dbTbl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->dbTbl:Ljava/lang/String;

    return-object v0
.end method

.method public dbTbl(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbTbl"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->dbTbl:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public descFlds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->descFlds:Ljava/util/Map;

    return-object v0
.end method

.method public descFlds(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "descFlds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->descFlds:Ljava/util/Map;

    .line 286
    return-void
.end method

.method public grps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->grps:Ljava/util/Map;

    return-object v0
.end method

.method public grps(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "grps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Boolean;>;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->grps:Ljava/util/Map;

    .line 314
    return-void
.end method

.method public keyFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->keyFields:Ljava/util/Collection;

    return-object v0
.end method

.method public keyFields(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "keyFields":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->keyFields:Ljava/util/Collection;

    .line 230
    return-void
.end method

.method public keyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public keyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyType"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->keyType:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public qryFlds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->qryFlds:Ljava/util/Map;

    return-object v0
.end method

.method public qryFlds(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "qryFlds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->qryFlds:Ljava/util/Map;

    .line 258
    return-void
.end method

.method public txtFlds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->txtFlds:Ljava/util/Collection;

    return-object v0
.end method

.method public txtFlds(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "txtFlds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->txtFlds:Ljava/util/Collection;

    .line 300
    return-void
.end method

.method public valFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->valFields:Ljava/util/Collection;

    return-object v0
.end method

.method public valFields(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "valFields":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->valFields:Ljava/util/Collection;

    .line 244
    return-void
.end method

.method public valType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->valType:Ljava/lang/String;

    return-object v0
.end method

.method public valType(Ljava/lang/String;)V
    .locals 0
    .param p1, "valType"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeMetadata;->valType:Ljava/lang/String;

    .line 216
    return-void
.end method
