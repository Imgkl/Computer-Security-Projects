.class public final enum Lorg/apache/ignite/cache/CachePeekMode;
.super Ljava/lang/Enum;
.source "CachePeekMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/cache/CachePeekMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/cache/CachePeekMode;

.field public static final enum ALL:Lorg/apache/ignite/cache/CachePeekMode;

.field public static final enum BACKUP:Lorg/apache/ignite/cache/CachePeekMode;

.field public static final enum NEAR:Lorg/apache/ignite/cache/CachePeekMode;

.field public static final enum OFFHEAP:Lorg/apache/ignite/cache/CachePeekMode;

.field public static final enum ONHEAP:Lorg/apache/ignite/cache/CachePeekMode;

.field public static final enum PRIMARY:Lorg/apache/ignite/cache/CachePeekMode;

.field public static final enum SWAP:Lorg/apache/ignite/cache/CachePeekMode;

.field private static final VALS:[Lorg/apache/ignite/cache/CachePeekMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lorg/apache/ignite/cache/CachePeekMode;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/cache/CachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CachePeekMode;->ALL:Lorg/apache/ignite/cache/CachePeekMode;

    .line 49
    new-instance v0, Lorg/apache/ignite/cache/CachePeekMode;

    const-string v1, "NEAR"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/cache/CachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CachePeekMode;->NEAR:Lorg/apache/ignite/cache/CachePeekMode;

    .line 55
    new-instance v0, Lorg/apache/ignite/cache/CachePeekMode;

    const-string v1, "PRIMARY"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/cache/CachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CachePeekMode;->PRIMARY:Lorg/apache/ignite/cache/CachePeekMode;

    .line 61
    new-instance v0, Lorg/apache/ignite/cache/CachePeekMode;

    const-string v1, "BACKUP"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/cache/CachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CachePeekMode;->BACKUP:Lorg/apache/ignite/cache/CachePeekMode;

    .line 64
    new-instance v0, Lorg/apache/ignite/cache/CachePeekMode;

    const-string v1, "ONHEAP"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/cache/CachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CachePeekMode;->ONHEAP:Lorg/apache/ignite/cache/CachePeekMode;

    .line 67
    new-instance v0, Lorg/apache/ignite/cache/CachePeekMode;

    const-string v1, "OFFHEAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/cache/CachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CachePeekMode;->OFFHEAP:Lorg/apache/ignite/cache/CachePeekMode;

    .line 70
    new-instance v0, Lorg/apache/ignite/cache/CachePeekMode;

    const-string v1, "SWAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/cache/CachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CachePeekMode;->SWAP:Lorg/apache/ignite/cache/CachePeekMode;

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/ignite/cache/CachePeekMode;

    sget-object v1, Lorg/apache/ignite/cache/CachePeekMode;->ALL:Lorg/apache/ignite/cache/CachePeekMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/cache/CachePeekMode;->NEAR:Lorg/apache/ignite/cache/CachePeekMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/cache/CachePeekMode;->PRIMARY:Lorg/apache/ignite/cache/CachePeekMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/cache/CachePeekMode;->BACKUP:Lorg/apache/ignite/cache/CachePeekMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/cache/CachePeekMode;->ONHEAP:Lorg/apache/ignite/cache/CachePeekMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/cache/CachePeekMode;->OFFHEAP:Lorg/apache/ignite/cache/CachePeekMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/cache/CachePeekMode;->SWAP:Lorg/apache/ignite/cache/CachePeekMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/cache/CachePeekMode;->$VALUES:[Lorg/apache/ignite/cache/CachePeekMode;

    .line 73
    invoke-static {}, Lorg/apache/ignite/cache/CachePeekMode;->values()[Lorg/apache/ignite/cache/CachePeekMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/cache/CachePeekMode;->VALS:[Lorg/apache/ignite/cache/CachePeekMode;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(B)Lorg/apache/ignite/cache/CachePeekMode;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 82
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CachePeekMode;->VALS:[Lorg/apache/ignite/cache/CachePeekMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CachePeekMode;->VALS:[Lorg/apache/ignite/cache/CachePeekMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/cache/CachePeekMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lorg/apache/ignite/cache/CachePeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CachePeekMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/cache/CachePeekMode;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/apache/ignite/cache/CachePeekMode;->$VALUES:[Lorg/apache/ignite/cache/CachePeekMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/cache/CachePeekMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/cache/CachePeekMode;

    return-object v0
.end method
