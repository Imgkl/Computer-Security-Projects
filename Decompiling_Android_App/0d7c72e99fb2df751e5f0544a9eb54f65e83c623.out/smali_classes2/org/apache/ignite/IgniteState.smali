.class public final enum Lorg/apache/ignite/IgniteState;
.super Ljava/lang/Enum;
.source "IgniteState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/IgniteState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/IgniteState;

.field public static final enum STARTED:Lorg/apache/ignite/IgniteState;

.field public static final enum STOPPED:Lorg/apache/ignite/IgniteState;

.field public static final enum STOPPED_ON_SEGMENTATION:Lorg/apache/ignite/IgniteState;

.field private static final VALS:[Lorg/apache/ignite/IgniteState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lorg/apache/ignite/IgniteState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/IgniteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/IgniteState;->STARTED:Lorg/apache/ignite/IgniteState;

    .line 37
    new-instance v0, Lorg/apache/ignite/IgniteState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/IgniteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/IgniteState;->STOPPED:Lorg/apache/ignite/IgniteState;

    .line 46
    new-instance v0, Lorg/apache/ignite/IgniteState;

    const-string v1, "STOPPED_ON_SEGMENTATION"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/IgniteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/IgniteState;->STOPPED_ON_SEGMENTATION:Lorg/apache/ignite/IgniteState;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/IgniteState;

    sget-object v1, Lorg/apache/ignite/IgniteState;->STARTED:Lorg/apache/ignite/IgniteState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/IgniteState;->STOPPED:Lorg/apache/ignite/IgniteState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/IgniteState;->STOPPED_ON_SEGMENTATION:Lorg/apache/ignite/IgniteState;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/IgniteState;->$VALUES:[Lorg/apache/ignite/IgniteState;

    .line 49
    invoke-static {}, Lorg/apache/ignite/IgniteState;->values()[Lorg/apache/ignite/IgniteState;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/IgniteState;->VALS:[Lorg/apache/ignite/IgniteState;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(B)Lorg/apache/ignite/IgniteState;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 58
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/IgniteState;->VALS:[Lorg/apache/ignite/IgniteState;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/IgniteState;->VALS:[Lorg/apache/ignite/IgniteState;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/IgniteState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/IgniteState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteState;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/IgniteState;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/apache/ignite/IgniteState;->$VALUES:[Lorg/apache/ignite/IgniteState;

    invoke-virtual {v0}, [Lorg/apache/ignite/IgniteState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/IgniteState;

    return-object v0
.end method
