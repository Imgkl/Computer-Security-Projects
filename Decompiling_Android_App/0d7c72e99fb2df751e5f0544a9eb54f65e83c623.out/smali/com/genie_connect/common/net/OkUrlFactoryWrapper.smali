.class public Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
.super Ljava/lang/Object;
.source "OkUrlFactoryWrapper.java"


# instance fields
.field private final mFactory:Lcom/squareup/okhttp/OkUrlFactory;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/OkUrlFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/squareup/okhttp/OkUrlFactory;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->mFactory:Lcom/squareup/okhttp/OkUrlFactory;

    .line 52
    return-void
.end method


# virtual methods
.method public open(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->mFactory:Lcom/squareup/okhttp/OkUrlFactory;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->mFactory:Lcom/squareup/okhttp/OkUrlFactory;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkUrlFactory;->client()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 60
    return-void
.end method
