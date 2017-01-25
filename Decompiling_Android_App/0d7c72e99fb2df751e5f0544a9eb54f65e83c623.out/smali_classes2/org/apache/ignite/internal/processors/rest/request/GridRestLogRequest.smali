.class public Lorg/apache/ignite/internal/processors/rest/request/GridRestLogRequest;
.super Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
.source "GridRestLogRequest.java"


# instance fields
.field private from:I

.field private path:Ljava/lang/String;

.field private to:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;-><init>()V

    .line 30
    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestLogRequest;->from:I

    .line 33
    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestLogRequest;->to:I

    return-void
.end method


# virtual methods
.method public from()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestLogRequest;->from:I

    return v0
.end method

.method public from(I)V
    .locals 0
    .param p1, "from"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestLogRequest;->from:I

    .line 61
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestLogRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public path(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestLogRequest;->path:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public to()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestLogRequest;->to:I

    return v0
.end method

.method public to(I)V
    .locals 0
    .param p1, "to"    # I

    .prologue
    .line 74
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestLogRequest;->to:I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    const-class v0, Lorg/apache/ignite/internal/processors/rest/request/GridRestLogRequest;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
