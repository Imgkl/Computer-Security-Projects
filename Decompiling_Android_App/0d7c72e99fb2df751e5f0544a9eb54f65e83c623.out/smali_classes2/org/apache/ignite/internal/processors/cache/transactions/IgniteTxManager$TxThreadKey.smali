.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;
.super Ljava/lang/Object;
.source "IgniteTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TxThreadKey"
.end annotation


# instance fields
.field private cacheId:I

.field private threadId:J


# direct methods
.method private constructor <init>(JI)V
    .locals 1
    .param p1, "threadId"    # J
    .param p3, "cacheId"    # I

    .prologue
    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2088
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;->threadId:J

    .line 2089
    iput p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;->cacheId:I

    .line 2090
    return-void
.end method

.method synthetic constructor <init>(JILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;

    .prologue
    .line 2076
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2094
    if-ne p0, p1, :cond_1

    .line 2102
    :cond_0
    :goto_0
    return v1

    .line 2097
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 2098
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2100
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;

    .line 2102
    .local v0, "that":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;->cacheId:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;->cacheId:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;->threadId:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;->threadId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 2107
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;->threadId:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;->threadId:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 2109
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;->cacheId:I

    add-int v0, v1, v2

    .line 2111
    return v0
.end method
