.class Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;
.super Lorg/apache/ignite/internal/util/typedef/CIX1;
.source "GridTcpMemcachedNioListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->handleRequest0(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/lang/GridTuple3;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CIX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

.field final synthetic val$cmd:Lorg/apache/ignite/internal/util/lang/GridTuple3;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

.field final synthetic val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;Lorg/apache/ignite/internal/util/lang/GridTuple3;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$cmd:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$req:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CIX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 169
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 171
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    .line 174
    .local v5, "restRes":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$cmd:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_METRICS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    if-ne v6, v9, :cond_2

    .line 175
    sget-boolean v6, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 177
    :cond_0
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->map()Ljava/util/Map;

    move-result-object v2

    .line 179
    .local v2, "metrics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v3, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$req:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    invoke-direct {v3, v6}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;-><init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)V

    .line 182
    .local v3, "res":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key(Ljava/lang/Object;)V

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value(Ljava/lang/Object;)V

    .line 186
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    # invokes: Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->sendResponse(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    invoke-static {v6, v7, v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->access$100(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_0

    .line 189
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "res":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$req:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    invoke-direct {v8, v9}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;-><init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)V

    # invokes: Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->sendResponse(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    invoke-static {v6, v7, v8}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->access$100(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 235
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "metrics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_1
    return-void

    .line 192
    :cond_2
    new-instance v3, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$req:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    invoke-direct {v3, v6}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;-><init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)V

    .line 194
    .restart local v3    # "res":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getSuccessStatus()I

    move-result v6

    if-nez v6, :cond_7

    .line 195
    sget-object v9, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$3;->$SwitchMap$org$apache$ignite$internal$processors$rest$GridRestCommand:[I

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$cmd:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ordinal()I

    move-result v6

    aget v6, v9, v6

    packed-switch v6, :pswitch_data_0

    .line 217
    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->status(I)V

    .line 226
    :goto_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$cmd:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 227
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$req:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key(Ljava/lang/Object;)V

    .line 229
    :cond_3
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getSuccessStatus()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->addData()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 231
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value(Ljava/lang/Object;)V

    .line 233
    :cond_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    # invokes: Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->sendResponse(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    invoke-static {v6, v7, v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->access$100(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_1

    .line 197
    :pswitch_0
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->status(I)V

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_3

    .line 209
    :pswitch_1
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 211
    .local v4, "res0":Z
    if-eqz v4, :cond_6

    :goto_4
    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->status(I)V

    goto :goto_2

    :cond_6
    move v7, v8

    goto :goto_4

    .line 224
    .end local v4    # "res0":Z
    :cond_7
    invoke-virtual {v3, v8}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->status(I)V

    goto :goto_2

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
