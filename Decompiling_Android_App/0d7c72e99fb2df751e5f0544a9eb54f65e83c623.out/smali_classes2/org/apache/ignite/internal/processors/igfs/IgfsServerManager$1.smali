.class Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$1;
.super Ljava/lang/Object;
.source "IgfsServerManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->endpoints()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsServer;",
        "Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p1, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager$1;->apply(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .prologue
    .line 119
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->getIpcServerEndpoint()Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    move-result-object v0

    return-object v0
.end method
