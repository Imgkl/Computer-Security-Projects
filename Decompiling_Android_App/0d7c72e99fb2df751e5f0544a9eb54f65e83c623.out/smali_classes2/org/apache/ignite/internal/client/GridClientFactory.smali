.class public Lorg/apache/ignite/internal/client/GridClientFactory;
.super Ljava/lang/Object;
.source "GridClientFactory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static openClients:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/client/impl/GridClientImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/client/GridClientFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/GridClientFactory;->$assertionsDisabled:Z

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/client/GridClientFactory;->openClients:Ljava/util/concurrent/ConcurrentMap;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/client/GridClientFactory;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static start(Lorg/apache/ignite/internal/client/GridClientConfiguration;)Lorg/apache/ignite/internal/client/GridClient;
    .locals 5
    .param p0, "cfg"    # Lorg/apache/ignite/internal/client/GridClientConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v3, Lorg/apache/ignite/internal/client/GridClientFactory;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 55
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 57
    .local v1, "clientId":Ljava/util/UUID;
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v3}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;-><init>(Ljava/util/UUID;Lorg/apache/ignite/internal/client/GridClientConfiguration;Z)V

    .line 59
    .local v0, "client":Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    sget-object v3, Lorg/apache/ignite/internal/client/GridClientFactory;->openClients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    .line 61
    .local v2, "old":Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    sget-boolean v3, Lorg/apache/ignite/internal/client/GridClientFactory;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Random unique UUID generation failed."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v0    # "client":Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    .end local v1    # "clientId":Ljava/util/UUID;
    .end local v2    # "old":Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    :catchall_0
    move-exception v3

    sget-object v4, Lorg/apache/ignite/internal/client/GridClientFactory;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .restart local v0    # "client":Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    .restart local v1    # "clientId":Ljava/util/UUID;
    .restart local v2    # "old":Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    :cond_0
    sget-object v3, Lorg/apache/ignite/internal/client/GridClientFactory;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public static stop(Ljava/util/UUID;)V
    .locals 1
    .param p0, "clientId"    # Ljava/util/UUID;

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/client/GridClientFactory;->stop(Ljava/util/UUID;Z)V

    .line 115
    return-void
.end method

.method public static stop(Ljava/util/UUID;Z)V
    .locals 3
    .param p0, "clientId"    # Ljava/util/UUID;
    .param p1, "wait"    # Z

    .prologue
    .line 126
    sget-object v1, Lorg/apache/ignite/internal/client/GridClientFactory;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 129
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/client/GridClientFactory;->openClients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    .line 131
    .local v0, "client":Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->stop(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/client/GridClientFactory;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 137
    return-void

    .line 135
    .end local v0    # "client":Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/apache/ignite/internal/client/GridClientFactory;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public static stopAll()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/ignite/internal/client/GridClientFactory;->stopAll(Z)V

    .line 78
    return-void
.end method

.method public static stopAll(Z)V
    .locals 5
    .param p0, "wait"    # Z

    .prologue
    .line 91
    sget-object v3, Lorg/apache/ignite/internal/client/GridClientFactory;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 94
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/client/GridClientFactory;->openClients:Ljava/util/concurrent/ConcurrentMap;

    .line 96
    .local v2, "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientImpl;>;"
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lorg/apache/ignite/internal/client/GridClientFactory;->openClients:Ljava/util/concurrent/ConcurrentMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sget-object v3, Lorg/apache/ignite/internal/client/GridClientFactory;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 102
    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    .line 103
    .local v0, "client":Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->stop(Z)V

    goto :goto_0

    .line 99
    .end local v0    # "client":Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientImpl;>;"
    :catchall_0
    move-exception v3

    sget-object v4, Lorg/apache/ignite/internal/client/GridClientFactory;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 104
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientImpl;>;"
    :cond_0
    return-void
.end method
