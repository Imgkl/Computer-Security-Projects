.class Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;
.super Ljava/lang/Object;
.source "SharedFsTimeData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private expTime:J

.field private key:Ljava/lang/String;

.field private lastAcsTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(JJLjava/lang/String;)V
    .locals 5
    .param p1, "expTime"    # J
    .param p3, "lastAcsTime"    # J
    .param p5, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    iput-wide p3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->lastAcsTime:J

    .line 49
    iput-wide p1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->expTime:J

    .line 50
    iput-object p5, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->key:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method getExpireTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->expTime:J

    return-wide v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->key:Ljava/lang/String;

    return-object v0
.end method

.method getLastAccessTime()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->lastAcsTime:J

    return-wide v0
.end method

.method setExpireTime(J)V
    .locals 3
    .param p1, "expTime"    # J

    .prologue
    .line 68
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->expTime:J

    .line 71
    return-void
.end method

.method setLastAccessTime(J)V
    .locals 3
    .param p1, "lastAcsTime"    # J

    .prologue
    .line 89
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->lastAcsTime:J

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
