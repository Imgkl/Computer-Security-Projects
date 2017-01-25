.class Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;
.super Lorg/apache/ignite/internal/util/typedef/CIX1;
.source "IgfsServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->body()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CIX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/igfs/common/IgfsMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;

.field final synthetic val$reqId:J


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;J)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;

    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;->val$reqId:J

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CIX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 332
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/igfs/common/IgfsMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .local v2, "res":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;)Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 347
    :try_start_2
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;->val$reqId:J

    invoke-virtual {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v3

    invoke-static {v6, v7, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->createHeader(JLorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;)[B

    move-result-object v1

    .line 349
    .local v1, "hdr":[B
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->marsh:Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;)Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    move-result-object v5

    invoke-virtual {v3, v2, v1, v5}, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->marshall(Lorg/apache/ignite/internal/igfs/common/IgfsMessage;[BLjava/io/ObjectOutput;)V

    .line 351
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;)Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;->flush()V

    .line 352
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    .end local v1    # "hdr":[B
    :goto_1
    return-void

    .line 339
    .end local v2    # "res":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    invoke-direct {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;-><init>()V

    .restart local v2    # "res":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    move-object v3, v2

    .line 342
    check-cast v3, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->error(Lorg/apache/ignite/IgniteCheckedException;)V

    goto :goto_0

    .line 352
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 354
    :catch_1
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->shutdown0(Ljava/lang/Throwable;)V
    invoke-static {v3, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_2
.end method
