.class public Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRedeployException;
.super Ljava/lang/Exception;
.source "GridCacheEntryRedeployException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
