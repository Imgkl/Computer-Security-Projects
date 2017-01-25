.class public Lcom/github/ignition/support/http/gzip/GzipHttpResponseInterceptor;
.super Ljava/lang/Object;
.source "GzipHttpResponseInterceptor.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 20
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 21
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 22
    .local v2, "encoding":Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    .line 23
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 24
    .local v1, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 25
    new-instance v6, Lcom/github/ignition/support/http/gzip/GzipInflatingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/github/ignition/support/http/gzip/GzipInflatingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 30
    .end local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v1    # "element":Lorg/apache/http/HeaderElement;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-void

    .line 23
    .restart local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v1    # "element":Lorg/apache/http/HeaderElement;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
