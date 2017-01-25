.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$3;
.super Ljava/lang/Object;
.source "GridContinuousProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startRoutine(Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZLorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
    .line 466
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 468
    move-object v1, p2

    check-cast v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .line 471
    .local v1, "msg":Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$3;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->type()Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_EVT_NOTIFICATION:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 473
    :cond_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->dataBytes()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 475
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

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

    .line 484
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processNotification(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    invoke-static {v2, p1, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$2100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    .line 485
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$3900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;

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

    goto :goto_0
.end method
