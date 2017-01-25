.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;
.super Ljava/lang/Object;
.source "GridContinuousProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 247
    move-object v1, p2

    check-cast v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .line 249
    .local v1, "msg":Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->dataBytes()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$1500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->dataBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    sget-object v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$6;->$SwitchMap$org$apache$ignite$internal$processors$continuous$GridContinuousMessageType:[I

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->type()Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 292
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected message received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->type()Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$1600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to process message (ignoring): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 294
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processStartRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    invoke-static {v2, p1, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$1700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processStartAck(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    invoke-static {v2, p1, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$1800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processStopRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    invoke-static {v2, p1, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$1900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processStopAck(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    invoke-static {v2, p1, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$2000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    goto :goto_0

    .line 282
    :pswitch_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processNotification(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    invoke-static {v2, p1, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$2100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    goto :goto_0

    .line 287
    :pswitch_5
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processMessageAck(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    invoke-static {v2, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$2200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
