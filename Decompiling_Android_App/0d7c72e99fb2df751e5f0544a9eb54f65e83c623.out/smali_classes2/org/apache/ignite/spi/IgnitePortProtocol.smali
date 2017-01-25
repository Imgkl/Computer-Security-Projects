.class public final enum Lorg/apache/ignite/spi/IgnitePortProtocol;
.super Ljava/lang/Enum;
.source "IgnitePortProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/spi/IgnitePortProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/spi/IgnitePortProtocol;

.field public static final enum TCP:Lorg/apache/ignite/spi/IgnitePortProtocol;

.field public static final enum UDP:Lorg/apache/ignite/spi/IgnitePortProtocol;

.field private static final VALS:[Lorg/apache/ignite/spi/IgnitePortProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lorg/apache/ignite/spi/IgnitePortProtocol;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/spi/IgnitePortProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/IgnitePortProtocol;->TCP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    .line 34
    new-instance v0, Lorg/apache/ignite/spi/IgnitePortProtocol;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/spi/IgnitePortProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/IgnitePortProtocol;->UDP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/spi/IgnitePortProtocol;

    sget-object v1, Lorg/apache/ignite/spi/IgnitePortProtocol;->TCP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/spi/IgnitePortProtocol;->UDP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/ignite/spi/IgnitePortProtocol;->$VALUES:[Lorg/apache/ignite/spi/IgnitePortProtocol;

    .line 37
    invoke-static {}, Lorg/apache/ignite/spi/IgnitePortProtocol;->values()[Lorg/apache/ignite/spi/IgnitePortProtocol;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/spi/IgnitePortProtocol;->VALS:[Lorg/apache/ignite/spi/IgnitePortProtocol;

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

.method public static fromOrdinal(B)Lorg/apache/ignite/spi/IgnitePortProtocol;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 46
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/spi/IgnitePortProtocol;->VALS:[Lorg/apache/ignite/spi/IgnitePortProtocol;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/spi/IgnitePortProtocol;->VALS:[Lorg/apache/ignite/spi/IgnitePortProtocol;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/spi/IgnitePortProtocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/spi/IgnitePortProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/IgnitePortProtocol;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/spi/IgnitePortProtocol;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/spi/IgnitePortProtocol;->$VALUES:[Lorg/apache/ignite/spi/IgnitePortProtocol;

    invoke-virtual {v0}, [Lorg/apache/ignite/spi/IgnitePortProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/spi/IgnitePortProtocol;

    return-object v0
.end method
