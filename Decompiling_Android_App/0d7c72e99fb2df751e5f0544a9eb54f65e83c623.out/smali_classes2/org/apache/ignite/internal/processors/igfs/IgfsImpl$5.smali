.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->exists(Lorg/apache/ignite/igfs/IgfsPath;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 458
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 460
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check file exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 463
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v0

    .line 465
    .local v0, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    const/4 v1, 0x0

    .line 467
    .local v1, "res":Z
    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$22;->$SwitchMap$org$apache$ignite$igfs$IgfsMode:[I

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 483
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Unknown mode."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 469
    :pswitch_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 486
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_2
    move v1, v3

    .line 469
    goto :goto_0

    .line 475
    :pswitch_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 477
    :goto_1
    if-nez v1, :cond_1

    .line 478
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {v2, v3}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->exists(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v3

    .line 475
    goto :goto_1

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
