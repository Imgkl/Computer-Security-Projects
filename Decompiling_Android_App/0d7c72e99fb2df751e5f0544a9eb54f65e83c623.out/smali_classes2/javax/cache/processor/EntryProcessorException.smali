.class public Ljavax/cache/processor/EntryProcessorException;
.super Ljavax/cache/CacheException;
.source "EntryProcessorException.java"


# static fields
.field private static final serialVersionUID:J = 0x124f12803ec8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljavax/cache/CacheException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method
