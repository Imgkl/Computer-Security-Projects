.class public Lorg/apache/ignite/spi/checkpoint/noop/NoopCheckpointSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "NoopCheckpointSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiNoop;
.end annotation


# instance fields
.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public loadCheckpoint(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCheckpoint(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public saveCheckpoint(Ljava/lang/String;[BJZ)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # [B
    .param p3, "timeout"    # J
    .param p5, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckpointListener(Lorg/apache/ignite/spi/checkpoint/CheckpointListener;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .prologue
    .line 67
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/noop/NoopCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Checkpoints are disabled (to enable configure any GridCheckpointSpi implementation)"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public spiStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/apache/ignite/spi/checkpoint/noop/NoopCheckpointSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
