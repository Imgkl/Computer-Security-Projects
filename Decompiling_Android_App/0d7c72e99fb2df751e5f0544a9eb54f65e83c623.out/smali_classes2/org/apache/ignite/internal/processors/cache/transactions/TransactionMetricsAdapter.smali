.class public Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;
.super Ljava/lang/Object;
.source "TransactionMetricsAdapter.java"

# interfaces
.implements Lorg/apache/ignite/transactions/TransactionMetrics;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private volatile commitTime:J

.field private volatile rollbackTime:J

.field private volatile txCommits:I

.field private volatile txRollbacks:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/transactions/TransactionMetrics;)V
    .locals 2
    .param p1, "m"    # Lorg/apache/ignite/transactions/TransactionMetrics;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-interface {p1}, Lorg/apache/ignite/transactions/TransactionMetrics;->commitTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->commitTime:J

    .line 56
    invoke-interface {p1}, Lorg/apache/ignite/transactions/TransactionMetrics;->rollbackTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->rollbackTime:J

    .line 57
    invoke-interface {p1}, Lorg/apache/ignite/transactions/TransactionMetrics;->txCommits()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txCommits:I

    .line 58
    invoke-interface {p1}, Lorg/apache/ignite/transactions/TransactionMetrics;->txRollbacks()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txRollbacks:I

    .line 59
    return-void
.end method


# virtual methods
.method public commitTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->commitTime:J

    return-wide v0
.end method

.method public onTxCommit()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->commitTime:J

    .line 87
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txCommits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txCommits:I

    .line 88
    return-void
.end method

.method public onTxRollback()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->rollbackTime:J

    .line 96
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txRollbacks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txRollbacks:I

    .line 97
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->commitTime:J

    .line 110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->rollbackTime:J

    .line 111
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txCommits:I

    .line 112
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txRollbacks:I

    .line 113
    return-void
.end method

.method public rollbackTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->rollbackTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public txCommits()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txCommits:I

    return v0
.end method

.method public txRollbacks()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txRollbacks:I

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->commitTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 102
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->rollbackTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 103
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txCommits:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 104
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->txRollbacks:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 105
    return-void
.end method
