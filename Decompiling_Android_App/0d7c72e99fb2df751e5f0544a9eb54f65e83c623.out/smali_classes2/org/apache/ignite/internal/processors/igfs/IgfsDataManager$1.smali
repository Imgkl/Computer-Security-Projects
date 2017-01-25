.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;
.super Ljava/lang/Object;
.source "IgfsDataManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->start0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 158
    instance-of v0, p2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    check-cast p2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    .end local p2    # "msg":Ljava/lang/Object;
    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processBlocksMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    check-cast p2, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;

    .end local p2    # "msg":Ljava/lang/Object;
    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processAckMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$300(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;)V

    goto :goto_0
.end method
