.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
.source "IgfsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->newBatch(Lorg/apache/ignite/igfs/IgfsPath;Ljava/io/OutputStream;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFinish()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->workerMap:Lorg/jsr166/ConcurrentHashMap8;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/jsr166/ConcurrentHashMap8;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v1, p0}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    return-void
.end method
