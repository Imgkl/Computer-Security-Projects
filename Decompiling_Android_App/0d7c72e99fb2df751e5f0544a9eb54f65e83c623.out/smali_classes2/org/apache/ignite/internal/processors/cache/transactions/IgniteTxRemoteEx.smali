.class public interface abstract Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;
.super Ljava/lang/Object;
.source "IgniteTxRemoteEx.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;


# virtual methods
.method public abstract doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract remoteThreadId()J
.end method

.method public abstract setWriteValue(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Z
.end method
