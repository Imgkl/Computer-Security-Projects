.class Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$1;
.super Ljava/lang/Object;
.source "GridClockSyncProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 86
    sget-boolean v2, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$1;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, p2, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move-object v0, p2

    .line 88
    check-cast v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;

    .line 90
    .local v0, "msg0":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->snapshotVersion()Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    move-result-object v1

    .line 92
    .local v1, "ver":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeSyncHist:Ljava/util/NavigableMap;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$000(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Ljava/util/NavigableMap;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->deltas()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;-><init>(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;Ljava/util/Map;)V

    invoke-interface {v2, v1, v3}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method
