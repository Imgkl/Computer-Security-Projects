.class public final enum Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
.super Ljava/lang/Enum;
.source "WidgetConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/widgets/WidgetConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

.field public static final enum GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

.field public static final enum LIST:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

.field public static final enum TABS:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;


# instance fields
.field private final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1133
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    const-string v1, "GRID"

    const-string v2, "grid"

    invoke-direct {v0, v1, v3, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    .line 1134
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    const-string v1, "TABS"

    const-string/jumbo v2, "tabs"

    invoke-direct {v0, v1, v4, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->TABS:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    .line 1135
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    const-string v1, "LIST"

    const-string v2, "list"

    invoke-direct {v0, v1, v5, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->LIST:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    .line 1132
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    sget-object v1, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->TABS:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->LIST:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->$VALUES:[Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1139
    iput-object p3, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->mType:Ljava/lang/String;

    .line 1140
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    .locals 5
    .param p0, "optString"    # Ljava/lang/String;

    .prologue
    .line 1147
    invoke-static {}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->values()[Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1148
    .local v3, "type":Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1153
    .end local v3    # "type":Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    :goto_1
    return-object v3

    .line 1147
    .restart local v3    # "type":Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1153
    .end local v3    # "type":Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1132
    const-class v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    .locals 1

    .prologue
    .line 1132
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->$VALUES:[Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->mType:Ljava/lang/String;

    return-object v0
.end method
