.class Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;
.super Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;
.source "IpcToNioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadFilter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-class v0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)V
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    .line 174
    const-string v0, "HeadFilter"

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;-><init>(Ljava/lang/String;)V

    .line 175
    return-void
.end method


# virtual methods
.method public onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "ex"    # Lorg/apache/ignite/IgniteCheckedException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->proceedExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    .line 190
    return-void
.end method

.method public onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->proceedMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public onPauseReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 5
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    # getter for: Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->latchRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->access$200(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 209
    .local v0, "b":Z
    sget-boolean v1, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 211
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public onResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    # getter for: Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->latchRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->access$200(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 219
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 222
    :cond_0
    new-instance v2, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    # getter for: Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->access$000(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    move-result-object v1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    # getter for: Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->access$000(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->setClosed()Z

    move-result v0

    .line 231
    .local v0, "closed":Z
    if-eqz v0, :cond_1

    .line 232
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    # getter for: Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->endp:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->access$300(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;->close()V

    .line 234
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->proceedSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 185
    return-void
.end method

.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->proceedSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 240
    return-void
.end method

.method public onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->proceedSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 180
    return-void
.end method

.method public onSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    # getter for: Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->access$000(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    check-cast p2, Lorg/apache/ignite/plugin/extensions/communication/Message;

    .end local p2    # "msg":Ljava/lang/Object;
    # invokes: Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->send(Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    invoke-static {v0, p2}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->access$100(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>.HeadFilter;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;->proceedSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 245
    return-void
.end method
