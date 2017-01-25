.class Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;
.super Ljava/lang/Object;
.source "GridTcpMemcachedNioListener.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C2",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        "Ljava/lang/Exception;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

.field final synthetic val$cmd:Lorg/apache/ignite/internal/util/lang/GridTuple3;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

.field final synthetic val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/lang/GridTuple3;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;->this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;->val$req:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;->val$cmd:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 134
    check-cast p1, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;->apply(Lorg/apache/ignite/internal/processors/rest/GridRestResponse;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/rest/GridRestResponse;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;->this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;->val$req:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;->val$cmd:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    # invokes: Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->handleRequest0(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/lang/GridTuple3;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->access$000(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/lang/GridTuple3;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method
