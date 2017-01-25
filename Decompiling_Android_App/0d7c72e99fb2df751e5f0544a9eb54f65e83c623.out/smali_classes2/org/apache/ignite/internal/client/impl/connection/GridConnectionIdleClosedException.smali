.class public Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException;
.super Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
.source "GridConnectionIdleClosedException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
