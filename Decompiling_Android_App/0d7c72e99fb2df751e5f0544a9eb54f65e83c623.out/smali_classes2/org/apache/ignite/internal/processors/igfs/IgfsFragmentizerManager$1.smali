.class Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$1;
.super Ljava/lang/Object;
.source "IgfsFragmentizerManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->start0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 3
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 88
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 90
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 92
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->checkLaunchCoordinator(Lorg/apache/ignite/events/DiscoveryEvent;)V
    invoke-static {v1, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Lorg/apache/ignite/events/DiscoveryEvent;)V

    .line 93
    return-void
.end method
