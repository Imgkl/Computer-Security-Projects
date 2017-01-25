.class public Lcom/urbanairship/http/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;
    .locals 1
    .param p1, "requestMethod"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    .line 43
    new-instance v0, Lcom/urbanairship/http/Request;

    invoke-direct {v0, p1, p2}, Lcom/urbanairship/http/Request;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    return-object v0
.end method
