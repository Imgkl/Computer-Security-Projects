.class public Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;
.super Ljava/lang/Object;
.source "GridCacheAtomicVersionComparator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)I
    .locals 13
    .param p1, "one"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "other"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "ignoreTime"    # Z

    .prologue
    .line 35
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v11

    .line 36
    .local v11, "topVer":I
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v10

    .line 38
    .local v10, "otherTopVer":I
    if-ne v11, v10, :cond_7

    .line 39
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime()J

    move-result-wide v0

    .line 40
    .local v0, "globalTime":J
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime()J

    move-result-wide v6

    .line 42
    .local v6, "otherGlobalTime":J
    cmp-long v12, v0, v6

    if-eqz v12, :cond_0

    if-eqz p3, :cond_5

    .line 43
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v2

    .line 44
    .local v2, "locOrder":J
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v8

    .line 46
    .local v8, "otherLocOrder":J
    cmp-long v12, v2, v8

    if-nez v12, :cond_3

    .line 47
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrder()I

    move-result v4

    .line 48
    .local v4, "nodeOrder":I
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrder()I

    move-result v5

    .line 50
    .local v5, "otherNodeOrder":I
    if-ne v4, v5, :cond_1

    const/4 v12, 0x0

    .line 59
    .end local v0    # "globalTime":J
    .end local v2    # "locOrder":J
    .end local v4    # "nodeOrder":I
    .end local v5    # "otherNodeOrder":I
    .end local v6    # "otherGlobalTime":J
    .end local v8    # "otherLocOrder":J
    :goto_0
    return v12

    .line 50
    .restart local v0    # "globalTime":J
    .restart local v2    # "locOrder":J
    .restart local v4    # "nodeOrder":I
    .restart local v5    # "otherNodeOrder":I
    .restart local v6    # "otherGlobalTime":J
    .restart local v8    # "otherLocOrder":J
    :cond_1
    if-ge v4, v5, :cond_2

    const/4 v12, -0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x1

    goto :goto_0

    .line 53
    .end local v4    # "nodeOrder":I
    .end local v5    # "otherNodeOrder":I
    :cond_3
    cmp-long v12, v2, v8

    if-lez v12, :cond_4

    const/4 v12, 0x1

    goto :goto_0

    :cond_4
    const/4 v12, -0x1

    goto :goto_0

    .line 56
    .end local v2    # "locOrder":J
    .end local v8    # "otherLocOrder":J
    :cond_5
    cmp-long v12, v0, v6

    if-lez v12, :cond_6

    const/4 v12, 0x1

    goto :goto_0

    :cond_6
    const/4 v12, -0x1

    goto :goto_0

    .line 59
    .end local v0    # "globalTime":J
    .end local v6    # "otherGlobalTime":J
    :cond_7
    if-le v11, v10, :cond_8

    const/4 v12, 0x1

    goto :goto_0

    :cond_8
    const/4 v12, -0x1

    goto :goto_0
.end method
