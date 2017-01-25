.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;
.super Ljava/lang/Object;
.source "GridCacheDistributedQueryManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelMessageId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;",
        ">;"
    }
.end annotation


# instance fields
.field private nodeId:Ljava/util/UUID;

.field private reqId:J


# direct methods
.method private constructor <init>(JLjava/util/UUID;)V
    .locals 1
    .param p1, "reqId"    # J
    .param p3, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->reqId:J

    .line 745
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->nodeId:Ljava/util/UUID;

    .line 746
    return-void
.end method

.method synthetic constructor <init>(JLjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/UUID;
    .param p4, "x2"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$1;

    .prologue
    .line 732
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;-><init>(JLjava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 732
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->compareTo(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;)I
    .locals 6
    .param p1, "m"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;

    .prologue
    .line 750
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->reqId:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->reqId:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 752
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 753
    iget-object v1, p1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->nodeId:Ljava/util/UUID;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    .line 755
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 761
    if-ne p1, p0, :cond_1

    .line 766
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 764
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;

    .line 766
    .local v0, "other":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->reqId:J

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->reqId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->nodeId:Ljava/util/UUID;

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 771
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->reqId:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->reqId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager$CancelMessageId;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
