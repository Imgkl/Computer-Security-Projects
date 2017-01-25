.class Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;
.super Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;
.source "GridNioFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TailFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;)V
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    .line 238
    const-string v0, "TailFilter"

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;-><init>(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$1;

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;)V

    return-void
.end method


# virtual methods
.method public onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "ex"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 253
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    # getter for: Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->access$100(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;)Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServerListener;->onDisconnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Exception;)V

    .line 254
    return-void
.end method

.method public onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 269
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    # getter for: Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->access$100(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;)Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServerListener;->onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public onPauseReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
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
    .line 284
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->proceedPauseReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
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
    .line 289
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->proceedResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->proceedSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 248
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    # getter for: Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->access$100(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;)Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServerListener;->onDisconnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Exception;)V

    .line 249
    return-void
.end method

.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    # getter for: Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->access$100(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;)Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServerListener;->onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 275
    return-void
.end method

.method public onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 243
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    # getter for: Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->access$100(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;)Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServerListener;->onConnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 244
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->proceedSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain<TT;>.TailFilter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain$TailFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    # getter for: Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->lsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->access$100(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;)Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServerListener;->onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 280
    return-void
.end method
