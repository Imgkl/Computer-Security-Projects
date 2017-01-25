.class public Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
.super Lorg/apache/ignite/internal/client/GridClientException;
.source "GridClientConnectionResetException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method
