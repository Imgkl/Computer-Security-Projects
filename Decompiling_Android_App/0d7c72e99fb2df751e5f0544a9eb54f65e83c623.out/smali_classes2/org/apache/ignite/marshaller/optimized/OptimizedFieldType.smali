.class final enum Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
.super Ljava/lang/Enum;
.source "OptimizedFieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

.field public static final enum BOOLEAN:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

.field public static final enum BYTE:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

.field public static final enum CHAR:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

.field public static final enum DOUBLE:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

.field public static final enum FLOAT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

.field public static final enum INT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

.field public static final enum LONG:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

.field public static final enum OTHER:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

.field public static final enum SHORT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->BYTE:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 28
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->SHORT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 31
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->INT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 34
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->LONG:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 37
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->FLOAT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 40
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->DOUBLE:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 43
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    const-string v1, "CHAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->CHAR:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 46
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->BOOLEAN:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 49
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    const-string v1, "OTHER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->OTHER:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    sget-object v1, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->BYTE:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->SHORT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->INT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->LONG:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->FLOAT:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->DOUBLE:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->CHAR:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->BOOLEAN:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->OTHER:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->$VALUES:[Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->$VALUES:[Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    invoke-virtual {v0}, [Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    return-object v0
.end method
