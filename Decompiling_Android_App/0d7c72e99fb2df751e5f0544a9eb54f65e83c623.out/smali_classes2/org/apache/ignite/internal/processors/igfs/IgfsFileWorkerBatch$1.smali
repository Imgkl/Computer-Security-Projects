.class Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$1;
.super Ljava/lang/Object;
.source "IgfsFileWorkerBatch.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->write([B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;[B)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->out:Ljava/io/OutputStream;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$1;->val$data:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write data to the file due to secondary file system exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->path:Lorg/apache/ignite/igfs/IgfsPath;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
