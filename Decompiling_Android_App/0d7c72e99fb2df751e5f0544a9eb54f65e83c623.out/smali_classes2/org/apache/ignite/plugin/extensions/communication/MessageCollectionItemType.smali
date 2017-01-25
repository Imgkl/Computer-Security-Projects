.class public final enum Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
.super Ljava/lang/Enum;
.source "MessageCollectionItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum BIT_SET:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum BOOLEAN:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum BOOLEAN_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum BYTE:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum CHAR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum CHAR_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum DOUBLE:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum DOUBLE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum FLOAT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum FLOAT_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum INT_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum LONG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum LONG_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum SHORT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum SHORT_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum STRING:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field public static final enum UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

.field private static final VALS:[Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;


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
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 30
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->SHORT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 33
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 36
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->LONG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 39
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->FLOAT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 42
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->DOUBLE:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 45
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "CHAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->CHAR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 48
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BOOLEAN:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 51
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "BYTE_ARR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 54
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "SHORT_ARR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->SHORT_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 57
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "INT_ARR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 60
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "LONG_ARR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->LONG_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 63
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "FLOAT_ARR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->FLOAT_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 66
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "DOUBLE_ARR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->DOUBLE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 69
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "CHAR_ARR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->CHAR_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 72
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "BOOLEAN_ARR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BOOLEAN_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 75
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "STRING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->STRING:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 78
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "BIT_SET"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BIT_SET:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 81
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "UUID"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 84
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "IGNITE_UUID"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 87
    new-instance v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-string v1, "MSG"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 25
    const/16 v0, 0x15

    new-array v0, v0, [Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v1, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->SHORT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->LONG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->FLOAT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->DOUBLE:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->CHAR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BOOLEAN:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BYTE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->SHORT_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->LONG_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->FLOAT_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->DOUBLE_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->CHAR_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BOOLEAN_ARR:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->STRING:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->BIT_SET:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->$VALUES:[Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .line 90
    invoke-static {}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->values()[Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->VALS:[Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

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

.method public static fromOrdinal(I)Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 99
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->VALS:[Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->VALS:[Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->$VALUES:[Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-virtual {v0}, [Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    return-object v0
.end method
