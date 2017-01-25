.class public Lorg/apache/ignite/cache/CacheServerNotFoundException;
.super Ljavax/cache/CacheException;
.source "CacheServerNotFoundException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method
