.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpi.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)V
    .locals 0

    .prologue
    .line 1428
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1428
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1430
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    new-instance v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iget-object v4, v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$1800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)Ljava/io/File;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->name:Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$1900(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".left"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iget-object v4, v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$2000(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;-><init>(Ljava/io/File;I)V

    # setter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$202(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    .line 1432
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    new-instance v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iget-object v4, v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$1800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)Ljava/io/File;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->name:Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$1900(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".right"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iget-object v4, v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$2000(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;-><init>(Ljava/io/File;I)V

    # setter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$302(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    .line 1434
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1436
    .local v5, "mux":Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iget-object v0, v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$2100(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v2

    .line 1438
    .local v2, "gridName":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    new-instance v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swap writer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->name:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$1900(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iget-object v1, v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$2300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    # setter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->writer:Ljava/lang/Thread;
    invoke-static {v6, v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2202(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1457
    iget-object v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    new-instance v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swap compactor: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->name:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$1900(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iget-object v1, v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$2300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    # setter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->compactor:Ljava/lang/Thread;
    invoke-static {v6, v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2602(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1517
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->writer:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1518
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->compactor:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1520
    const/4 v0, 0x0

    return-object v0
.end method
