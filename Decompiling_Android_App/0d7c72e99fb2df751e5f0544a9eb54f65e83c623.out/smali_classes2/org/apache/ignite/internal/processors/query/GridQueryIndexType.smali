.class public final enum Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;
.super Ljava/lang/Enum;
.source "GridQueryIndexType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

.field public static final enum FULLTEXT:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

.field public static final enum GEO_SPATIAL:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

.field public static final enum SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    const-string v1, "SORTED"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    .line 28
    new-instance v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    const-string v1, "GEO_SPATIAL"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->GEO_SPATIAL:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    const-string v1, "FULLTEXT"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->FULLTEXT:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    sget-object v1, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->SORTED:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->GEO_SPATIAL:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->FULLTEXT:Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->$VALUES:[Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->$VALUES:[Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;

    return-object v0
.end method
