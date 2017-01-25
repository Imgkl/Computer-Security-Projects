.class public interface abstract Lorg/apache/ignite/Ignite;
.super Ljava/lang/Object;
.source "Ignite.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract affinity(Ljava/lang/String;)Lorg/apache/ignite/cache/affinity/Affinity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/cache/affinity/Affinity",
            "<TK;>;"
        }
    .end annotation
.end method

.method public abstract atomicLong(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract atomicReference(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicReference;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z)",
            "Lorg/apache/ignite/IgniteAtomicReference",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract atomicSequence(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract atomicStamped(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicStamped;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;TS;Z)",
            "Lorg/apache/ignite/IgniteAtomicStamped",
            "<TT;TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract cluster()Lorg/apache/ignite/IgniteCluster;
.end method

.method public abstract compute()Lorg/apache/ignite/IgniteCompute;
.end method

.method public abstract compute(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteCompute;
.end method

.method public abstract configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;
.end method

.method public abstract countDownLatch(Ljava/lang/String;IZZ)Lorg/apache/ignite/IgniteCountDownLatch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract createCache(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract createCache(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/NearCacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<TK;TV;>;",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract createNearCache(Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract dataStreamer(Ljava/lang/String;)Lorg/apache/ignite/IgniteDataStreamer;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/IgniteDataStreamer",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract destroyCache(Ljava/lang/String;)V
.end method

.method public abstract events()Lorg/apache/ignite/IgniteEvents;
.end method

.method public abstract events(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteEvents;
.end method

.method public abstract executorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract executorService(Lorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract fileSystem(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;
.end method

.method public abstract fileSystems()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/IgniteFileSystem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrCreateCache(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getOrCreateCache(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/NearCacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<TK;TV;>;",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getOrCreateNearCache(Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract log()Lorg/apache/ignite/IgniteLogger;
.end method

.method public abstract message()Lorg/apache/ignite/IgniteMessaging;
.end method

.method public abstract message(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteMessaging;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract plugin(Ljava/lang/String;)Lorg/apache/ignite/plugin/IgnitePlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/plugin/IgnitePlugin;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/plugin/PluginNotFoundException;
        }
    .end annotation
.end method

.method public abstract queue(Ljava/lang/String;ILorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteQueue;
    .param p3    # Lorg/apache/ignite/configuration/CollectionConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/ignite/configuration/CollectionConfiguration;",
            ")",
            "Lorg/apache/ignite/IgniteQueue",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract scheduler()Lorg/apache/ignite/IgniteScheduler;
.end method

.method public abstract services()Lorg/apache/ignite/IgniteServices;
.end method

.method public abstract services(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteServices;
.end method

.method public abstract set(Ljava/lang/String;Lorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteSet;
    .param p2    # Lorg/apache/ignite/configuration/CollectionConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/configuration/CollectionConfiguration;",
            ")",
            "Lorg/apache/ignite/IgniteSet",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract transactions()Lorg/apache/ignite/IgniteTransactions;
.end method

.method public abstract version()Lorg/apache/ignite/lang/IgniteProductVersion;
.end method
