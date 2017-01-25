.class Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;
.super Ljava/lang/Object;
.source "GridSwapSpaceManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;->this$0:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwapEvent(ILjava/lang/String;[B[B)V
    .locals 4
    .param p1, "evtType"    # I
    .param p2, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "keyBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "valBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x5d

    .line 57
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;->this$0:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->access$000(Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 92
    sget-boolean v1, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 62
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swap space data read [space="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;->this$0:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->access$200(Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/events/SwapSpaceEvent;

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;->this$0:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    invoke-static {v3}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->access$100(Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1, p2}, Lorg/apache/ignite/events/SwapSpaceEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 100
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x4b

    if-ne p1, v1, :cond_4

    if-eqz p2, :cond_4

    .line 101
    sget-boolean v1, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 68
    .restart local v0    # "msg":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swap space data stored [space="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    goto :goto_0

    .line 74
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swap space data removed [space="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    goto :goto_0

    .line 80
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swap space cleared [space="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    goto :goto_0

    .line 86
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swap entry evicted [space="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    goto/16 :goto_0

    .line 102
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez p4, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 105
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;->this$0:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->access$300(Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onEvictFromSwap(Ljava/lang/String;[B[B)V

    .line 107
    :cond_4
    return-void

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
