.class final enum Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;
.super Ljava/lang/Enum;
.source "GridCacheMvccCandidate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field public static final enum DHT_LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field public static final enum LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field private static final MASKS:[Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field public static final enum NEAR_LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field public static final enum OWNER:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field public static final enum READY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field public static final enum REENTRY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field public static final enum REMOVED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field public static final enum SINGLE_IMPLICIT:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field public static final enum TX:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

.field public static final enum USED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;


# instance fields
.field private final bit:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 607
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v8, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 610
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const-string v1, "OWNER"

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->OWNER:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 613
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const-string v1, "READY"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->READY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 616
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const-string v1, "REENTRY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->REENTRY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 619
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const-string v1, "USED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->USED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 622
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const-string v1, "TX"

    const/4 v2, 0x5

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->TX:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 625
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const-string v1, "SINGLE_IMPLICIT"

    const/4 v2, 0x6

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->SINGLE_IMPLICIT:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 628
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const-string v1, "DHT_LOCAL"

    const/4 v2, 0x7

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->DHT_LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 631
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const-string v1, "NEAR_LOCAL"

    const/16 v2, 0x200

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->NEAR_LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 634
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const-string v1, "REMOVED"

    const/16 v2, 0x9

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->REMOVED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 604
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->OWNER:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->READY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->REENTRY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->USED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->TX:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->SINGLE_IMPLICIT:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->DHT_LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->NEAR_LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->REMOVED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .line 637
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->values()[Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->MASKS:[Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "bit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 645
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 646
    int-to-short v0, p3

    iput-short v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->bit:S

    .line 647
    return-void
.end method

.method static toString(S)Ljava/lang/String;
    .locals 7
    .param p0, "flags"    # S

    .prologue
    .line 679
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 681
    .local v4, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->MASKS:[Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 682
    .local v3, "m":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->ordinal()I

    move-result v5

    if-eqz v5, :cond_0

    .line 683
    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 685
    :cond_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v5

    invoke-virtual {v3, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->bit(S)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(I)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    .end local v3    # "m":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;
    :cond_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 604
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;
    .locals 1

    .prologue
    .line 604
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    return-object v0
.end method


# virtual methods
.method bit(S)I
    .locals 1
    .param p1, "flags"    # S

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method get(S)Z
    .locals 2
    .param p1, "flags"    # S

    .prologue
    .line 654
    iget-short v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->bit:S

    and-int/2addr v0, p1

    iget-short v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->bit:S

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method set(SZ)S
    .locals 1
    .param p1, "flags"    # S
    .param p2, "on"    # Z

    .prologue
    .line 663
    if-eqz p2, :cond_0

    iget-short v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->bit:S

    or-int/2addr v0, p1

    :goto_0
    int-to-short v0, v0

    return v0

    :cond_0
    iget-short v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->bit:S

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    goto :goto_0
.end method
