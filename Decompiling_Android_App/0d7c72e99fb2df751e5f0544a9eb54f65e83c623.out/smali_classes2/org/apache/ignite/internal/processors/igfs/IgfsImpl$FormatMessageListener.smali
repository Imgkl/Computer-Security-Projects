.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatMessageListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1969
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V
    .locals 0

    .prologue
    .line 1969
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;

    .prologue
    .line 1969
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 1973
    instance-of v4, p2, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;

    if-eqz v4, :cond_0

    .line 1974
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 1976
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v3, :cond_0

    .line 1977
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    const-string v4, "org.apache.ignite.igfs"

    invoke-interface {v3, v4}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    check-cast v4, [Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->sameIgfs([Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;)Z
    invoke-static {v5, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, p2

    .line 1978
    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;

    .line 1981
    .local v2, "msg0":Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->finishUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1989
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to unmarshal message (will ignore): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2002
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "msg0":Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_0
    :goto_0
    return-void

    .line 1991
    .restart local v2    # "msg0":Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;
    .restart local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delFuts:Lorg/jsr166/ConcurrentHashMap8;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$3000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/jsr166/ConcurrentHashMap8;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1993
    .local v1, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    if-eqz v1, :cond_0

    .line 1994
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->error()Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1995
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto :goto_0

    .line 1997
    :cond_2
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->error()Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
