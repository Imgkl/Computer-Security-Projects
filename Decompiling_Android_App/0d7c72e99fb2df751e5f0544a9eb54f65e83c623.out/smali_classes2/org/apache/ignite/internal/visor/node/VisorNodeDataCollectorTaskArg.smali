.class public Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;
.super Ljava/lang/Object;
.source "VisorNodeDataCollectorTaskArg.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private evtOrderKey:Ljava/lang/String;

.field private evtThrottleCntrKey:Ljava/lang/String;

.field private sample:I

.field private sysCaches:Z

.field private taskMonitoringEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "taskMonitoringEnabled"    # Z
    .param p2, "evtOrderKey"    # Ljava/lang/String;
    .param p3, "evtThrottleCntrKey"    # Ljava/lang/String;
    .param p4, "sample"    # I
    .param p5, "sysCaches"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->taskMonitoringEnabled:Z

    .line 68
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->evtOrderKey:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->evtThrottleCntrKey:Ljava/lang/String;

    .line 70
    iput p4, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->sample:I

    .line 71
    iput-boolean p5, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->sysCaches:Z

    .line 72
    return-void
.end method


# virtual methods
.method public eventsOrderKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->evtOrderKey:Ljava/lang/String;

    return-object v0
.end method

.method public eventsOrderKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "evtOrderKey"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->evtOrderKey:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public eventsThrottleCounterKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->evtThrottleCntrKey:Ljava/lang/String;

    return-object v0
.end method

.method public eventsThrottleCounterKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "evtThrottleCntrKey"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->evtThrottleCntrKey:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public sample()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->sample:I

    return v0
.end method

.method public sample(I)V
    .locals 0
    .param p1, "sample"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->sample:I

    .line 128
    return-void
.end method

.method public systemCaches(Z)V
    .locals 0
    .param p1, "sysCaches"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->sysCaches:Z

    .line 142
    return-void
.end method

.method public systemCaches()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->sysCaches:Z

    return v0
.end method

.method public taskMonitoringEnabled(Z)V
    .locals 0
    .param p1, "taskMonitoringEnabled"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->taskMonitoringEnabled:Z

    .line 86
    return-void
.end method

.method public taskMonitoringEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->taskMonitoringEnabled:Z

    return v0
.end method
