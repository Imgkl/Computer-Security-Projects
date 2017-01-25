.class public final enum Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;
.super Ljava/lang/Enum;
.source "EGAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/entityfactory/EGAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

.field public static final enum ARRAY:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

.field public static final enum ARRAY_EMBEDDED:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

.field public static final enum BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

.field public static final enum DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

.field public static final enum EMBEDDED:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

.field public static final enum FLOAT:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

.field public static final enum LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

.field public static final enum REFERENCE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

.field public static final enum STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    const-string v1, "DATE"

    invoke-direct {v0, v1, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v6}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->FLOAT:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    const-string v1, "EMBEDDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->EMBEDDED:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    const-string v1, "REFERENCE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->REFERENCE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    const-string v1, "ARRAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->ARRAY:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    const-string v1, "ARRAY_EMBEDDED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->ARRAY_EMBEDDED:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->FLOAT:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->EMBEDDED:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->REFERENCE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->ARRAY:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->ARRAY_EMBEDDED:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->$VALUES:[Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->$VALUES:[Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-virtual {v0}, [Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    return-object v0
.end method
