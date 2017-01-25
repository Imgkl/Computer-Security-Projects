.class public Lorg/apache/ignite/internal/processors/cache/CachePeekModes;
.super Ljava/lang/Object;
.source "CachePeekModes.java"


# static fields
.field public static final ONHEAP_ONLY:[Lorg/apache/ignite/cache/CachePeekMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/cache/CachePeekMode;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/ignite/cache/CachePeekMode;->ONHEAP:Lorg/apache/ignite/cache/CachePeekMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CachePeekModes;->ONHEAP_ONLY:[Lorg/apache/ignite/cache/CachePeekMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
