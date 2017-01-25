.class public Lorg/apache/ignite/internal/client/GridClientDisconnectedException;
.super Lorg/apache/ignite/internal/client/GridClientException;
.source "GridClientDisconnectedException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientException;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Lorg/apache/ignite/internal/client/GridClientException;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
