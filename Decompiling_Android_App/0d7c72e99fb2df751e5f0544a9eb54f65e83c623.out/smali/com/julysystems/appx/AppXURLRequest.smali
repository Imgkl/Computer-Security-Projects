.class abstract Lcom/julysystems/appx/AppXURLRequest;
.super Ljava/lang/Object;
.source "AppXURLRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static cookieHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final cookies:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected cacheDuration:I

.field protected cancelled:Z

.field protected conn:Ljava/net/HttpURLConnection;

.field protected forceRequest:Z

.field protected httpClient:Lorg/apache/http/client/HttpClient;

.field protected method:Lorg/apache/http/client/methods/HttpGet;

.field protected postParams:Ljava/lang/String;

.field protected requestStateListner:Lcom/julysystems/appx/AppXRequestStateListner;

.field public start:J

.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXURLRequest;->cookies:Ljava/util/Hashtable;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXURLRequest;->cookieHeaders:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheDuration"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/julysystems/appx/AppXURLRequest;->requestStateListner:Lcom/julysystems/appx/AppXRequestStateListner;

    .line 21
    iput-object v1, p0, Lcom/julysystems/appx/AppXURLRequest;->postParams:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lcom/julysystems/appx/AppXURLRequest;->cancelled:Z

    .line 25
    iput-boolean v0, p0, Lcom/julysystems/appx/AppXURLRequest;->forceRequest:Z

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/julysystems/appx/AppXURLRequest;->start:J

    .line 53
    iput-object p1, p0, Lcom/julysystems/appx/AppXURLRequest;->url:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/julysystems/appx/AppXURLRequest;->cacheDuration:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postParams"    # Ljava/lang/String;
    .param p3, "cacheDuration"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/julysystems/appx/AppXURLRequest;->requestStateListner:Lcom/julysystems/appx/AppXRequestStateListner;

    .line 21
    iput-object v1, p0, Lcom/julysystems/appx/AppXURLRequest;->postParams:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lcom/julysystems/appx/AppXURLRequest;->cancelled:Z

    .line 25
    iput-boolean v0, p0, Lcom/julysystems/appx/AppXURLRequest;->forceRequest:Z

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/julysystems/appx/AppXURLRequest;->start:J

    .line 48
    iput-object p1, p0, Lcom/julysystems/appx/AppXURLRequest;->url:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/julysystems/appx/AppXURLRequest;->postParams:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/julysystems/appx/AppXURLRequest;->cacheDuration:I

    .line 51
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequest;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXURLRequest;->conn:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXURLRequest;->cancelled:Z

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 117
    if-ne p0, p1, :cond_0

    .line 118
    const/4 v1, 0x1

    .line 123
    :goto_0
    return v1

    .line 119
    :cond_0
    instance-of v1, p1, Lcom/julysystems/appx/AppXURLRequest;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/julysystems/appx/AppXURLRequest;

    .line 121
    .local v0, "r":Lcom/julysystems/appx/AppXURLRequest;
    iget-object v1, v0, Lcom/julysystems/appx/AppXURLRequest;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/julysystems/appx/AppXURLRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 123
    .end local v0    # "r":Lcom/julysystems/appx/AppXURLRequest;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCacheDuration()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/julysystems/appx/AppXURLRequest;->cacheDuration:I

    return v0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequest;->conn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequest;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public getMethod()Lorg/apache/http/client/methods/HttpGet;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequest;->method:Lorg/apache/http/client/methods/HttpGet;

    return-object v0
.end method

.method public getRequestStateListner()Lcom/julysystems/appx/AppXRequestStateListner;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequest;->requestStateListner:Lcom/julysystems/appx/AppXRequestStateListner;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/julysystems/appx/AppXURLRequest;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXURLRequest;->cancelled:Z

    return v0
.end method

.method public isForceRequest()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXURLRequest;->forceRequest:Z

    return v0
.end method

.method public abstract onFailure()V
.end method

.method public abstract postExecute()V
.end method

.method public abstract processData([BZ)Z
.end method

.method public run()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXURLRequest;->postExecute()V

    .line 128
    return-void
.end method

.method public setConnection(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/julysystems/appx/AppXURLRequest;->conn:Ljava/net/HttpURLConnection;

    .line 65
    return-void
.end method

.method public setForceRequest(Z)V
    .locals 0
    .param p1, "forceRequest"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/julysystems/appx/AppXURLRequest;->forceRequest:Z

    .line 100
    return-void
.end method

.method public setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/julysystems/appx/AppXURLRequest;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 41
    return-void
.end method

.method public setMethod(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 0
    .param p1, "method"    # Lorg/apache/http/client/methods/HttpGet;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/julysystems/appx/AppXURLRequest;->method:Lorg/apache/http/client/methods/HttpGet;

    .line 45
    return-void
.end method

.method public setRequestStateListner(Lcom/julysystems/appx/AppXRequestStateListner;)V
    .locals 0
    .param p1, "requestStateListner"    # Lcom/julysystems/appx/AppXRequestStateListner;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/julysystems/appx/AppXURLRequest;->requestStateListner:Lcom/julysystems/appx/AppXRequestStateListner;

    .line 104
    return-void
.end method
