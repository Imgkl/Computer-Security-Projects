.class public Lorg/apache/ignite/internal/client/GridClientHandshakeException;
.super Lorg/apache/ignite/internal/client/GridClientException;
.source "GridClientHandshakeException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final statusCode:B


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # B
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    .line 39
    iput-byte p1, p0, Lorg/apache/ignite/internal/client/GridClientHandshakeException;->statusCode:B

    .line 40
    return-void
.end method


# virtual methods
.method public getStatusCode()B
    .locals 1

    .prologue
    .line 46
    iget-byte v0, p0, Lorg/apache/ignite/internal/client/GridClientHandshakeException;->statusCode:B

    return v0
.end method
