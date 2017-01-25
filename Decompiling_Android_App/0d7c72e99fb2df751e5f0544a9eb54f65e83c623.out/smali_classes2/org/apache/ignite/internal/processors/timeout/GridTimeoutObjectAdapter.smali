.class public abstract Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.super Ljava/lang/Object;
.source "GridTimeoutObjectAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# instance fields
.field private final endTime:J

.field private final id:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 37
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(Lorg/apache/ignite/lang/IgniteUuid;J)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;J)V
    .locals 8
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "timeout"    # J

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v6, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 47
    cmp-long v4, p2, v6

    if-ltz v4, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, v4, p2

    .line 49
    .local v0, "endTime":J
    :goto_0
    cmp-long v4, v0, v6

    if-ltz v4, :cond_1

    .end local v0    # "endTime":J
    :goto_1
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;->endTime:J

    .line 50
    return-void

    :cond_0
    move-wide v0, v2

    .line 47
    goto :goto_0

    .restart local v0    # "endTime":J
    :cond_1
    move-wide v0, v2

    .line 49
    goto :goto_1
.end method


# virtual methods
.method public endTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;->endTime:J

    return-wide v0
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method
