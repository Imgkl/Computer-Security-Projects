.class public final enum Lorg/apache/ignite/igfs/IgfsMode;
.super Ljava/lang/Enum;
.source "IgfsMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/igfs/IgfsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/igfs/IgfsMode;

.field public static final enum DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

.field public static final enum DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

.field public static final enum PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

.field public static final enum PROXY:Lorg/apache/ignite/igfs/IgfsMode;

.field private static final VALS:[Lorg/apache/ignite/igfs/IgfsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lorg/apache/ignite/igfs/IgfsMode;

    const-string v1, "PRIMARY"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/igfs/IgfsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    .line 44
    new-instance v0, Lorg/apache/ignite/igfs/IgfsMode;

    const-string v1, "PROXY"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/igfs/IgfsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    .line 55
    new-instance v0, Lorg/apache/ignite/igfs/IgfsMode;

    const-string v1, "DUAL_SYNC"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/igfs/IgfsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    .line 66
    new-instance v0, Lorg/apache/ignite/igfs/IgfsMode;

    const-string v1, "DUAL_ASYNC"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/igfs/IgfsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/igfs/IgfsMode;

    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/igfs/IgfsMode;->$VALUES:[Lorg/apache/ignite/igfs/IgfsMode;

    .line 69
    invoke-static {}, Lorg/apache/ignite/igfs/IgfsMode;->values()[Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/igfs/IgfsMode;->VALS:[Lorg/apache/ignite/igfs/IgfsMode;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 78
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->VALS:[Lorg/apache/ignite/igfs/IgfsMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->VALS:[Lorg/apache/ignite/igfs/IgfsMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/igfs/IgfsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->$VALUES:[Lorg/apache/ignite/igfs/IgfsMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/igfs/IgfsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/igfs/IgfsMode;

    return-object v0
.end method
