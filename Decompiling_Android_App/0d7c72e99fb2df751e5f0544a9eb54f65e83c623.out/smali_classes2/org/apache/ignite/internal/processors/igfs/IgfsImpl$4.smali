.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$4;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->globalSampling()Ljava/lang/Boolean;
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


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->sampling()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
