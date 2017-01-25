.class public final enum Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
.super Ljava/lang/Enum;
.source "SetupConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/SetupConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WiFiAndroidBehaviour"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

.field public static final enum AUTO_ADD:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

.field public static final enum DO_NOTHING:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

.field public static final enum REMOVE:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;


# instance fields
.field private final behaviour:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    new-instance v0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    const-string v1, "DO_NOTHING"

    invoke-direct {v0, v1, v2, v2}, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->DO_NOTHING:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    .line 290
    new-instance v0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    const-string v1, "AUTO_ADD"

    invoke-direct {v0, v1, v3, v3}, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->AUTO_ADD:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    .line 291
    new-instance v0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v4, v4}, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->REMOVE:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    .line 288
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    sget-object v1, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->DO_NOTHING:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->AUTO_ADD:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->REMOVE:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->$VALUES:[Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "behaviour"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 295
    iput p3, p0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->behaviour:I

    .line 296
    return-void
.end method

.method public static fromInt(I)Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 299
    invoke-static {}, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->values()[Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 300
    .local v3, "wab":Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
    iget v4, v3, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->behaviour:I

    if-ne v4, p0, :cond_0

    .line 304
    .end local v3    # "wab":Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
    :goto_1
    return-object v3

    .line 299
    .restart local v3    # "wab":Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "wab":Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
    :cond_1
    sget-object v3, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->DO_NOTHING:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 288
    const-class v0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->$VALUES:[Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    return-object v0
.end method
