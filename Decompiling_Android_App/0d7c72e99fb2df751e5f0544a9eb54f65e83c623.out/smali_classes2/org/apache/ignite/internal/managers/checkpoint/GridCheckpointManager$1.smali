.class Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;
.super Ljava/lang/Object;
.source "GridCheckpointManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/checkpoint/CheckpointListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckpointRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;->this$0:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->access$100(Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;ILjava/lang/String;)V

    .line 83
    return-void
.end method
