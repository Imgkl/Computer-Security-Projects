.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;
.super Ljava/lang/Object;
.source "IgniteTxAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TxShadow"
.end annotation


# instance fields
.field private final concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

.field private final implicit:Z

.field private final invalidate:Z

.field private final isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

.field private final nodeId:Ljava/util/UUID;

.field private final rollbackOnly:Z

.field private final startTime:J

.field private final state:Lorg/apache/ignite/transactions/TransactionState;

.field private final threadId:J

.field private final timeout:J

.field private final xid:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;JJLorg/apache/ignite/transactions/TransactionIsolation;Lorg/apache/ignite/transactions/TransactionConcurrency;ZZJLorg/apache/ignite/transactions/TransactionState;Z)V
    .locals 1
    .param p1, "xid"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "threadId"    # J
    .param p5, "startTime"    # J
    .param p7, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p8, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p9, "invalidate"    # Z
    .param p10, "implicit"    # Z
    .param p11, "timeout"    # J
    .param p13, "state"    # Lorg/apache/ignite/transactions/TransactionState;
    .param p14, "rollbackOnly"    # Z

    .prologue
    .line 1605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1606
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->xid:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1607
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->nodeId:Ljava/util/UUID;

    .line 1608
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->threadId:J

    .line 1609
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->startTime:J

    .line 1610
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 1611
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 1612
    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->invalidate:Z

    .line 1613
    iput-boolean p10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->implicit:Z

    .line 1614
    iput-wide p11, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->timeout:J

    .line 1615
    iput-object p13, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->state:Lorg/apache/ignite/transactions/TransactionState;

    .line 1616
    iput-boolean p14, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->rollbackOnly:Z

    .line 1617
    return-void
.end method


# virtual methods
.method public activeCacheIds()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1706
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    .locals 2
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "part"    # I

    .prologue
    .line 1795
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/util/UUID;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1711
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public allEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1920
    const/4 v0, 0x0

    return-object v0
.end method

.method public alternateVersions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2103
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1696
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public colocated()Z
    .locals 1

    .prologue
    .line 1865
    const/4 v0, 0x0

    return v0
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 1691
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2048
    const/4 v0, 0x0

    return-object v0
.end method

.method public commitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 1978
    const/4 v0, 0x0

    return-object v0
.end method

.method public commitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 1
    .param p1, "commitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 1983
    const/4 v0, 0x0

    return v0
.end method

.method public completedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p1, "base"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "committed"    # Ljava/util/Collection;
    .param p3, "rolledback"    # Ljava/util/Collection;

    .prologue
    .line 2114
    return-void
.end method

.method public concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    return-object v0
.end method

.method public dht()Z
    .locals 1

    .prologue
    .line 1860
    const/4 v0, 0x0

    return v0
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 2063
    const/4 v0, 0x0

    return v0
.end method

.method public empty()Z
    .locals 2

    .prologue
    .line 1770
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endTime()J
    .locals 2

    .prologue
    .line 2143
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public endVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 1988
    const/4 v0, 0x0

    return-object v0
.end method

.method public endVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "endVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 2004
    return-void
.end method

.method public enforceSerializable()Z
    .locals 1

    .prologue
    .line 1850
    const/4 v0, 0x0

    return v0
.end method

.method public entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1955
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2153
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->xid:Lorg/apache/ignite/lang/IgniteUuid;

    check-cast p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public eventNodeId()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 1815
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2018
    const/4 v0, 0x0

    return-object v0
.end method

.method public groupLock()Z
    .locals 1

    .prologue
    .line 1775
    const/4 v0, 0x0

    return v0
.end method

.method public groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1780
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasTransforms()Z
    .locals 1

    .prologue
    .line 2128
    const/4 v0, 0x0

    return v0
.end method

.method public hasWriteKey(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 1905
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->xid:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method public implicit()Z
    .locals 1

    .prologue
    .line 1661
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->implicit:Z

    return v0
.end method

.method public implicitSingle()Z
    .locals 2

    .prologue
    .line 1760
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public internal()Z
    .locals 1

    .prologue
    .line 2118
    const/4 v0, 0x0

    return v0
.end method

.method public invalidPartitions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1800
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invalidate(Z)V
    .locals 0
    .param p1, "invalidate"    # Z

    .prologue
    .line 2029
    return-void
.end method

.method public ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .locals 2

    .prologue
    .line 1745
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInvalidate()Z
    .locals 1

    .prologue
    .line 1656
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->invalidate:Z

    return v0
.end method

.method public isRollbackOnly()Z
    .locals 1

    .prologue
    .line 1676
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->rollbackOnly:Z

    return v0
.end method

.method public isSystemInvalidate()Z
    .locals 1

    .prologue
    .line 2038
    const/4 v0, 0x0

    return v0
.end method

.method public isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    return-object v0
.end method

.method public local()Z
    .locals 1

    .prologue
    .line 1870
    const/4 v0, 0x0

    return v0
.end method

.method public localResult()Z
    .locals 1

    .prologue
    .line 1621
    const/4 v0, 0x0

    return v0
.end method

.method public markFinalizing(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z
    .locals 2
    .param p1, "status"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    .prologue
    .line 1790
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markPreparing()Z
    .locals 2

    .prologue
    .line 1785
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public masterNodeIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1825
    const/4 v0, 0x0

    return-object v0
.end method

.method public meta(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1721
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public near()Z
    .locals 1

    .prologue
    .line 1855
    const/4 v0, 0x0

    return v0
.end method

.method public nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1830
    const/4 v0, 0x0

    return-object v0
.end method

.method public needsCompletedVersions()Z
    .locals 1

    .prologue
    .line 2108
    const/4 v0, 0x0

    return v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 2053
    const/4 v0, 0x0

    return v0
.end method

.method public onTimeout()V
    .locals 0

    .prologue
    .line 2149
    return-void
.end method

.method public onePhaseCommit()Z
    .locals 1

    .prologue
    .line 2123
    const/4 v0, 0x0

    return v0
.end method

.method public optimistic()Z
    .locals 1

    .prologue
    .line 2068
    const/4 v0, 0x0

    return v0
.end method

.method public optimisticLockEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1945
    const/4 v0, 0x0

    return-object v0
.end method

.method public originatingNodeId()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 1820
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public otherNodeId()Ljava/util/UUID;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1810
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ownedVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1805
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ownsLock(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 1840
    const/4 v0, 0x0

    return v0
.end method

.method public ownsLockUnsafe(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 1845
    const/4 v0, 0x0

    return v0
.end method

.method public peek(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/KeyCacheObject;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "failFast"    # Z
    .param p3, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1963
    const/4 v0, 0x0

    return-object v0
.end method

.method public pessimistic()Z
    .locals 1

    .prologue
    .line 2073
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1994
    return-void
.end method

.method public prepareAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1998
    const/4 v0, 0x0

    return-object v0
.end method

.method public proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;
    .locals 1

    .prologue
    .line 2133
    const/4 v0, 0x0

    return-object v0
.end method

.method public readCommitted()Z
    .locals 1

    .prologue
    .line 2078
    const/4 v0, 0x0

    return v0
.end method

.method public readEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1930
    const/4 v0, 0x0

    return-object v0
.end method

.method public readMap()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 1940
    const/4 v0, 0x0

    return-object v0
.end method

.method public readSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1910
    const/4 v0, 0x0

    return-object v0
.end method

.method public remainingTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;
        }
    .end annotation

    .prologue
    .line 2098
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public removeMeta(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1716
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removed(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 2093
    const/4 v0, 0x0

    return v0
.end method

.method public repeatableRead()Z
    .locals 1

    .prologue
    .line 2083
    const/4 v0, 0x0

    return v0
.end method

.method public replicated()Z
    .locals 1

    .prologue
    .line 1875
    const/4 v0, 0x0

    return v0
.end method

.method public rollback()V
    .locals 2

    .prologue
    .line 1701
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2043
    const/4 v0, 0x0

    return-object v0
.end method

.method public seal()V
    .locals 0

    .prologue
    .line 1951
    return-void
.end method

.method public serializable()Z
    .locals 1

    .prologue
    .line 2088
    const/4 v0, 0x0

    return v0
.end method

.method public setRollbackOnly()Z
    .locals 2

    .prologue
    .line 1686
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1726
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTime()J
    .locals 2

    .prologue
    .line 1641
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->startTime:J

    return-wide v0
.end method

.method public startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 1968
    const/4 v0, 0x0

    return-object v0
.end method

.method public state()Lorg/apache/ignite/transactions/TransactionState;
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->state:Lorg/apache/ignite/transactions/TransactionState;

    return-object v0
.end method

.method public state(Lorg/apache/ignite/transactions/TransactionState;)Z
    .locals 1
    .param p1, "state"    # Lorg/apache/ignite/transactions/TransactionState;

    .prologue
    .line 2023
    const/4 v0, 0x0

    return v0
.end method

.method public storeEnabled()Z
    .locals 2

    .prologue
    .line 1731
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public storeUsed()Z
    .locals 2

    .prologue
    .line 1736
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 1880
    const/4 v0, 0x0

    return-object v0
.end method

.method public syncCommit()Z
    .locals 1

    .prologue
    .line 1895
    const/4 v0, 0x0

    return v0
.end method

.method public syncRollback()Z
    .locals 1

    .prologue
    .line 1900
    const/4 v0, 0x0

    return v0
.end method

.method public system()Z
    .locals 2

    .prologue
    .line 1741
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemInvalidate(Z)V
    .locals 0
    .param p1, "sysInvalidate"    # Z

    .prologue
    .line 2034
    return-void
.end method

.method public taskNameHash()I
    .locals 1

    .prologue
    .line 1885
    const/4 v0, 0x0

    return v0
.end method

.method public threadId()J
    .locals 2

    .prologue
    .line 1636
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->threadId:J

    return-wide v0
.end method

.method public timedOut()Z
    .locals 1

    .prologue
    .line 2058
    const/4 v0, 0x0

    return v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 1666
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->timeout:J

    return-wide v0
.end method

.method public timeout(J)J
    .locals 2
    .param p1, "timeout"    # J

    .prologue
    .line 1681
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 2138
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2163
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 2

    .prologue
    .line 1750
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 2
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 1765
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public topologyVersionSnapshot()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 2

    .prologue
    .line 1755
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deserialized transaction can only be used as read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transactionNodes()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 1835
    const/4 v0, 0x0

    return-object v0
.end method

.method public user()Z
    .locals 1

    .prologue
    .line 1890
    const/4 v0, 0x0

    return v0
.end method

.method public writeEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1925
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeMap()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 1935
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1915
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 2008
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 2014
    return-void
.end method

.method public xid()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;->xid:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 1973
    const/4 v0, 0x0

    return-object v0
.end method
