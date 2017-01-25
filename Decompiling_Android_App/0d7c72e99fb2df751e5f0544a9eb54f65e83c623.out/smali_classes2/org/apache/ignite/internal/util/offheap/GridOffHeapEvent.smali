.class public final enum Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;
.super Ljava/lang/Enum;
.source "GridOffHeapEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

.field public static final enum ALLOCATE:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

.field public static final enum REHASH:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

.field public static final enum RELEASE:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

.field private static final VALS:[Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    const-string v1, "REHASH"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->REHASH:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    .line 30
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    const-string v1, "ALLOCATE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->ALLOCATE:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->RELEASE:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    sget-object v1, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->REHASH:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->ALLOCATE:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->RELEASE:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->$VALUES:[Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    .line 36
    invoke-static {}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->values()[Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->VALS:[Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 45
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->VALS:[Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->VALS:[Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->$VALUES:[Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    return-object v0
.end method
