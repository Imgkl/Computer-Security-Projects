.class public Lcom/urbanairship/http/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/http/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private lastModified:J

.field private responseBody:Ljava/lang/String;

.field private responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseMessage:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/urbanairship/http/Response$Builder;->lastModified:J

    .line 132
    iput p1, p0, Lcom/urbanairship/http/Response$Builder;->status:I

    .line 133
    return-void
.end method


# virtual methods
.method public create()Lcom/urbanairship/http/Response;
    .locals 4

    .prologue
    .line 186
    new-instance v0, Lcom/urbanairship/http/Response;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/http/Response;-><init>(Lcom/urbanairship/http/Response$1;)V

    .line 187
    .local v0, "response":Lcom/urbanairship/http/Response;
    iget v1, p0, Lcom/urbanairship/http/Response$Builder;->status:I

    invoke-static {v0, v1}, Lcom/urbanairship/http/Response;->access$102(Lcom/urbanairship/http/Response;I)I

    .line 188
    iget-object v1, p0, Lcom/urbanairship/http/Response$Builder;->responseBody:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/http/Response;->access$202(Lcom/urbanairship/http/Response;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/urbanairship/http/Response$Builder;->responseHeaders:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/urbanairship/http/Response;->access$302(Lcom/urbanairship/http/Response;Ljava/util/Map;)Ljava/util/Map;

    .line 190
    iget-object v1, p0, Lcom/urbanairship/http/Response$Builder;->responseMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/http/Response;->access$402(Lcom/urbanairship/http/Response;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    iget-wide v2, p0, Lcom/urbanairship/http/Response$Builder;->lastModified:J

    invoke-static {v0, v2, v3}, Lcom/urbanairship/http/Response;->access$502(Lcom/urbanairship/http/Response;J)J

    .line 193
    return-object v0
.end method

.method public setLastModified(J)Lcom/urbanairship/http/Response$Builder;
    .locals 1
    .param p1, "lastModified"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/urbanairship/http/Response$Builder;->lastModified:J

    .line 177
    return-object p0
.end method

.method public setResponseBody(Ljava/lang/String;)Lcom/urbanairship/http/Response$Builder;
    .locals 0
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/urbanairship/http/Response$Builder;->responseBody:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setResponseHeaders(Ljava/util/Map;)Lcom/urbanairship/http/Response$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/urbanairship/http/Response$Builder;"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/urbanairship/http/Response$Builder;->responseHeaders:Ljava/util/Map;

    .line 166
    return-object p0
.end method

.method public setResponseMessage(Ljava/lang/String;)Lcom/urbanairship/http/Response$Builder;
    .locals 0
    .param p1, "responseMessage"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/urbanairship/http/Response$Builder;->responseMessage:Ljava/lang/String;

    .line 144
    return-object p0
.end method
