.class public final Lorg/apache/ignite/internal/util/GridClassLoaderCache;
.super Ljava/lang/Object;
.source "GridClassLoaderCache.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/util/GridClassLoaderCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->$assertionsDisabled:Z

    .line 32
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static classLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 44
    .local v0, "cached":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 45
    sget-object v2, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 47
    .local v1, "old":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 48
    move-object v0, v1

    .line 51
    .end local v1    # "old":Ljava/lang/ClassLoader;
    :cond_0
    return-object v0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 123
    return-void
.end method

.method private static detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 79
    .local v2, "ctxClsLdr":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 81
    .local v1, "clsLdr":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 82
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 84
    :cond_0
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->p2pLoader(Ljava/lang/ClassLoader;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    .end local v1    # "clsLdr":Ljava/lang/ClassLoader;
    :cond_1
    :goto_0
    return-object v1

    .line 87
    .restart local v1    # "clsLdr":Ljava/lang/ClassLoader;
    :cond_2
    if-eqz v2, :cond_1

    .line 88
    if-ne v2, v1, :cond_3

    move-object v1, v2

    .line 89
    goto :goto_0

    .line 93
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, p0, :cond_1

    move-object v1, v2

    .line 96
    goto :goto_0

    .line 98
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static onUndeployed(Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 58
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 60
    :cond_0
    sget-object v2, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/ClassLoader;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    sget-object v2, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/ClassLoader;>;"
    :cond_2
    return-void
.end method

.method public static printMemoryStats()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    const-string v2, ">>>"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    const-string v2, ">>> GridClassLoaderCache memory stats:"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    sget-object v2, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/ClassLoader;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/ClassLoader;>;"
    :cond_0
    return-void
.end method
