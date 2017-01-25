.class public final enum Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;
.super Ljava/lang/Enum;
.source "HadoopTaskType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

.field public static final enum ABORT:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

.field public static final enum COMBINE:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

.field public static final enum COMMIT:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

.field public static final enum MAP:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

.field public static final enum REDUCE:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

.field public static final enum SETUP:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    const-string v1, "SETUP"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->SETUP:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    .line 30
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->MAP:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    const-string v1, "REDUCE"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->REDUCE:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    const-string v1, "COMBINE"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->COMBINE:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    const-string v1, "COMMIT"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->COMMIT:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    .line 42
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    const-string v1, "ABORT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->ABORT:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->SETUP:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->MAP:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->REDUCE:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->COMBINE:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->COMMIT:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->ABORT:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->$VALUES:[Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    .line 45
    invoke-static {}, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->values()[Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->VALS:[Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

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

.method public static fromOrdinal(B)Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 54
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->VALS:[Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->VALS:[Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->$VALUES:[Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    return-object v0
.end method
