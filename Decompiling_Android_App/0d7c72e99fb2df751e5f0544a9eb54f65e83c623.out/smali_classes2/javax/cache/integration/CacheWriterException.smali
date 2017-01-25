.class public Ljavax/cache/integration/CacheWriterException;
.super Ljavax/cache/CacheException;
.source "CacheWriterException.java"


# static fields
.field private static final serialVersionUID:J = 0x124f128104ccL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljavax/cache/CacheException;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method
