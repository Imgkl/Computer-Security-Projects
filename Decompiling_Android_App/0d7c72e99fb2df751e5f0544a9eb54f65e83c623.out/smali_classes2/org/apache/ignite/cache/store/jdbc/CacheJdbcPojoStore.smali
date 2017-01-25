.class public Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;
.super Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;
.source "CacheJdbcPojoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected volatile mtdsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;-><init>()V

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;->mtdsCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected buildObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/sql/ResultSet;)Ljava/lang/Object;
    .locals 12
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "typeName"    # Ljava/lang/String;
    .param p5, "rs"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/sql/ResultSet;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheLoaderException;
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore<TK;TV;>;"
    .local p3, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeFieldMetadata;>;"
    .local p4, "loadColIdxs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;->mtdsCache:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;

    .line 157
    .local v5, "mc":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;
    if-nez v5, :cond_0

    .line 158
    new-instance v8, Ljavax/cache/integration/CacheLoaderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find cache type metadata for type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 161
    :cond_0
    :try_start_0
    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->simple:Z
    invoke-static {v5}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->access$000(Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 162
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 164
    .local v3, "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    invoke-virtual {v3}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v5, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->cls:Ljava/lang/Class;

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v8, v9}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;->getColumnValue(Ljava/sql/ResultSet;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 181
    .end local v3    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    :cond_1
    return-object v6

    .line 167
    :cond_2
    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->ctor:Ljava/lang/reflect/Constructor;
    invoke-static {v5}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 169
    .local v6, "obj":Ljava/lang/Object;
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 170
    .restart local v3    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->setters:Ljava/util/Map;
    invoke-static {v5}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->access$200(Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    .line 172
    .local v7, "setter":Ljava/lang/reflect/Method;
    if-nez v7, :cond_3

    .line 173
    new-instance v8, Ljavax/cache/integration/CacheLoaderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find setter in POJO class [class name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", property="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .end local v3    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "setter":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/sql/SQLException;
    new-instance v8, Ljavax/cache/integration/CacheLoaderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read object of class: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 176
    .end local v2    # "e":Ljava/sql/SQLException;
    .restart local v3    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v7    # "setter":Ljava/lang/reflect/Method;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 178
    .local v1, "colIdx":Ljava/lang/Integer;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaType()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v10, v11}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;->getColumnValue(Ljava/sql/ResultSet;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 186
    .end local v1    # "colIdx":Ljava/lang/Integer;
    .end local v3    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "setter":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljavax/cache/integration/CacheLoaderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to construct instance of class: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method protected extractParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "typeName"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore<TK;TV;>;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;->mtdsCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;

    .line 198
    .local v2, "mc":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;
    if-nez v2, :cond_0

    .line 199
    new-instance v3, Ljavax/cache/CacheException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find cache type metadata for type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v2    # "mc":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljavax/cache/CacheException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read object of class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "mc":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;
    :cond_0
    :try_start_1
    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->simple:Z
    invoke-static {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->access$000(Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    .end local p4    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p4

    .line 204
    .restart local p4    # "obj":Ljava/lang/Object;
    :cond_1
    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->getters:Ljava/util/Map;
    invoke-static {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->access$300(Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 206
    .local v1, "getter":Ljava/lang/reflect/Method;
    if-nez v1, :cond_2

    .line 207
    new-instance v3, Ljavax/cache/integration/CacheLoaderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find getter in POJO class [class name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", property="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p4

    goto :goto_0
.end method

.method protected keyTypeId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected keyTypeId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore<TK;TV;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/cache/CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected prepareBuilders(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 8
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeMetadata;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;, "Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore<TK;TV;>;"
    .local p2, "types":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeMetadata;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v4

    .line 137
    .local v4, "typeMethods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cache/CacheTypeMetadata;

    .line 138
    .local v3, "type":Lorg/apache/ignite/cache/CacheTypeMetadata;
    invoke-virtual {v3}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyType()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "keyType":Ljava/lang/String;
    new-instance v6, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;

    invoke-virtual {v3}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyFields()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v3}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "valType":Ljava/lang/String;
    new-instance v6, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;

    invoke-virtual {v3}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueFields()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v1    # "keyType":Ljava/lang/String;
    .end local v3    # "type":Lorg/apache/ignite/cache/CacheTypeMetadata;
    .end local v5    # "valType":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v6, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;->mtdsCache:Ljava/util/Map;

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 147
    .local v2, "newMtdsCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;>;>;"
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iput-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;->mtdsCache:Ljava/util/Map;

    .line 150
    return-void
.end method
