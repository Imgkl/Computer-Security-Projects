.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;
.super Ljava/lang/Object;
.source "GridCacheCommittedTxInfo.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private originatingNodeId:Ljava/util/UUID;

.field private originatingTxId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private recoveryWrites:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->replicated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->originatingTxId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 60
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->eventNodeId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->originatingNodeId:Ljava/util/UUID;

    .line 61
    return-void
.end method


# virtual methods
.method public originatingNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->originatingNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public originatingTxId()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->originatingTxId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->originatingTxId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->originatingTxId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->readExternal(Ljava/io/ObjectInput;)V

    .line 101
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->originatingNodeId:Ljava/util/UUID;

    .line 103
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->recoveryWrites:Ljava/util/Collection;

    .line 104
    return-void
.end method

.method public recoveryWrites()Ljava/util/Collection;
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
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->recoveryWrites:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->recoveryWrites:Ljava/util/Collection;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;

    const-string v1, "recoveryWrites"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->recoveryWrites:Ljava/util/Collection;

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->originatingTxId:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->originatingNodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->recoveryWrites:Ljava/util/Collection;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 93
    return-void
.end method
