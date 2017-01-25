.class public final enum Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;
.super Ljava/lang/Enum;
.source "QRCodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

.field public static final enum COMPUSYSTEMS:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

.field public static final enum GENIE_DEEPLINK:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

.field public static final enum GENIE_INTENT:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

.field public static final enum UNKNOWN:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

.field public static final enum URL:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

.field public static final enum VCARD:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    const-string v1, "GENIE_DEEPLINK"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->GENIE_DEEPLINK:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    .line 34
    new-instance v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    const-string v1, "GENIE_INTENT"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->GENIE_INTENT:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    .line 35
    new-instance v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->UNKNOWN:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    .line 36
    new-instance v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    const-string v1, "URL"

    invoke-direct {v0, v1, v6}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->URL:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    .line 37
    new-instance v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    const-string v1, "VCARD"

    invoke-direct {v0, v1, v7}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->VCARD:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    .line 38
    new-instance v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    const-string v1, "COMPUSYSTEMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->COMPUSYSTEMS:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    sget-object v1, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->GENIE_DEEPLINK:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->GENIE_INTENT:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->UNKNOWN:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->URL:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->VCARD:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->COMPUSYSTEMS:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->$VALUES:[Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->$VALUES:[Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    return-object v0
.end method
