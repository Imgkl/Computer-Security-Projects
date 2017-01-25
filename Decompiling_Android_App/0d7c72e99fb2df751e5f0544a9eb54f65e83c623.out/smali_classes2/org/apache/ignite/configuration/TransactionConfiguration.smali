.class public Lorg/apache/ignite/configuration/TransactionConfiguration;
.super Ljava/lang/Object;
.source "TransactionConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DFLT_PESSIMISTIC_TX_LOG_LINGER:I = 0x2710

.field public static final DFLT_TRANSACTION_TIMEOUT:J

.field public static final DFLT_TX_CONCURRENCY:Lorg/apache/ignite/transactions/TransactionConcurrency;

.field public static final DFLT_TX_ISOLATION:Lorg/apache/ignite/transactions/TransactionIsolation;

.field public static final DFLT_TX_SERIALIZABLE_ENABLED:Z

.field private static final serialVersionUID:J


# instance fields
.field private dfltConcurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

.field private dfltIsolation:Lorg/apache/ignite/transactions/TransactionIsolation;

.field private dfltTxTimeout:J

.field private pessimisticTxLogLinger:I

.field private pessimisticTxLogSize:I

.field private txSerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sput-object v0, Lorg/apache/ignite/configuration/TransactionConfiguration;->DFLT_TX_CONCURRENCY:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 38
    sget-object v0, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    sput-object v0, Lorg/apache/ignite/configuration/TransactionConfiguration;->DFLT_TX_ISOLATION:Lorg/apache/ignite/transactions/TransactionIsolation;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->txSerEnabled:Z

    .line 50
    sget-object v0, Lorg/apache/ignite/configuration/TransactionConfiguration;->DFLT_TX_ISOLATION:Lorg/apache/ignite/transactions/TransactionIsolation;

    iput-object v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltIsolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 53
    sget-object v0, Lorg/apache/ignite/configuration/TransactionConfiguration;->DFLT_TX_CONCURRENCY:Lorg/apache/ignite/transactions/TransactionConcurrency;

    iput-object v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltConcurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltTxTimeout:J

    .line 62
    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->pessimisticTxLogLinger:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/configuration/TransactionConfiguration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/TransactionConfiguration;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->txSerEnabled:Z

    .line 50
    sget-object v0, Lorg/apache/ignite/configuration/TransactionConfiguration;->DFLT_TX_ISOLATION:Lorg/apache/ignite/transactions/TransactionIsolation;

    iput-object v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltIsolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 53
    sget-object v0, Lorg/apache/ignite/configuration/TransactionConfiguration;->DFLT_TX_CONCURRENCY:Lorg/apache/ignite/transactions/TransactionConcurrency;

    iput-object v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltConcurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltTxTimeout:J

    .line 62
    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->pessimisticTxLogLinger:I

    .line 75
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxConcurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltConcurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 76
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxIsolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltIsolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 77
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltTxTimeout:J

    .line 78
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getPessimisticTxLogLinger()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->pessimisticTxLogLinger:I

    .line 79
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getPessimisticTxLogSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->pessimisticTxLogSize:I

    .line 80
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->txSerEnabled:Z

    .line 81
    return-void
.end method


# virtual methods
.method public getDefaultTxConcurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltConcurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    return-object v0
.end method

.method public getDefaultTxIsolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltIsolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    return-object v0
.end method

.method public getDefaultTxTimeout()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltTxTimeout:J

    return-wide v0
.end method

.method public getPessimisticTxLogLinger()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->pessimisticTxLogLinger:I

    return v0
.end method

.method public getPessimisticTxLogSize()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->pessimisticTxLogSize:I

    return v0
.end method

.method public isTxSerializableEnabled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->txSerEnabled:Z

    return v0
.end method

.method public setDefaultTxConcurrency(Lorg/apache/ignite/transactions/TransactionConcurrency;)V
    .locals 0
    .param p1, "dfltConcurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltConcurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 121
    return-void
.end method

.method public setDefaultTxIsolation(Lorg/apache/ignite/transactions/TransactionIsolation;)V
    .locals 0
    .param p1, "dfltIsolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltIsolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 141
    return-void
.end method

.method public setDefaultTxTimeout(J)V
    .locals 1
    .param p1, "dfltTxTimeout"    # J

    .prologue
    .line 160
    iput-wide p1, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->dfltTxTimeout:J

    .line 161
    return-void
.end method

.method public setPessimisticTxLogLinger(I)V
    .locals 0
    .param p1, "pessimisticTxLogLinger"    # I

    .prologue
    .line 203
    iput p1, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->pessimisticTxLogLinger:I

    .line 204
    return-void
.end method

.method public setPessimisticTxLogSize(I)V
    .locals 0
    .param p1, "pessimisticTxLogSize"    # I

    .prologue
    .line 182
    iput p1, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->pessimisticTxLogSize:I

    .line 183
    return-void
.end method

.method public setTxSerializableEnabled(Z)V
    .locals 0
    .param p1, "txSerEnabled"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/TransactionConfiguration;->txSerEnabled:Z

    .line 101
    return-void
.end method
