.class public Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;
.super Ljava/lang/Object;
.source "CacheJdbcPojoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PojoMethodsCache"
.end annotation


# instance fields
.field protected final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private ctor:Ljava/lang/reflect/Constructor;

.field private getters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private setters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final simple:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 12
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeFieldMetadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->cls:Ljava/lang/Class;

    .line 72
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->cls:Ljava/lang/Class;

    invoke-static {v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->simpleType(Ljava/lang/Class;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->simple:Z

    if-eqz v5, :cond_1

    .line 115
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->cls:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->ctor:Ljava/lang/reflect/Constructor;

    .line 77
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->ctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_2

    .line 78
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->ctor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 87
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->setters:Ljava/util/Map;

    .line 89
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->getters:Ljava/util/Map;

    .line 91
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 92
    .local v1, "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "prop":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->getters:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->cls:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    .line 108
    :goto_1
    :try_start_2
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->setters:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->cls:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaType()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljavax/cache/CacheException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find setter in POJO class [class name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", property="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 80
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "prop":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljavax/cache/CacheException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 83
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljavax/cache/CacheException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find default constructor for class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 97
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "prop":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 99
    .local v3, "ignored":Ljava/lang/NoSuchMethodException;
    :try_start_3
    iget-object v5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->getters:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->cls:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    .line 101
    :catch_4
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljavax/cache/CacheException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find getter in POJO class [class name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", property="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method static synthetic access$000(Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->simple:Z

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->ctor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->setters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheJdbcPojoStore$PojoMethodsCache;->getters:Ljava/util/Map;

    return-object v0
.end method

.method private capitalFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 124
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
