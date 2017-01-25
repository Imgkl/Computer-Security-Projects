.class Lorg/apache/ignite/internal/visor/node/VisorNodeStopTask$VisorNodesStopJob$1;
.super Ljava/lang/Object;
.source "VisorNodeStopTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/visor/node/VisorNodeStopTask$VisorNodesStopJob;->run(Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/visor/node/VisorNodeStopTask$VisorNodesStopJob;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/visor/node/VisorNodeStopTask$VisorNodesStopJob;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeStopTask$VisorNodesStopJob$1;->this$0:Lorg/apache/ignite/internal/visor/node/VisorNodeStopTask$VisorNodesStopJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/ignite/Ignition;->kill(Z)V

    .line 67
    return-void
.end method
