.class public Ljavax/cache/event/CacheEntryListenerException;
.super Ljavax/cache/CacheException;
.source "CacheEntryListenerException.java"


# static fields
.field private static final serialVersionUID:J = 0x124f06853786L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljavax/cache/CacheException;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method
