.class Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;
.super Ljava/lang/Object;
.source "IgfsIpcHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPlainCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->handleAsync(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/lang/GridPlainCallable",
        "<",
        "Lorg/apache/ignite/internal/igfs/common/IgfsMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;

.field final synthetic val$cmd:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

.field final synthetic val$msg:Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

.field final synthetic val$ses:Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;->val$ses:Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;->val$cmd:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;->val$msg:Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

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
    .line 128
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;->call()Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;->val$ses:Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;->val$cmd:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;->val$msg:Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

    const/4 v4, 0x0

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->execute(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

    move-result-object v0

    return-object v0
.end method
