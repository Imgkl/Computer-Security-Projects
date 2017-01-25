.class public Lorg/apache/ignite/configuration/IgniteReflectionFactory;
.super Ljava/lang/Object;
.source "IgniteReflectionFactory.java"

# interfaces
.implements Ljavax/cache/configuration/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/configuration/Factory",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private volatile cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private transient instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile singleton:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/configuration/IgniteReflectionFactory;-><init>(Ljava/lang/Class;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "singleton"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->cls:Ljava/lang/Class;

    .line 60
    iput-boolean p2, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->singleton:Z

    .line 61
    return-void
.end method

.method private createInstance()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    iget-object v2, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->cls:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to create object (object type is not set)."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->cls:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->injectProperties(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    return-object v1

    .line 142
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Ljavax/cache/CacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate factory object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->cls:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 142
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private injectProperties(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->props:Ljava/util/Map;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    iget-object v4, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->props:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/Serializable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    .line 160
    .local v3, "val":Ljava/io/Serializable;
    invoke-direct {p0, p1, v1, v3}, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->setWithMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)Z

    goto :goto_0

    .line 163
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/Serializable;>;"
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "val":Ljava/io/Serializable;
    :cond_1
    return-void
.end method

.method private setWithMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)Z
    .locals 13
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "set"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v9, 0x3

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 180
    .local v7, "paramCls":Ljava/lang/Class;
    :goto_0
    if-eqz v7, :cond_0

    .line 182
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 184
    .local v6, "mtd":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v9, v10

    invoke-virtual {v6, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5

    .line 186
    const/4 v9, 0x1

    .line 214
    .end local v6    # "mtd":Ljava/lang/reflect/Method;
    :goto_1
    return v9

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v9, Ljavax/cache/CacheException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 191
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    .line 193
    .local v3, "ignore":Ljava/lang/ReflectiveOperationException;
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 194
    goto :goto_0

    .line 198
    .end local v3    # "ignore":Ljava/lang/ReflectiveOperationException;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v5, :cond_1

    aget-object v4, v0, v2

    .line 200
    .local v4, "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 202
    .restart local v6    # "mtd":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v9, v10

    invoke-virtual {v6, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 204
    const/4 v9, 0x1

    goto :goto_1

    .line 206
    .end local v6    # "mtd":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v1

    .line 207
    .restart local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v9, Ljavax/cache/CacheException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 209
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v9

    .line 198
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 214
    .end local v4    # "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 209
    .restart local v4    # "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4
    move-exception v9

    goto :goto_4

    .line 191
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v4    # "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "len$":I
    :catch_5
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->singleton:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->instance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->createInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->instance:Ljava/lang/Object;

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->instance:Ljava/lang/Object;

    monitor-exit p0

    .line 124
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->createInstance()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getComponentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->cls:Ljava/lang/Class;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->props:Ljava/util/Map;

    return-object v0
.end method

.method public isSingleton()Z
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->singleton:Z

    return v0
.end method

.method public setComponentClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->cls:Ljava/lang/Class;

    .line 98
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->props:Ljava/util/Map;

    .line 112
    return-void
.end method

.method public setSingleton(Z)V
    .locals 0
    .param p1, "singleton"    # Z

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/configuration/IgniteReflectionFactory;, "Lorg/apache/ignite/configuration/IgniteReflectionFactory<TT;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/IgniteReflectionFactory;->singleton:Z

    .line 84
    return-void
.end method
