.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
.super Ljava/lang/Object;
.source "GridDhtCacheEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderId"
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

.field private static final READER_ID_SIZE:I = 0x18


# instance fields
.field private msgId:J

.field private nodeId:Ljava/util/UUID;

.field private txFut:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->EMPTY_ARRAY:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    return-void
.end method

.method constructor <init>(Ljava/util/UUID;J)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msgId"    # J

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->nodeId:Ljava/util/UUID;

    .line 693
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->msgId:J

    .line 694
    return-void
.end method

.method static synthetic access$000()[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->EMPTY_ARRAY:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 751
    if-ne p0, p1, :cond_1

    .line 759
    :cond_0
    :goto_0
    return v1

    .line 754
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    if-nez v3, :cond_2

    move v1, v2

    .line 755
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 757
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 759
    .local v0, "readerId":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->msgId:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->msgId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->nodeId:Ljava/util/UUID;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->nodeId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method getOrCreateTxFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;
    .locals 1
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 722
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->txFut:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    if-nez v0, :cond_0

    .line 723
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->txFut:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    .line 725
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->txFut:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 764
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 766
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->msgId:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->msgId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 768
    return v0
.end method

.method messageId()J
    .locals 2

    .prologue
    .line 707
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->msgId:J

    return-wide v0
.end method

.method messageId(J)V
    .locals 1
    .param p1, "msgId"    # J

    .prologue
    .line 714
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->msgId:J

    .line 715
    return-void
.end method

.method nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method resetTxFuture()Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->txFut:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    .line 743
    .local v0, "txFut":Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->txFut:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    .line 745
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method txFuture()Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->txFut:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    return-object v0
.end method
