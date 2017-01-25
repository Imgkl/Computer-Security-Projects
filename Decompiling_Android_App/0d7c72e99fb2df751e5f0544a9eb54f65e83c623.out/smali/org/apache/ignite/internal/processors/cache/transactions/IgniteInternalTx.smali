.class public interface abstract Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
.super Ljava/lang/Object;
.source "IgniteInternalTx.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;
    }
.end annotation


# virtual methods
.method public abstract activeCacheIds()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;I)V"
        }
    .end annotation
.end method

.method public abstract addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract allEntries()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract alternateVersions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract colocated()Z
.end method

.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end method

.method public abstract commitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.end method

.method public abstract commitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
.end method

.method public abstract completedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;)V
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
            ">;)V"
        }
    .end annotation
.end method

.method public abstract concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;
.end method

.method public abstract dht()Z
.end method

.method public abstract done()Z
.end method

.method public abstract empty()Z
.end method

.method public abstract endVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.end method

.method public abstract endVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
.end method

.method public abstract enforceSerializable()Z
.end method

.method public abstract entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract eventNodeId()Ljava/util/UUID;
.end method

.method public abstract finishFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end method

.method public abstract groupLock()Z
.end method

.method public abstract groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract hasTransforms()Z
.end method

.method public abstract hasWriteKey(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z
.end method

.method public abstract implicit()Z
.end method

.method public abstract implicitSingle()Z
.end method

.method public abstract internal()Z
.end method

.method public abstract invalidPartitions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract invalidate(Z)V
.end method

.method public abstract ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
.end method

.method public abstract isInvalidate()Z
.end method

.method public abstract isRollbackOnly()Z
.end method

.method public abstract isSystemInvalidate()Z
.end method

.method public abstract isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
.end method

.method public abstract local()Z
.end method

.method public abstract localResult()Z
.end method

.method public abstract markFinalizing(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z
.end method

.method public abstract markPreparing()Z
.end method

.method public abstract masterNodeIds()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end method

.method public abstract meta(Ljava/util/UUID;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract near()Z
.end method

.method public abstract nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract needsCompletedVersions()Z
.end method

.method public abstract nodeId()Ljava/util/UUID;
.end method

.method public abstract onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
.end method

.method public abstract onePhaseCommit()Z
.end method

.method public abstract optimistic()Z
.end method

.method public abstract optimisticLockEntries()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract originatingNodeId()Ljava/util/UUID;
.end method

.method public abstract otherNodeId()Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract ownedVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract ownsLock(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation
.end method

.method public abstract ownsLockUnsafe(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
.end method

.method public abstract peek(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/KeyCacheObject;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .param p4    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
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
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Z",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract pessimistic()Z
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract prepareAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end method

.method public abstract proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;
.end method

.method public abstract readCommitted()Z
.end method

.method public abstract readEntries()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remainingTime()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;
        }
    .end annotation
.end method

.method public abstract removeMeta(Ljava/util/UUID;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract removed(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z
.end method

.method public abstract repeatableRead()Z
.end method

.method public abstract replicated()Z
.end method

.method public abstract rollback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end method

.method public abstract seal()V
.end method

.method public abstract serializable()Z
.end method

.method public abstract setRollbackOnly()Z
.end method

.method public abstract size()I
.end method

.method public abstract startTime()J
.end method

.method public abstract startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.end method

.method public abstract state()Lorg/apache/ignite/transactions/TransactionState;
.end method

.method public abstract state(Lorg/apache/ignite/transactions/TransactionState;)Z
.end method

.method public abstract storeEnabled()Z
.end method

.method public abstract storeUsed()Z
.end method

.method public abstract subjectId()Ljava/util/UUID;
.end method

.method public abstract syncCommit()Z
.end method

.method public abstract syncRollback()Z
.end method

.method public abstract system()Z
.end method

.method public abstract systemInvalidate(Z)V
.end method

.method public abstract taskNameHash()I
.end method

.method public abstract threadId()J
.end method

.method public abstract timedOut()Z
.end method

.method public abstract timeout()J
.end method

.method public abstract timeout(J)J
.end method

.method public abstract topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
.end method

.method public abstract topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
.end method

.method public abstract topologyVersionSnapshot()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
.end method

.method public abstract transactionNodes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract user()Z
.end method

.method public abstract writeEntries()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract writeMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract writeSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.end method

.method public abstract writeVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
.end method

.method public abstract xid()Lorg/apache/ignite/lang/IgniteUuid;
.end method

.method public abstract xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.end method
