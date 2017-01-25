.class Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$2;
.super Ljava/lang/Object;
.source "GridClockSyncProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


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
    .line 97
    const-class v0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 6
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    .line 99
    sget-boolean v2, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$2;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move-object v0, p1

    .line 101
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 103
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 104
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->checkLaunchCoordinator(Lorg/apache/ignite/events/DiscoveryEvent;)V
    invoke-static {v2, v0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$100(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;Lorg/apache/ignite/events/DiscoveryEvent;)V

    .line 106
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->timeCoord:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;->access$200(Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;)Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;

    move-result-object v1

    .line 108
    .local v1, "timeCoord0":Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;
    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor$TimeCoordinator;->onDiscoveryEvent(Lorg/apache/ignite/events/DiscoveryEvent;)V

    .line 110
    :cond_3
    return-void
.end method
