.class Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;
.super Ljava/lang/Object;
.source "SharedFsCheckpointData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final expTime:J

.field private final host:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final state:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([BJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # [B
    .param p2, "expTime"    # J
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->state:[B

    .line 61
    iput-wide p2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->expTime:J

    .line 62
    iput-object p4, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->host:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->key:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method getExpireTime()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->expTime:J

    return-wide v0
.end method

.method getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->key:Ljava/lang/String;

    return-object v0
.end method

.method getState()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->state:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
