.class Lcom/github/ignition/support/http/HttpDelete;
.super Lcom/github/ignition/support/http/IgnitedHttpRequestBase;
.source "HttpDelete.java"


# direct methods
.method constructor <init>(Lcom/github/ignition/support/http/IgnitedHttp;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "ignitedHttp"    # Lcom/github/ignition/support/http/IgnitedHttp;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/ignition/support/http/IgnitedHttp;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "defaultHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/github/ignition/support/http/IgnitedHttpRequestBase;-><init>(Lcom/github/ignition/support/http/IgnitedHttp;)V

    .line 24
    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/github/ignition/support/http/HttpDelete;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 25
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    .local v0, "header":Ljava/lang/String;
    iget-object v3, p0, Lcom/github/ignition/support/http/HttpDelete;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    .end local v0    # "header":Ljava/lang/String;
    :cond_0
    return-void
.end method
