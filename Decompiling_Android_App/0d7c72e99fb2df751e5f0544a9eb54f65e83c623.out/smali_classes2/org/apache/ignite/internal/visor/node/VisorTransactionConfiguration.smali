.class public Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;
.super Ljava/lang/Object;
.source "VisorTransactionConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private dfltTxConcurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

.field private dfltTxIsolation:Lorg/apache/ignite/transactions/TransactionIsolation;

.field private dfltTxTimeout:J

.field private pessimisticTxLogLinger:I

.field private pessimisticTxLogSize:I

.field private txSerEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/TransactionConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;
    .locals 4
    .param p0, "src"    # Lorg/apache/ignite/configuration/TransactionConfiguration;

    .prologue
    .line 58
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;-><init>()V

    .line 60
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxConcurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->dfltTxConcurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 61
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxIsolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->dfltTxIsolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 62
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->dfltTxTimeout:J

    .line 63
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getPessimisticTxLogLinger()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->pessimisticTxLogLinger:I

    .line 64
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getPessimisticTxLogSize()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->pessimisticTxLogSize:I

    .line 65
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->txSerEnabled:Z

    .line 67
    return-object v0
.end method


# virtual methods
.method public defaultTxConcurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->dfltTxConcurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    return-object v0
.end method

.method public defaultTxIsolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->dfltTxIsolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    return-object v0
.end method

.method public defaultTxTimeout()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->dfltTxTimeout:J

    return-wide v0
.end method

.method public getPessimisticTxLogSize()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->pessimisticTxLogSize:I

    return v0
.end method

.method public pessimisticTxLogLinger()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->pessimisticTxLogLinger:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public txSerializableEnabled()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->txSerEnabled:Z

    return v0
.end method
