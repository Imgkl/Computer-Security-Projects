.class Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;
.super Ljava/lang/Thread;
.source "GridJavaProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridJavaProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessStreamGrabber"
.end annotation


# instance fields
.field private final printC:Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final streamToGrab:Ljava/io/InputStream;

.field final synthetic this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridJavaProcess;Ljava/io/InputStream;Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 0
    .param p2, "streamToGrab"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p3, "printC":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 209
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->streamToGrab:Ljava/io/InputStream;

    .line 210
    iput-object p3, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->printC:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 211
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 254
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;

    # getter for: Lorg/apache/ignite/internal/util/GridJavaProcess;->proc:Ljava/lang/Process;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridJavaProcess;->access$200(Lorg/apache/ignite/internal/util/GridJavaProcess;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 255
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;

    # getter for: Lorg/apache/ignite/internal/util/GridJavaProcess;->proc:Ljava/lang/Process;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridJavaProcess;->access$200(Lorg/apache/ignite/internal/util/GridJavaProcess;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 256
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;

    # getter for: Lorg/apache/ignite/internal/util/GridJavaProcess;->proc:Ljava/lang/Process;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridJavaProcess;->access$200(Lorg/apache/ignite/internal/util/GridJavaProcess;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 257
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 218
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->streamToGrab:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 222
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 223
    const-string v4, "my_pid_is:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;

    const-string v5, "my_pid_is:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lorg/apache/ignite/internal/util/GridJavaProcess;->pid:Ljava/lang/String;
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/GridJavaProcess;->access$002(Lorg/apache/ignite/internal/util/GridJavaProcess;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;

    # getter for: Lorg/apache/ignite/internal/util/GridJavaProcess;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/GridJavaProcess;->access$100(Lorg/apache/ignite/internal/util/GridJavaProcess;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    const-string v5, "Caught IOException while grabbing stream"

    invoke-static {v4, v5, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 235
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;

    # getter for: Lorg/apache/ignite/internal/util/GridJavaProcess;->proc:Ljava/lang/Process;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/GridJavaProcess;->access$200(Lorg/apache/ignite/internal/util/GridJavaProcess;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    .line 237
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;

    # getter for: Lorg/apache/ignite/internal/util/GridJavaProcess;->procKilledC:Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/GridJavaProcess;->access$300(Lorg/apache/ignite/internal/util/GridJavaProcess;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 238
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;

    # getter for: Lorg/apache/ignite/internal/util/GridJavaProcess;->procKilledC:Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/GridJavaProcess;->access$300(Lorg/apache/ignite/internal/util/GridJavaProcess;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/lang/GridAbsClosure;->apply()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 226
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->printC:Lorg/apache/ignite/lang/IgniteInClosure;

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->printC:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-interface {v4, v3}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 240
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 241
    .local v2, "e1":Ljava/lang/IllegalThreadStateException;
    invoke-static {}, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->interrupted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->this$0:Lorg/apache/ignite/internal/util/GridJavaProcess;

    # getter for: Lorg/apache/ignite/internal/util/GridJavaProcess;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/GridJavaProcess;->access$100(Lorg/apache/ignite/internal/util/GridJavaProcess;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    const-string v5, "Failed to get exit value from process."

    invoke-static {v4, v5, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
