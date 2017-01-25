.class Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$OrderedMessageListener;
.super Ljava/lang/Object;
.source "GridCacheIoManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrderedMessageListener"
.end annotation


# instance fields
.field private final c:Lorg/apache/ignite/lang/IgniteBiInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p2, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$OrderedMessageListener;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$OrderedMessageListener;->c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    .line 753
    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 758
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$OrderedMessageListener;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$OrderedMessageListener;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received cache ordered message [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_0
    move-object v0, p2

    .line 761
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    .line 763
    .local v0, "cacheMsg":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$OrderedMessageListener;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$OrderedMessageListener;->c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->onMessage0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    invoke-static {v1, p1, v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 764
    return-void
.end method
